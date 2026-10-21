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
(* package org.allbinary.logic.communication.http.request *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import java.util.List *)
(* import javax.servlet.http.HttpServletRequest *)
(* import javax.servlet.jsp.PageContext *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.http.file.upload.AbFileUploadFactory *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringValidationUtil *)
(* import org.apache.commons.fileupload.FileItem *)
(* import org.apache.commons.fileupload.FileUploadBase.InvalidContentTypeException *)

class multipartRequestParams (request) =
  object (self)
    inherit RequestParams.requestParams () as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable special : bool = false
    method special = special
    method set_special value' = special <- value'
    
    
    

    method setSpecial () : unit =
        begin
        special <- true
        end [@@warning "-7"]
    

    method processMultipartRequest : 'any1. 'any1 -> unit = fun (request) ->
        let request = Obj.repr request in
        begin
        (try
            let specialRequest : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
            let multipartRequestList : Obj.t ref = ref ((Obj.repr ((AbFileUploadFactory.getInstance ())#getFileItemStreamList ((Obj.magic request))))) in ();
            if ((Obj.magic !multipartRequestList) != (Obj.magic 0)) then begin
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#hTTPREQUEST)) then begin
                    ignore ((Obj.magic logUtil)#putF (("FileItem List Size: " ^ java_string_of (Obj.repr (((Obj.magic !multipartRequestList)#size ())))), self, "processMultipartRequest()"))
                end;
                let fileItemArray : Obj.t array ref = ref (((Obj.magic !multipartRequestList)#toArray ())) in ();
                let size : int ref = ref ((Array.length !fileItemArray)) in ();
                for index = 0 to !size - 1 do
                    let fileItem : Obj.t ref = ref ((Obj.repr (Obj.magic !fileItemArray.(index)))) in ();
                    let name : string ref = ref (((Obj.magic !fileItem)#getName ())) in ();
                    if ((StringValidationUtil.getInstance ())#isEmpty (!name)) then begin
                        ignore (!specialRequest#put (((Obj.magic !fileItem)#getFieldName ()), ((Obj.magic !fileItem)#getString ())))
                    end else begin
                        ignore (!specialRequest#put (((Obj.magic !fileItem)#getFieldName ()), (Obj.magic !fileItem)))
                    end
                done;
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#hTTPREQUEST)) then begin
                    ignore ((Obj.magic logUtil)#putF (("Special Request Data: " ^ (java_string_of (Obj.repr !specialRequest))), self, "processMultipartRequest()"))
                end;
                (self#setSpecial ());
                ignore (self#setMap (!specialRequest))
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#hTTPREQUEST)) then begin
                ignore ((Obj.magic logUtil)#putF ("Using Normal RequestParams", self, "processMultipartRequest()"))
            end;
            ignore (super#setMap (((Obj.magic request)#getParameterMap ())))
        end)
        end [@@warning "-7-20"]
    

    method toHashMap () : java_hash_map =
        try
        begin
        if special then begin
            raise (Java_return (Obj.repr ((Obj.magic (self#getMap ())))))
        end else begin
            raise (Java_return (Obj.repr ((super#toHashMap ()))))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        special <- false;
        ();
        (* super(...) is the inherit clause *) ();
        (self#processMultipartRequest (request))
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "MultipartRequestParams" (fun arguments -> Obj.repr (new multipartRequestParams (Obj.obj arguments)))


