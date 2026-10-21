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

class inputFeatureFactory () =
  object
    val mutable rEMOVE_DUPLICATE_KEY_PRESSES : InputFeature.inputFeature = (Obj.magic 0)
    method rEMOVE_DUPLICATE_KEY_PRESSES = rEMOVE_DUPLICATE_KEY_PRESSES
    method set_rEMOVE_DUPLICATE_KEY_PRESSES value' = rEMOVE_DUPLICATE_KEY_PRESSES <- value'
    val mutable iNPUT_MAPPING : InputFeature.inputFeature = (Obj.magic 0)
    method iNPUT_MAPPING = iNPUT_MAPPING
    method set_iNPUT_MAPPING value' = iNPUT_MAPPING <- value'
    val mutable mULTI_KEY_PRESS : InputFeature.inputFeature = (Obj.magic 0)
    method mULTI_KEY_PRESS = mULTI_KEY_PRESS
    method set_mULTI_KEY_PRESS value' = mULTI_KEY_PRESS <- value'
    val mutable sINGLE_KEY_REPEAT_PRESS : InputFeature.inputFeature = (Obj.magic 0)
    method sINGLE_KEY_REPEAT_PRESS = sINGLE_KEY_REPEAT_PRESS
    method set_sINGLE_KEY_REPEAT_PRESS value' = sINGLE_KEY_REPEAT_PRESS <- value'
    val mutable sINGLE_KEY_PRESS : InputFeature.inputFeature = (Obj.magic 0)
    method sINGLE_KEY_PRESS = sINGLE_KEY_PRESS
    method set_sINGLE_KEY_PRESS value' = sINGLE_KEY_PRESS <- value'
    
    

    method isSingleKeyProcessing () : bool =
        try
        begin
        let features : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "Features.getInstance" (Obj.repr ()))))) in ();
        if (((Obj.magic !features)#isFeature (sINGLE_KEY_REPEAT_PRESS)) || ((Obj.magic !features)#isFeature (sINGLE_KEY_PRESS))) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value

    initializer
      begin
        rEMOVE_DUPLICATE_KEY_PRESSES <- ((new InputFeature.inputFeature ("Remove Duplicate Key Presses")) :> InputFeature.inputFeature);
        iNPUT_MAPPING <- ((new InputFeature.inputFeature ("Input Mapping")) :> InputFeature.inputFeature);
        mULTI_KEY_PRESS <- ((new InputFeature.inputFeature ("Multi Key Press")) :> InputFeature.inputFeature);
        sINGLE_KEY_REPEAT_PRESS <- ((new InputFeature.inputFeature ("Single Key Repeat Press")) :> InputFeature.inputFeature);
        sINGLE_KEY_PRESS <- ((new InputFeature.inputFeature ("Single Key Press")) :> InputFeature.inputFeature);
        ();
        ()
      end
  end
let () = java_register_constructor "InputFeatureFactory" (fun arguments -> Obj.repr (new inputFeatureFactory (Obj.obj arguments)))

let instance = (new inputFeatureFactory ())
let get_instance () = instance
let () = java_register_static "InputFeatureFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "InputFeatureFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


