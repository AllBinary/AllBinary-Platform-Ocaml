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
(* package org.allbinary.util *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.Enumeration *)
(* import jsinterop.annotations.JsType *)

class hashtableUtil () =
  object
    val mutable enumerationUtil : EnumerationUtil.enumerationUtil = (Obj.magic 0)
    method enumerationUtil = enumerationUtil
    method set_enumerationUtil value' = enumerationUtil <- value'
    

    method putAll : 'any1 'any2. 'any1 * 'any2 -> unit = fun (fromHashtable, hashtable) ->
        let fromHashtable = Obj.repr fromHashtable in
        let hashtable = Obj.repr hashtable in
        begin
        let enumeration : java_enumeration ref = ref ((((Obj.magic fromHashtable)#keys ()) :> java_enumeration)) in ();
        let keyCanBeNull : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        let valueCanBeNull : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        while (enumerationUtil#hasMoreElements (!enumeration)) do
            keyCanBeNull := (enumerationUtil#nextElement (!enumeration));
            valueCanBeNull := ((Obj.magic hashtable)#get (!keyCanBeNull));
            if (!valueCanBeNull == (Obj.magic 0)) then begin
                ()
            end else begin
                ignore ((Obj.magic hashtable)#put (!keyCanBeNull, !valueCanBeNull))
            end
        done
        end [@@warning "-20"]
    

    method getKeysAsArray : 'any1. 'any1 -> Obj.t array = fun (hashtable) ->
        let hashtable = Obj.repr hashtable in
        begin
        let objectArray : Obj.t array ref = ref ((Array.make (((Obj.magic hashtable)#size ())) (Obj.magic 0))) in ();
        let index : int ref = ref (0) in ();
        let enumeration : java_enumeration ref = ref ((((Obj.magic hashtable)#keys ()) :> java_enumeration)) in ();
        while (enumerationUtil#hasMoreElements (!enumeration)) do
            !objectArray.((let value = !index in index := !index + 1; value)) <- (Obj.repr ((enumerationUtil#nextElement (!enumeration))))
        done;
        !objectArray
        end [@@warning "-20"]
    

    method getKeysAsList : 'any1. 'any1 -> BasicArrayList.basicArrayList = fun (hashtable) ->
        let hashtable = Obj.repr hashtable in
        begin
        let list : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListS.basicArrayListS (((Obj.magic hashtable)#size ()))) :> BasicArrayList.basicArrayList)) in ();
        let enumeration : java_enumeration ref = ref ((((Obj.magic hashtable)#keys ()) :> java_enumeration)) in ();
        while (enumerationUtil#hasMoreElements (!enumeration)) do
            ignore (!list#add ((enumerationUtil#nextElement (!enumeration))))
        done;
        (!list :> BasicArrayList.basicArrayList)
        end [@@warning "-20"]

    initializer
      begin
        enumerationUtil <- ((EnumerationUtil.getInstance ()) :> EnumerationUtil.enumerationUtil);
        ()
      end
  end
let () = java_register_constructor "HashtableUtil" (fun arguments -> Obj.repr (new hashtableUtil (Obj.obj arguments)))

let instance = (new hashtableUtil ())
let get_instance () = instance
let () = java_register_static "HashtableUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "HashtableUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


