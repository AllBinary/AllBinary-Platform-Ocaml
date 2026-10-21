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
(* package org.platform *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.util.ABHashtable *)

class threedObjResources () =
  object
    val mutable hashtable : Obj.t = Obj.repr 0
    method hashtable : 'r. 'r = Obj.magic hashtable
    method set_hashtable : 'v. 'v -> unit = fun value' -> hashtable <- Obj.repr value'
    

    method get ((resourceName : string)) : string =
        try
        begin
        let resourceName2 : string ref = ref ((Obj.magic ((Obj.magic hashtable)#get (resourceName)))) in ();
        if (!resourceName2 <> (Obj.magic 0)) then begin
            raise (Java_return (Obj.repr (!resourceName2)))
        end;
        resourceName
        end
        with Java_return value -> Obj.obj value

    initializer
      begin
        hashtable <- (Obj.repr ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashtable ()));
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "ThreedObjResources" (fun arguments -> Obj.repr (new threedObjResources (Obj.obj arguments)))

let instance = (new threedObjResources ())
let get_instance () = instance
let () = java_register_static "ThreedObjResources.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ThreedObjResources.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


