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
(* package org.allbinary.game.configuration.feature *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

let instance_cell : Obj.t Lazy.t ref = ref (Lazy.from_val java_null)
let get_instance : 'r. unit -> 'r = fun () -> Obj.magic (try Lazy.force !instance_cell with Lazy.Undefined -> java_null)
let set_instance value' = instance_cell := Lazy.from_val (Obj.repr value')
let () = java_register_static "InputFeatureFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))
let () = java_register_static "InputFeatureFactory.set_instance" (fun value' -> set_instance value'; Obj.repr ())
class inputFeatureFactory () =
  object
    val mutable rEMOVE_DUPLICATE_KEY_PRESSES : Obj.t = Obj.repr 0
    method rEMOVE_DUPLICATE_KEY_PRESSES : 'r. 'r = Obj.magic rEMOVE_DUPLICATE_KEY_PRESSES
    method set_rEMOVE_DUPLICATE_KEY_PRESSES : 'v. 'v -> unit = fun value' -> rEMOVE_DUPLICATE_KEY_PRESSES <- Obj.repr value'
    val mutable iNPUT_MAPPING : Obj.t = Obj.repr 0
    method iNPUT_MAPPING : 'r. 'r = Obj.magic iNPUT_MAPPING
    method set_iNPUT_MAPPING : 'v. 'v -> unit = fun value' -> iNPUT_MAPPING <- Obj.repr value'
    val mutable mULTI_KEY_PRESS : Obj.t = Obj.repr 0
    method mULTI_KEY_PRESS : 'r. 'r = Obj.magic mULTI_KEY_PRESS
    method set_mULTI_KEY_PRESS : 'v. 'v -> unit = fun value' -> mULTI_KEY_PRESS <- Obj.repr value'
    val mutable sINGLE_KEY_REPEAT_PRESS : Obj.t = Obj.repr 0
    method sINGLE_KEY_REPEAT_PRESS : 'r. 'r = Obj.magic sINGLE_KEY_REPEAT_PRESS
    method set_sINGLE_KEY_REPEAT_PRESS : 'v. 'v -> unit = fun value' -> sINGLE_KEY_REPEAT_PRESS <- Obj.repr value'
    val mutable sINGLE_KEY_PRESS : Obj.t = Obj.repr 0
    method sINGLE_KEY_PRESS : 'r. 'r = Obj.magic sINGLE_KEY_PRESS
    method set_sINGLE_KEY_PRESS : 'v. 'v -> unit = fun value' -> sINGLE_KEY_PRESS <- Obj.repr value'
    
    

    method isSingleKeyProcessing () : bool =
        try
        begin
        let features : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "Features.getInstance" (Obj.repr ()))))) in ();
        if (((Obj.magic !features)#isFeature ((Obj.magic sINGLE_KEY_REPEAT_PRESS))) || ((Obj.magic !features)#isFeature ((Obj.magic sINGLE_KEY_PRESS)))) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value

    initializer
      begin
        rEMOVE_DUPLICATE_KEY_PRESSES <- (Obj.repr (Obj.obj (java_new "InputFeature" (Obj.repr ("Remove Duplicate Key Presses")))));
        iNPUT_MAPPING <- (Obj.repr (Obj.obj (java_new "InputFeature" (Obj.repr ("Input Mapping")))));
        mULTI_KEY_PRESS <- (Obj.repr (Obj.obj (java_new "InputFeature" (Obj.repr ("Multi Key Press")))));
        sINGLE_KEY_REPEAT_PRESS <- (Obj.repr (Obj.obj (java_new "InputFeature" (Obj.repr ("Single Key Repeat Press")))));
        sINGLE_KEY_PRESS <- (Obj.repr (Obj.obj (java_new "InputFeature" (Obj.repr ("Single Key Press")))));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "InputFeatureFactory" (fun arguments -> Obj.repr (new inputFeatureFactory (Obj.obj arguments)))

let getInstance : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic (get_instance ()))))
        end
let () = java_register_static "InputFeatureFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))

let () = instance_cell := lazy (Obj.repr ((new inputFeatureFactory ())))


