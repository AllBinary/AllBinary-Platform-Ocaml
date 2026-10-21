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
(* import org.allbinary.logic.communication.http.file.upload.FileUploadData *)
(* import org.allbinary.logic.communication.http.file.upload.HttpFileUploadUtil *)
(* import org.allbinary.logic.communication.http.request.HttpRequestUtil *)
(* import org.allbinary.logic.communication.http.request.MultipartRequestParams *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.io.AbFileOutputStream *)
(* import org.allbinary.logic.io.StreamUtil *)
(* import org.allbinary.logic.io.file.AbFile *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.servlet.BlisketServletUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.apache.commons.fileupload.FileItem *)

class uploadFileServlet () =
  object (self)
    inherit HttpServlet.httpServlet ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable requestHashMap : java_hash_map = (Obj.magic 0)
    method requestHashMap = requestHashMap
    method set_requestHashMap value' = requestHashMap <- value'
    val mutable fileName : string = ""
    method fileName = fileName
    method set_fileName value' = fileName <- value'
    

    method processRequest : 'any1 'any2. 'any1 * 'any2 -> unit = fun (request, response) ->
        let request = Obj.repr request in
        let response = Obj.repr response in
        try
        begin
        let isError : bool ref = ref (false) in ();
        let inputStream : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        Fun.protect ~finally:(fun () -> 
            if (not !isError) then begin
                ignore ((StreamUtil.getInstance ())#close (((Obj.magic response)#getOutputStream ())))
            end;
            if (not ((StreamUtil.getInstance ())#close ((Obj.magic !inputStream)))) then begin
                ()
            end
        ) (fun () -> (try
            ignore ((BlisketServletUtil.getInstance ())#init ((Obj.magic request)));
            requestHashMap <- ((new MultipartRequestParams.multipartRequestParams ((Obj.magic request)))#toHashMap ());
            let filePath : string ref = ref ((Obj.magic (requestHashMap#get ((FileUploadData.getInstance ())#uPLOAD_TO_FILE_PATH)))) in ();
            if (!filePath = (Obj.magic 0)) then begin
                isError := true;
                ignore ((Obj.magic response)#sendError ((HttpServletResponse.get_sC_NOT_FOUND ())));
                raise (Java_return (Obj.repr (())))
            end;
            let hashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
            let authenticationHelper : Obj.t ref = ref ((Obj.repr (Obj.magic ((new AuthenticationHelperFactory.authenticationHelperFactory ())#getInstance (!hashMap, (Obj.magic request)))))) in ();
            if ((Obj.magic !authenticationHelper)#isAuthenticated ()) then begin
                if ((AuthenticationHelperUtil.getInstance ())#isAuthorized ((Obj.magic !authenticationHelper), !filePath)) then begin
                    (self#saveFile (!filePath));
                    ignore ((Obj.magic response)#setContentType ("text/plain"));
                    ignore (((Obj.magic response)#getOutputStream ())#write ((java_string_get_bytes "OK!")))
                end else begin
                    isError := true;
                    ignore ((Obj.magic response)#sendError ((HttpServletResponse.get_sC_UNAUTHORIZED ()), "You are not Authorized"))
                end
            end else begin
                isError := true;
                ignore ((Obj.magic response)#sendError ((HttpServletResponse.get_sC_UNAUTHORIZED ()), "Please Login"))
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEWERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "processRequest()", e))
            end;
            isError := true;
            ignore ((Obj.magic response)#sendError ((HttpServletResponse.get_sC_NOT_FOUND ())))
        end))
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method saveFile ((filePath : string)) : unit =
        let filePath = ref filePath in
        begin
        let fileOutputStream : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        Fun.protect ~finally:(fun () -> 
            if ((Obj.magic !fileOutputStream) != (Obj.magic 0)) then begin
                ignore ((Obj.magic !fileOutputStream)#close ())
            end
        ) (fun () -> (try
            let fileItem : Obj.t ref = ref ((Obj.repr (Obj.magic (requestHashMap#get ((FileUploadData.getInstance ())#fILE_DATA))))) in ();
            if (((Obj.magic !fileItem) != (Obj.magic 0)) && (((Obj.magic !fileItem)#getSize ()) > 1)) then begin
                fileName <- ((HttpRequestUtil.getInstance ())#generateFileName (((Obj.magic !fileItem)#getName ())));
                if ((String.ends_with ~suffix:("/") !filePath) || (String.ends_with ~suffix:("\\") !filePath)) then begin
                    filePath := (!filePath ^ fileName)
                end;
                let file : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "AbFile.createAbFile" (Obj.repr ((java_string_of (Obj.repr ((URLGLOBALS.getWebappPath ()))) ^ !filePath))))))) in ();
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#hTTPREQUEST)) then begin
                    let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
                    ignore (!stringBuffer#append ("Uploaded File: "));
                    ignore (!stringBuffer#append (fileName));
                    ignore (!stringBuffer#append (" New File: "));
                    ignore (!stringBuffer#append (((Obj.magic !file)#getPath ())));
                    ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "saveFile()"))
                end;
                ignore (HttpFileUploadUtil.log ((Obj.magic !fileItem)));
                let byteArray : int array ref = ref (((Obj.magic !fileItem)#get ())) in ();
                if ((Obj.magic !file)#isFile ()) then begin
                    ignore ((Obj.magic !file)#delete ());
                    ignore ((Obj.magic !file)#createNewFile ())
                end;
                fileOutputStream := Obj.repr ((Obj.magic (java_call_static "AbFileOutputStream.createFromAbFile" (Obj.repr ((Obj.magic !file))))));
                ignore ((Obj.magic !fileOutputStream)#write (!byteArray))
            end
        with exception_value -> raise exception_value))
        end [@@warning "-7"]
    

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
        "Upload Cloud Files"
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        requestHashMap <- ((Obj.magic 0) :> java_hash_map);
        fileName <- "";
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "UploadFileServlet" (fun arguments -> Obj.repr (new uploadFileServlet (Obj.obj arguments)))


