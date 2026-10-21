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
(* package org.allbinary.game.layer.pickup *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.string.StringUtil *)

class pickedUpLayerTypeFactory () =
  object
    val mutable nONE : PickedUpLayerType.pickedUpLayerType = (Obj.magic 0)
    method nONE = nONE
    method set_nONE value' = nONE <- value'
    val mutable bEAM : PickedUpLayerType.pickedUpLayerType = (Obj.magic 0)
    method bEAM = bEAM
    method set_bEAM value' = bEAM <- value'
    val mutable mINE : PickedUpLayerType.pickedUpLayerType = (Obj.magic 0)
    method mINE = mINE
    method set_mINE value' = mINE <- value'
    val mutable pROJECTILE : PickedUpLayerType.pickedUpLayerType = (Obj.magic 0)
    method pROJECTILE = pROJECTILE
    method set_pROJECTILE value' = pROJECTILE <- value'
    val mutable eNHANCEMENT : PickedUpLayerType.pickedUpLayerType = (Obj.magic 0)
    method eNHANCEMENT = eNHANCEMENT
    method set_eNHANCEMENT value' = eNHANCEMENT <- value'
    val mutable mORPH : PickedUpLayerType.pickedUpLayerType = (Obj.magic 0)
    method mORPH = mORPH
    method set_mORPH value' = mORPH <- value'
    val mutable pART : PickedUpLayerType.pickedUpLayerType = (Obj.magic 0)
    method pART = pART
    method set_pART value' = pART <- value'
    val mutable hEAL : PickedUpLayerType.pickedUpLayerType = (Obj.magic 0)
    method hEAL = hEAL
    method set_hEAL value' = hEAL <- value'
    val mutable lIFE : PickedUpLayerType.pickedUpLayerType = (Obj.magic 0)
    method lIFE = lIFE
    method set_lIFE value' = lIFE <- value'
    val mutable pOINTS : PickedUpLayerType.pickedUpLayerType = (Obj.magic 0)
    method pOINTS = pOINTS
    method set_pOINTS value' = pOINTS <- value'

    initializer
      begin
        nONE <- ((new PickedUpLayerType.pickedUpLayerType ((StringUtil.getInstance ())#nULL_STRING)) :> PickedUpLayerType.pickedUpLayerType);
        bEAM <- ((new PickedUpLayerType.pickedUpLayerType ("BEAM")) :> PickedUpLayerType.pickedUpLayerType);
        mINE <- ((new PickedUpLayerType.pickedUpLayerType ("MINE")) :> PickedUpLayerType.pickedUpLayerType);
        pROJECTILE <- ((new PickedUpLayerType.pickedUpLayerType ("PROJECTILE")) :> PickedUpLayerType.pickedUpLayerType);
        eNHANCEMENT <- ((new PickedUpLayerType.pickedUpLayerType ("Enhancement")) :> PickedUpLayerType.pickedUpLayerType);
        mORPH <- ((new PickedUpLayerType.pickedUpLayerType ("Morph")) :> PickedUpLayerType.pickedUpLayerType);
        pART <- ((new PickedUpLayerType.pickedUpLayerType ("Part")) :> PickedUpLayerType.pickedUpLayerType);
        hEAL <- ((new PickedUpLayerType.pickedUpLayerType ("Heal")) :> PickedUpLayerType.pickedUpLayerType);
        lIFE <- ((new PickedUpLayerType.pickedUpLayerType ("Life")) :> PickedUpLayerType.pickedUpLayerType);
        pOINTS <- ((new PickedUpLayerType.pickedUpLayerType ("Points")) :> PickedUpLayerType.pickedUpLayerType);
        ()
      end
  end
let () = java_register_constructor "PickedUpLayerTypeFactory" (fun arguments -> Obj.repr (new pickedUpLayerTypeFactory (Obj.obj arguments)))

let instance = (new pickedUpLayerTypeFactory ())
let get_instance () = instance
let () = java_register_static "PickedUpLayerTypeFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "PickedUpLayerTypeFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


