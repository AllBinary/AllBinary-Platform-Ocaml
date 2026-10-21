(*

  AllBinary Open License Version 1
  Copyright (c) 2011 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
   
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.servlet.file *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.IOException *)
(* import java.io.InputStream *)
(* import java.util.HashMap *)
(* import javax.servlet.ServletException *)
(* import javax.servlet.http.HttpServlet *)
(* import javax.servlet.http.HttpServletRequest *)
(* import javax.servlet.http.HttpServletResponse *)
(* import admin.taghelpers.AuthenticationHelper *)
(* import admin.taghelpers.AuthenticationHelperFactory *)
(* import admin.taghelpers.AuthenticationHelperUtil *)
(* import org.allbinary.globals.URLGLOBALS *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.io.CloudStreamUtil *)
(* import org.allbinary.logic.io.StreamUtil *)
(* import org.allbinary.logic.io.file.AbFile *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.servlet.BlisketServletUtil *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.string.CommonStrings *)

class downloadFileServlet () =
  object (self)
    inherit HttpServlet.httpServlet ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable dOWNLOAD : string = ""
    method dOWNLOAD = dOWNLOAD
    method set_dOWNLOAD value' = dOWNLOAD <- value'
    val mutable dEFAULT_BUFFER_SIZE : int = 0
    method dEFAULT_BUFFER_SIZE = dEFAULT_BUFFER_SIZE
    method set_dEFAULT_BUFFER_SIZE value' = dEFAULT_BUFFER_SIZE <- value'
    

    method processRequest : 'any1 'any2. 'any1 * 'any2 -> unit = fun (request, response) ->
        let request = Obj.repr request in
        let response = Obj.repr response in
        try
        begin
        let inputStream : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        Fun.protect ~finally:(fun () -> 
            ignore ((StreamUtil.getInstance ())#close (((Obj.magic response)#getOutputStream ())));
            if (not ((StreamUtil.getInstance ())#close ((Obj.magic !inputStream)))) then begin
                ()
            end
        ) (fun () -> (try
            ignore ((BlisketServletUtil.getInstance ())#init ((Obj.magic request)));
            let requestPath : string ref = ref (((Obj.magic request)#getRequestURI ())) in ();
            if (!requestPath = (Obj.magic 0)) then begin
                ignore ((Obj.magic response)#sendError ((HttpServletResponse.get_sC_NOT_FOUND ())));
                raise (Java_return (Obj.repr (())))
            end;
            let beginIndex : int ref = ref ((java_string_index_of !requestPath (Obj.repr (dOWNLOAD)))) in ();
            let filePath : string ref = ref ((StringUtil.getInstance ())#eMPTY_STRING) in ();
            if (!beginIndex >= 0) then begin
                filePath := (String.sub !requestPath ((!beginIndex + (String.length dOWNLOAD))) (String.length !requestPath - ((!beginIndex + (String.length dOWNLOAD)))))
            end else begin
                ignore ((Obj.magic response)#sendError ((HttpServletResponse.get_sC_NOT_FOUND ())))
            end;
            let file : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "AbFile.createAbFile" (Obj.repr ((java_string_of (Obj.repr ((URLGLOBALS.getWebappPath ()))) ^ !filePath))))))) in ();
            if (not ((Obj.magic !file)#exists ())) then begin
                ignore ((Obj.magic response)#sendError ((HttpServletResponse.get_sC_NOT_FOUND ())));
                raise (Java_return (Obj.repr (())))
            end;
            let hashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
            let authenticationHelper : Obj.t ref = ref ((Obj.repr (Obj.magic ((new AuthenticationHelperFactory.authenticationHelperFactory ())#getInstance (!hashMap, (Obj.magic request)))))) in ();
            if ((Obj.magic !authenticationHelper)#isAuthenticated ()) then begin
                if ((AuthenticationHelperUtil.getInstance ())#isAuthorized ((Obj.magic !authenticationHelper), !filePath)) then begin
                    inputStream := Obj.repr (((CloudStreamUtil.getInstance ())#getFile ((Obj.magic !file))));
                    let contentType : string ref = ref (((self#getServletContext ())#getMimeType (((Obj.magic !file)#getName ())))) in ();
                    if (!contentType = (Obj.magic 0)) then begin
                        contentType := "application/octet-stream"
                    end;
                    ignore ((Obj.magic response)#reset ());
                    ignore ((Obj.magic response)#setBufferSize (dEFAULT_BUFFER_SIZE));
                    ignore ((Obj.magic response)#setContentType (!contentType));
                    ignore ((Obj.magic response)#setHeader ("Content-Length", (java_string_of (Obj.repr (((Obj.magic !file)#length ()))))));
                    let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
                    ignore (!stringBuffer#append ("attachment; filename=\""));
                    ignore (!stringBuffer#append (((Obj.magic !file)#getName ())));
                    ignore (!stringBuffer#append ((CommonSeps.getInstance ())#qUOTE));
                    ignore ((Obj.magic response)#setHeader ("Content-Disposition", (java_string_of (Obj.repr !stringBuffer))));
                    ignore ((StreamUtil.getInstance ())#get ((Obj.magic !inputStream), ((Obj.magic response)#getOutputStream ()), (Array.make (16348) 0)))
                end else begin
                    ignore ((Obj.magic response)#sendError ((HttpServletResponse.get_sC_UNAUTHORIZED ()), "You are not Authorized"))
                end
            end else begin
                ignore ((Obj.magic response)#sendError ((HttpServletResponse.get_sC_UNAUTHORIZED ()), "Please Login"))
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEWERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "processRequest()", e))
            end;
            ignore ((Obj.magic response)#sendError ((HttpServletResponse.get_sC_NOT_FOUND ())))
        end))
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method doGet : 'any1 'any2. 'any1 * 'any2 -> unit = fun (request, response) ->
        let request = Obj.repr request in
        let response = Obj.repr response in
        begin
        (self#processRequest ((Obj.magic request), (Obj.magic response)))
        end [@@warning "-7-20"]
    

    method doPost : 'any1 'any2. 'any1 * 'any2 -> unit = fun (request, response) ->
        let request = Obj.repr request in
        let response = Obj.repr response in
        begin
        (self#processRequest ((Obj.magic request), (Obj.magic response)))
        end [@@warning "-7-20"]
    

    method getServletInfo () : string =
        begin
        "Serves Up Cloud Files"
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        dOWNLOAD <- "download";
        dEFAULT_BUFFER_SIZE <- 16384;
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "DownloadFileServlet" (fun arguments -> Obj.repr (new downloadFileServlet (Obj.obj arguments)))


