(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Displayable *)
(* import javax.microedition.lcdui.Form *)
(* import javax.microedition.rms.InvalidRecordIDException *)
(* import javax.microedition.rms.RecordStore *)
(* import javax.microedition.rms.RecordStoreException *)
(* import javax.microedition.rms.RecordStoreNotOpenException *)
(* import org.allbinary.logic.NullUtil *)

class tsUtil () =
  object
    

    method hashCode : 'any1. 'any1 -> int = fun (anyType) ->
        let anyType = Obj.repr anyType in
        begin
        (java_hash_code (Obj.repr anyType))
        end
    

    method waitFor : 'any1. 'any1 * int -> unit = fun (any, (timeoutMillis : int)) ->
        let any = Obj.repr any in
        begin
        let anyType : Obj.t ref = ref ((Obj.repr (Obj.magic any))) in ();
        ignore (Unix.sleepf (Float.of_int (timeoutMillis) /. 1000.0))
        end
    

    method getRecord : 'any1. 'any1 * int -> int array = fun (anyType, (recordId : int)) ->
        let anyType = Obj.repr anyType in
        begin
        let recordStore : Obj.t ref = ref ((Obj.repr (Obj.magic anyType))) in ();
        let data : int array ref = ref ((Obj.magic 0)) in ();
        begin (* synchronized *)
            data := (Array.make (((Obj.magic !recordStore)#getRecordSize (recordId))) 0);
            ignore ((Obj.magic !recordStore)#getRecord (recordId, !data, 0))
        end;
        (if ((Array.length !data) < 1) then (NullUtil.getInstance ())#nULL_BYTE_ARRAY else !data)
        end
    

    method compareTo ((a : string), (b : string)) : int =
        begin
        (String.compare a (b))
        end
    

    method equalIgnoreCase ((a : string), (b : string)) : bool =
        begin
        (String.lowercase_ascii a = String.lowercase_ascii (b))
        end
    

    method equalsNotstring : 'any1 'any2. 'any1 * 'any2 -> bool = fun (anyType, object2) ->
        let anyType = Obj.repr anyType in
        let object2 = Obj.repr object2 in
        begin
        (java_equals (Obj.repr anyType) (Obj.repr (object2)))
        end
    

    method toNumberFromChar ((value : char)) : int =
        begin
        (Char.code value)
        end
    

    method toNumber ((value : int)) : int =
        begin
        value
        end
    

    method getByteArray ((string : string)) : int array =
        begin
        (java_string_get_bytes string)
        end
    

    method isItemListener : 'any1. 'any1 -> bool = fun (owner) ->
        let owner = Obj.repr owner in
        try
        begin
        if (java_instanceof (Obj.repr (Obj.magic owner)) "Form") then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method printAvailableMethods : 'any1. 'any1 -> unit = fun (_anyType) ->
        begin
        ()
        end
    

    method gc () : unit =
        begin
        ignore (Gc.full_major ())
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "TsUtil" (fun arguments -> Obj.repr (new tsUtil (Obj.obj arguments)))

let instance = (new tsUtil ())
let get_instance () = instance
let () = java_register_static "TsUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "TsUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


