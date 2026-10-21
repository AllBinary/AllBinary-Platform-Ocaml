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
(* package org.allbinary.logic.io *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.InputStream *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.io.file.AbFile *)

class cloudStreamUtil () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    

    method getFile : 'any1 'return. 'any1 -> 'return = fun (file) ->
        let file = Obj.repr file in
        begin
        let inputStream : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "AbFileInputStream" (Obj.repr ((Obj.magic file))))))) in ();
        let available : int ref = ref (((Obj.magic !inputStream)#available ())) in ();
        if (!available > 0) then begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                ignore ((Obj.magic logUtil)#putF (("Cloud File Bytes: " ^ java_string_of (Obj.repr (!available))), self, "processRequest()"))
            end
        end;
        (Obj.magic ((Obj.magic !inputStream)))
        end [@@warning "-20"]
    

    method getFileAnyWhere : 'any1 'return. 'any1 -> 'return = fun (file) ->
        let file = Obj.repr file in
        begin
        let inputStream : Obj.t ref = ref ((Obj.repr (new AbFileLocalInputStream.abFileLocalInputStream ((Obj.magic file))))) in ();
        let available : int ref = ref (((Obj.magic !inputStream)#available ())) in ();
        if (!available > 0) then begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                ignore ((Obj.magic logUtil)#putF (("Local File Bytes: " ^ java_string_of (Obj.repr (!available))), self, "processRequest()"))
            end
        end else begin
            inputStream := Obj.repr ((Obj.obj (java_new "AbFileInputStream" (Obj.repr ((Obj.magic file))))));
            available := ((Obj.magic !inputStream)#available ());
            if (!available > 0) then begin
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEWERROR)) then begin
                    ignore ((Obj.magic logUtil)#putF (("Cloud File Bytes: " ^ java_string_of (Obj.repr (!available))), self, "processRequest()"))
                end
            end
        end;
        (Obj.magic ((Obj.magic !inputStream)))
        end [@@warning "-20"]
    

    method getFileLocal : 'any1 'return. 'any1 -> 'return = fun (file) ->
        let file = Obj.repr file in
        begin
        let inputStream : Obj.t ref = ref ((Obj.repr (new AbFileLocalInputStream.abFileLocalInputStream ((Obj.magic file))))) in ();
        let available : int ref = ref (((Obj.magic !inputStream)#available ())) in ();
        if (!available > 0) then begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                ignore ((Obj.magic logUtil)#putF (("Local File Bytes: " ^ java_string_of (Obj.repr (!available))), self, "processRequest()"))
            end
        end;
        (Obj.magic ((Obj.magic !inputStream)))
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "CloudStreamUtil" (fun arguments -> Obj.repr (new cloudStreamUtil (Obj.obj arguments)))

let instance = (new cloudStreamUtil ())
let get_instance () = instance
let () = java_register_static "CloudStreamUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "CloudStreamUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


