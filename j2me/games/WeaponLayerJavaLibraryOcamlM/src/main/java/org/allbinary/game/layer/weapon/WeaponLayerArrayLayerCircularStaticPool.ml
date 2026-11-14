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
  object (self)
    val mutable mAX : int = 0
    method mAX = mAX
    method set_mAX value' = mAX <- value'
    val mutable circularIndexUtil : CircularIndexUtil.circularIndexUtil = (Obj.magic 0)
    method circularIndexUtil = circularIndexUtil
    method set_circularIndexUtil value' = circularIndexUtil <- value'
    val mutable wEAPONLAYER_ARRAY : WeaponLayer.weaponLayer array array = (Obj.magic 0)
    method wEAPONLAYER_ARRAY = wEAPONLAYER_ARRAY
    method set_wEAPONLAYER_ARRAY value' = wEAPONLAYER_ARRAY <- value'
    val mutable tWO_WEAPONLAYER_ARRAY : WeaponLayer.weaponLayer array array = (Obj.magic 0)
    method tWO_WEAPONLAYER_ARRAY = tWO_WEAPONLAYER_ARRAY
    method set_tWO_WEAPONLAYER_ARRAY value' = tWO_WEAPONLAYER_ARRAY <- value'
    val mutable tHREE_WEAPONLAYER_ARRAY : WeaponLayer.weaponLayer array array = (Obj.magic 0)
    method tHREE_WEAPONLAYER_ARRAY = tHREE_WEAPONLAYER_ARRAY
    method set_tHREE_WEAPONLAYER_ARRAY value' = tHREE_WEAPONLAYER_ARRAY <- value'
    

    method init () : unit =
        begin
        let wEAPONLAYER_ARRAY_arg : WeaponLayer.weaponLayer array array ref = ref ((Array.make ((mAX * 2)) [||])) in ();
        let tWO_WEAPONLAYER_ARRAY_arg : WeaponLayer.weaponLayer array array ref = ref ((Array.make (mAX) [||])) in ();
        let tHREE_WEAPONLAYER_ARRAY_arg : WeaponLayer.weaponLayer array array ref = ref ((Array.make (mAX) [||])) in ();
        for index = 0 to mAX - 1 do
            !wEAPONLAYER_ARRAY_arg.(index) <- (Array.make (1) (Obj.magic 0));
            !tWO_WEAPONLAYER_ARRAY_arg.(index) <- (Array.make (2) (Obj.magic 0));
            !tHREE_WEAPONLAYER_ARRAY_arg.(index) <- (Array.make (3) (Obj.magic 0))
        done;
        wEAPONLAYER_ARRAY <- !wEAPONLAYER_ARRAY_arg;
        tWO_WEAPONLAYER_ARRAY <- !tWO_WEAPONLAYER_ARRAY_arg;
        tHREE_WEAPONLAYER_ARRAY <- !tHREE_WEAPONLAYER_ARRAY_arg
        end
    

    method getWeaponLayerArrays : 'return. int -> 'return = fun ((size : int)) ->
        try
        begin
        if (size = 1) then begin
            raise (Java_return (Obj.repr (wEAPONLAYER_ARRAY)))
        end else if (size = 2) then begin
            raise (Java_return (Obj.repr (tWO_WEAPONLAYER_ARRAY)))
        end else if (size = 3) then begin
            raise (Java_return (Obj.repr (tHREE_WEAPONLAYER_ARRAY)))
        end;
        raise (Failure ("RuntimeException"))
        end
        with Java_return value -> Obj.obj value
    

    method getInstanceArray : 'return. int -> 'return = fun ((size : int)) ->
        begin
        let weaponLayerArray : WeaponLayer.weaponLayer array ref = ref ((self#getWeaponLayerArrays (size)).((circularIndexUtil#getIndex ()))) in ();
        ignore (circularIndexUtil#next ());
        (Obj.magic (!weaponLayerArray))
        end

    initializer
      begin
        mAX <- 5;
        circularIndexUtil <- ((CircularIndexUtil.createInstance (mAX)) :> CircularIndexUtil.circularIndexUtil);
        wEAPONLAYER_ARRAY <- (Obj.magic 0);
        tWO_WEAPONLAYER_ARRAY <- (Obj.magic 0);
        tHREE_WEAPONLAYER_ARRAY <- (Obj.magic 0);
        ()
      end
  end
let () = java_register_constructor "WeaponLayerArrayLayerCircularStaticPool" (fun arguments -> Obj.repr (new weaponLayerArrayLayerCircularStaticPool (Obj.obj arguments)))

let instance = (new weaponLayerArrayLayerCircularStaticPool ())
let get_instance () = instance
let () = java_register_static "WeaponLayerArrayLayerCircularStaticPool.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (instance))
        end
let () = java_register_static "WeaponLayerArrayLayerCircularStaticPool.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


