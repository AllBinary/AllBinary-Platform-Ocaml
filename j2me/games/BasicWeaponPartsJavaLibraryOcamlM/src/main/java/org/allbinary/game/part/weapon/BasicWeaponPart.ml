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
(* package org.allbinary.game.part.weapon *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.animation.Animation *)
(* import org.allbinary.animation.NullAnimationFactory *)
(* import org.allbinary.game.combat.weapon.WeaponProperties *)
(* import org.allbinary.game.part.PartInterface *)
(* import org.allbinary.game.score.NoScoreable *)
(* import org.allbinary.game.score.ScoreableInterface *)
(* import org.allbinary.graphics.RelativeRelationship *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.layer.AllBinaryLayerManager *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.view.ViewPositionBase *)

let nULL_BASIC_WEAPON_PART_cell : Obj.t Lazy.t ref = ref (Lazy.from_val java_null)
let get_nULL_BASIC_WEAPON_PART : 'r. unit -> 'r = fun () -> Obj.magic (try Lazy.force !nULL_BASIC_WEAPON_PART_cell with Lazy.Undefined -> java_null)
let set_nULL_BASIC_WEAPON_PART value' = nULL_BASIC_WEAPON_PART_cell := Lazy.from_val (Obj.repr value')
let () = java_register_static "BasicWeaponPart.get_nULL_BASIC_WEAPON_PART" (fun _ -> Obj.repr (get_nULL_BASIC_WEAPON_PART ()))
let () = java_register_static "BasicWeaponPart.set_nULL_BASIC_WEAPON_PART" (fun value' -> set_nULL_BASIC_WEAPON_PART value'; Obj.repr ())
class basicWeaponPart ((animationInterface_arg : Animation.animation), (sourceLayerInterface : AllBinaryLayer.allBinaryLayer), (weaponProperties_arg : WeaponProperties.weaponProperties), (scoreableInterface_arg : ScoreableInterface.scoreableInterface), (relativeRelationship_arg : RelativeRelationship.relativeRelationship)) =
  object (self)
    val mutable animationInterface : Animation.animation = (Obj.magic 0)
    method animationInterface = animationInterface
    method set_animationInterface value' = animationInterface <- value'
    val mutable ownerLayerInterface : AllBinaryLayer.allBinaryLayer = (Obj.magic 0)
    method ownerLayerInterface = ownerLayerInterface
    method set_ownerLayerInterface value' = ownerLayerInterface <- value'
    val mutable weaponProperties : WeaponProperties.weaponProperties = (Obj.magic 0)
    method weaponProperties = weaponProperties
    method set_weaponProperties value' = weaponProperties <- value'
    val mutable scoreableInterface : ScoreableInterface.scoreableInterface = (Obj.magic 0)
    method scoreableInterface = scoreableInterface
    method set_scoreableInterface value' = scoreableInterface <- value'
    val mutable relativeRelationship : RelativeRelationship.relativeRelationship = (Obj.magic 0)
    method relativeRelationship = relativeRelationship
    method set_relativeRelationship value' = relativeRelationship <- value'
    
    

    method init : 'any1 'any2 'any3 'any4. 'any1 * 'any2 * 'any3 * 'any4 -> unit = fun (sourceLayerInterface, weaponProperties_arg, scoreableInterface_arg, relativeRelationship_arg) ->
        let sourceLayerInterface = Obj.repr sourceLayerInterface in
        let weaponProperties_arg = Obj.repr weaponProperties_arg in
        let scoreableInterface_arg = Obj.repr scoreableInterface_arg in
        let relativeRelationship_arg = Obj.repr relativeRelationship_arg in
        begin
        (self#setOwnerLayerInterface ((Obj.magic sourceLayerInterface)));
        (self#setWeaponProperties ((Obj.magic weaponProperties_arg)));
        scoreableInterface <- (Obj.magic scoreableInterface_arg);
        relativeRelationship <- (Obj.magic relativeRelationship_arg)
        end [@@warning "-20"]
    

    method process : 'any1. 'any1 * int * int -> unit = fun (allbinaryLayerManager, (angle : int), (otherAngle : int)) ->
        let allbinaryLayerManager = Obj.repr allbinaryLayerManager in
        begin
        (self#processScore ((Obj.magic allbinaryLayerManager), angle, otherAngle, (self#getWeaponProperties ()), scoreableInterface))
        end [@@warning "-20"]
    

    method processScore : 'any1 'any4 'any5. 'any1 * int * int * 'any4 * 'any5 -> unit = fun (_allbinaryLayerManager, (_angle : int), (_otherAngle : int), _weaponProperties_arg, _scoreableInterface_arg) ->
        begin
        raise (Failure ((CommonStrings.getInstance ())#nOT_IMPLEMENTED))
        end [@@warning "-20"]
    

    method getOwnerLayerInterface : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (ownerLayerInterface))
        end
    

    method setOwnerLayerInterface : 'any1. 'any1 -> unit = fun (ownerLayerInterface_arg) ->
        let ownerLayerInterface_arg = Obj.repr ownerLayerInterface_arg in
        begin
        ownerLayerInterface <- (Obj.magic ownerLayerInterface_arg)
        end [@@warning "-20"]
    

    method getAnimationInterface : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (animationInterface))
        end
    

    method setAnimationInterface : 'any1. 'any1 -> unit = fun (animationInterface_arg) ->
        let animationInterface_arg = Obj.repr animationInterface_arg in
        begin
        animationInterface <- (Obj.magic animationInterface_arg)
        end [@@warning "-20"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        let viewPosition : ViewPositionBase.viewPositionBase ref = ref ((((self#getOwnerLayerInterface ())#getViewPosition ()) :> ViewPositionBase.viewPositionBase)) in ();
        let viewX : int ref = ref ((!viewPosition#getX ())) in ();
        let viewY : int ref = ref ((!viewPosition#getY ())) in ();
        ignore (animationInterface#paintXY ((Obj.magic graphics), !viewX, !viewY))
        end [@@warning "-20"]
    

    method paintThreed : 'any1. 'any1 -> unit = fun (_graphics) ->
        begin
        ()
        end [@@warning "-20"]
    

    method getWeaponProperties : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (weaponProperties))
        end
    

    method setWeaponProperties : 'any1. 'any1 -> unit = fun (weaponProperties_arg) ->
        let weaponProperties_arg = Obj.repr weaponProperties_arg in
        begin
        weaponProperties <- (Obj.magic weaponProperties_arg)
        end [@@warning "-20"]

    initializer
      begin
        animationInterface <- (((NullAnimationFactory.getFactoryInstance ())#getInstance (0)) :> Animation.animation);
        ownerLayerInterface <- ((AllBinaryLayer.get_nULL_ALLBINARY_LAYER ()) :> AllBinaryLayer.allBinaryLayer);
        weaponProperties <- ((WeaponProperties.get_nULL_WEAPON_PROPERTIES ()) :> WeaponProperties.weaponProperties);
        scoreableInterface <- ((NoScoreable.getInstance ()) :> ScoreableInterface.scoreableInterface);
        relativeRelationship <- ((RelativeRelationship.get_nULL_RELATIVE_RELATIONSHIP ()) :> RelativeRelationship.relativeRelationship);
        ();
        (self#init (sourceLayerInterface, weaponProperties_arg, scoreableInterface_arg, relativeRelationship_arg));
        (self#setAnimationInterface (animationInterface_arg))
      end
  end
let () = java_register_constructor "BasicWeaponPart" (fun arguments -> Obj.repr (new basicWeaponPart (Obj.obj arguments)))

let createBasicWeaponPart : 'any1 'return. 'any1 -> 'return = fun (animationInterface_arg) ->
        let animationInterface_arg = Obj.repr animationInterface_arg in
        begin
        (Obj.magic ((new basicWeaponPart ((Obj.magic animationInterface_arg), (AllBinaryLayer.get_nULL_ALLBINARY_LAYER ()), (WeaponProperties.get_nULL_WEAPON_PROPERTIES ()), (NoScoreable.getInstance ()), (RelativeRelationship.get_nULL_RELATIVE_RELATIONSHIP ())))))
        end [@@warning "-20"]
let () = java_register_static "BasicWeaponPart.createBasicWeaponPart" (fun arguments -> Obj.repr (createBasicWeaponPart (Obj.obj arguments)))

let () = nULL_BASIC_WEAPON_PART_cell := lazy (Obj.repr ((createBasicWeaponPart (((NullAnimationFactory.getFactoryInstance ())#getInstance (0))))))


