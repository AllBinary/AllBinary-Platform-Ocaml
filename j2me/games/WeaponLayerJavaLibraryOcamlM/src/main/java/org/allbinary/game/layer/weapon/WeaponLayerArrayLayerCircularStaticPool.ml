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
(* package org.allbinary.game.layer.weapon *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.util.CircularIndexUtil *)

class weaponLayerArrayLayerCircularStaticPool () =
  object
    val mutable mAX : int = 0
    method mAX = mAX
    method set_mAX value' = mAX <- value'
    val mutable circularIndexUtil : CircularIndexUtil.circularIndexUtil = (Obj.magic 0)
    method circularIndexUtil = circularIndexUtil
    method set_circularIndexUtil value' = circularIndexUtil <- value'
    val mutable aLL_WEAPONLAYER_ARRAY : Obj.t array array array = (Obj.magic 0)
    method aLL_WEAPONLAYER_ARRAY = aLL_WEAPONLAYER_ARRAY
    method set_aLL_WEAPONLAYER_ARRAY value' = aLL_WEAPONLAYER_ARRAY <- value'
    

    method init () : unit =
        begin
        let wEAPONLAYER_ARRAY : Obj.t array array ref = ref ((Array.make ((mAX * 2)) [||])) in ();
        let tWO_WEAPONLAYER_ARRAY : Obj.t array array ref = ref ((Array.make (mAX) [||])) in ();
        let tHREE_WEAPONLAYER_ARRAY : Obj.t array array ref = ref ((Array.make (mAX) [||])) in ();
        for index = 0 to mAX - 1 do
            !wEAPONLAYER_ARRAY.(index) <- (Array.make (1) (Obj.magic 0));
            !tWO_WEAPONLAYER_ARRAY.(index) <- (Array.make (2) (Obj.magic 0));
            !tHREE_WEAPONLAYER_ARRAY.(index) <- (Array.make (3) (Obj.magic 0))
        done;
        aLL_WEAPONLAYER_ARRAY.(1) <- !wEAPONLAYER_ARRAY;
        aLL_WEAPONLAYER_ARRAY.(2) <- !tWO_WEAPONLAYER_ARRAY;
        aLL_WEAPONLAYER_ARRAY.(3) <- !tHREE_WEAPONLAYER_ARRAY
        end
    

    method getInstanceArray ((size : int)) : WeaponLayer.weaponLayer array =
        begin
        let weaponLayerArray : WeaponLayer.weaponLayer array ref = ref ((Obj.magic aLL_WEAPONLAYER_ARRAY.(size).((circularIndexUtil#getIndex ())))) in ();
        ignore (circularIndexUtil#next ());
        !weaponLayerArray
        end

    initializer
      begin
        mAX <- 5;
        circularIndexUtil <- ((CircularIndexUtil.createInstance (mAX)) :> CircularIndexUtil.circularIndexUtil);
        aLL_WEAPONLAYER_ARRAY <- (Array.make (4) [||]);
        ()
      end
  end
let () = java_register_constructor "WeaponLayerArrayLayerCircularStaticPool" (fun arguments -> Obj.repr (new weaponLayerArrayLayerCircularStaticPool (Obj.obj arguments)))

let instance = (new weaponLayerArrayLayerCircularStaticPool ())
let get_instance () = instance
let () = java_register_static "WeaponLayerArrayLayerCircularStaticPool.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "WeaponLayerArrayLayerCircularStaticPool.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


