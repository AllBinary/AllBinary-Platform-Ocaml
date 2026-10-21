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
(* package org.allbinary.servlet *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.ByteArrayOutputStream *)
(* import java.io.IOException *)
(* import java.io.InputStream *)
(* import javax.servlet.ServletException *)
(* import javax.servlet.http.HttpServlet *)
(* import javax.servlet.http.HttpServletRequest *)
(* import javax.servlet.http.HttpServletResponse *)
(* import org.allbinary.globals.URLGLOBALS *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.io.CloudStreamUtil *)
(* import org.allbinary.logic.io.StreamUtil *)
(* import org.allbinary.logic.io.file.AbFile *)
(* import org.allbinary.string.CommonStrings *)

class magicalImageServlet () =
  object (self)
    inherit HttpServlet.httpServlet ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    

    method processRequest : 'any1 'any2. 'any1 * 'any2 -> unit = fun (request, response) ->
        let request = Obj.repr request in
        let response = Obj.repr response in
        begin
        let inputStream : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        Fun.protect ~finally:(fun () -> 
            ignore ((StreamUtil.getInstance ())#close (((Obj.magic response)#getOutputStream ())));
            if (not ((StreamUtil.getInstance ())#close ((Obj.magic !inputStream)))) then begin
                ignore ((Obj.magic response)#sendError ((HttpServletResponse.get_sC_NOT_FOUND ())))
            end
        ) (fun () -> (try
            ignore ((BlisketServletUtil.getInstance ())#init ((Obj.magic request)));
            let requestURI : string ref = ref (((Obj.magic request)#getRequestURI ())) in ();
            let file : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "AbFile.createAbFile" (Obj.repr ((java_string_of (Obj.repr ((URLGLOBALS.getWebappPath ()))) ^ !requestURI))))))) in ();
            inputStream := Obj.repr (((CloudStreamUtil.getInstance ())#getFileAnyWhere ((Obj.magic !file))));
            let outputStream : java_byte_array_output_stream ref = ref ((new java_byte_array_output_stream ())) in ();
            let byteArray : int array ref = ref (((StreamUtil.getInstance ())#getByteArray ((Obj.magic !inputStream), !outputStream, (Array.make (16384) 0)))) in ();
            ignore ((Obj.magic response)#setContentType ("image/jpeg;charset=utf-8"));
            ignore (((Obj.magic response)#getOutputStream ())#write (!byteArray))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEWERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "processRequest()", e))
            end
        end))
        end [@@warning "-7-20"]
    

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
        "Serves Up Image From Local or Cloud"
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "MagicalImageServlet" (fun arguments -> Obj.repr (new magicalImageServlet (Obj.obj arguments)))


