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
(* import javax.microedition.khronos.opengles.GL *)
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.animation.Animation *)
(* import org.allbinary.animation.IndexedAnimation *)
(* import org.allbinary.animation.NullAnimationFactory *)
(* import org.allbinary.game.collision.CollidableBaseBehavior *)
(* import org.allbinary.game.combat.destroy.DestroyedLayerProcessor *)
(* import org.allbinary.game.combat.weapon.WeaponProperties *)
(* import org.allbinary.game.configuration.GameConfigurationUtil *)
(* import org.allbinary.game.identification.BasicGroupFactory *)
(* import org.allbinary.game.multiplayer.layer.MultiPlayerGameLayer *)
(* import org.allbinary.game.multiplayer.layer.RemoteInfo *)
(* import org.allbinary.game.score.NoScoreable *)
(* import org.allbinary.game.score.ScoreableInterface *)
(* import org.allbinary.game.tick.TickableInterface *)
(* import org.allbinary.graphics.Rectangle *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.layer.AllBinaryLayerManager *)
(* import org.allbinary.physics.movement.Movement *)
(* import org.allbinary.view.ViewPosition *)
(* import org.allbinary.view.ViewPositionBase *)


let getStaticType () : int =
        begin
        0
        end

let () = java_register_static "WeaponLayer.getStaticType" (fun arguments -> Obj.repr (getStaticType (Obj.obj arguments)))
class weaponLayer ((name : string), remoteInfo, (multiPlayerType_arg : int), (movement_arg : Movement.movement), (animationInterface_arg : Animation.animation), (destroyedAnimationInterface_arg : Animation.animation), (rectangle : Rectangle.rectangle), (viewPosition : ViewPositionBase.viewPositionBase)) =
  object (self)
    inherit MultiPlayerGameLayer.multiPlayerGameLayer (remoteInfo, (BasicGroupFactory.getInstance ())#nONE_ARRAY, name, rectangle, viewPosition) as super
    val mutable animationInterface : Animation.animation = (Obj.magic 0)
    method animationInterface = animationInterface
    method set_animationInterface value' = animationInterface <- value'
    val mutable initAnimationInterface : Animation.animation = (Obj.magic 0)
    method initAnimationInterface = initAnimationInterface
    method set_initAnimationInterface value' = initAnimationInterface <- value'
    val mutable destroyedAnimationInterface : Animation.animation = (Obj.magic 0)
    method destroyedAnimationInterface = destroyedAnimationInterface
    method set_destroyedAnimationInterface value' = destroyedAnimationInterface <- value'
    val mutable sourceLayerInterface : AllBinaryLayer.allBinaryLayer = (Obj.magic 0)
    method sourceLayerInterface = sourceLayerInterface
    method set_sourceLayerInterface value' = sourceLayerInterface <- value'
    val mutable totalDamage : int = 0
    method totalDamage = totalDamage
    method set_totalDamage value' = totalDamage <- value'
    val mutable initDamage : int = 0
    method initDamage = initDamage
    method set_initDamage value' = initDamage <- value'
    val mutable destroyed : bool = false
    method destroyed = destroyed
    method set_destroyed value' = destroyed <- value'
    val mutable scoreableInterface : ScoreableInterface.scoreableInterface = (Obj.magic 0)
    method scoreableInterface = scoreableInterface
    method set_scoreableInterface value' = scoreableInterface <- value'
    val mutable movement : Movement.movement = (Obj.magic 0)
    method movement = movement
    method set_movement value' = movement <- value'
    val mutable weaponProperties : WeaponProperties.weaponProperties = (Obj.magic 0)
    method weaponProperties = weaponProperties
    method set_weaponProperties value' = weaponProperties <- value'
    val mutable multiPlayerType : int = 0
    method multiPlayerType = multiPlayerType
    method set_multiPlayerType value' = multiPlayerType <- value'
    val mutable collidableWeaponBehavior : CollidableWeaponBehavior.collidableWeaponBehavior = (Obj.magic 0)
    method collidableWeaponBehavior = collidableWeaponBehavior
    method set_collidableWeaponBehavior value' = collidableWeaponBehavior <- value'
    
    

    method setCollidableInferface : 'any1. 'any1 -> unit = fun (collidableInferface) ->
        let collidableInferface = Obj.repr collidableInferface in
        begin
        ignore (super#setCollidableInferface ((Obj.magic collidableInferface)));
        collidableWeaponBehavior <- (Obj.magic (self#getCollidableInferface ()))
        end [@@warning "-7-20"]
    

    method initXYZ ((x : int), (y : int), (z : int)) : unit =
        begin
        (self#set_x) (x);
        (self#set_y) (y);
        (self#set_z) (z)
        end [@@warning "-7"]
    

    method init : 'any1 'any4 'any5. 'any1 * int * int * 'any4 * 'any5 -> unit = fun (sourceLayerInterface_arg, (angle : int), (otherAngle : int), weaponProperties_arg, scoreable) ->
        let sourceLayerInterface_arg = Obj.repr sourceLayerInterface_arg in
        let weaponProperties_arg = Obj.repr weaponProperties_arg in
        let scoreable = Obj.repr scoreable in
        begin
        (self#setWeaponPropertiesP ((Obj.magic weaponProperties_arg)));
        ignore (self#setReadyForExplosion (false));
        (self#setAnimationInterface ((self#getInitAnimationInterfaceP ())));
        (self#setOwnerLayerInterface ((Obj.magic sourceLayerInterface_arg)));
        ignore (collidableWeaponBehavior#init ((Obj.magic sourceLayerInterface_arg)));
        (self#setGroupInterfaces ());
        if ((Obj.magic scoreable) != (Obj.magic 0)) then begin
            scoreableInterface <- (Obj.magic scoreable)
        end;
        totalDamage <- 0;
        initDamage <- ((Obj.magic weaponProperties_arg)#getDamage ());
        (self#setDestroyed (false));
        ignore (movement#init (((Obj.magic weaponProperties_arg)#getSpeed ()), angle, otherAngle))
        end [@@warning "-7-20"]
    

    method setGroupInterfaces () : unit =
        begin
        let basicGroupFactory : BasicGroupFactory.basicGroupFactory ref = ref (((BasicGroupFactory.getInstance ()) :> BasicGroupFactory.basicGroupFactory)) in ();
        if ((Obj.repr (sourceLayerInterface#getGroupInterface ()).(0)) == (Obj.repr !basicGroupFactory#eNEMY)) then begin
            ignore (self#setGroupInterface (!basicGroupFactory#eNEMY_ARRAY))
        end else begin
            ignore (self#setGroupInterface ((sourceLayerInterface#getGroupInterface ())))
        end
        end [@@warning "-7"]
    

    method processTick : 'any1. 'any1 -> unit = fun (_allBinaryLayerManager) ->
        begin
        if ((self#isExhausted ()) && (not (self#isDestroyed ()))) then begin
            if (self#isReadyForExplosion ()) then begin
                let indexedAnimationInterface : IndexedAnimation.indexedAnimation ref = ref (((Obj.magic (self#getAnimationInterface ())) :> IndexedAnimation.indexedAnimation)) in ();
                let currentFrame : int ref = ref ((!indexedAnimationInterface#getFrame ())) in ();
                if (!currentFrame < ((!indexedAnimationInterface#getAnimationSize ()) - 1)) then begin
                    ignore (!indexedAnimationInterface#nextFrame ())
                end else begin
                    (self#setDestroyed (true))
                end
            end else begin
                let collidableWeaponBehavior_arg : CollidableWeaponBehavior.collidableWeaponBehavior ref = ref (((Obj.magic (self#getCollidableInferface ())) :> CollidableWeaponBehavior.collidableWeaponBehavior)) in ();
                if (!collidableWeaponBehavior_arg#isCollided ()) then begin
                    (self#setAnimationInterface (destroyedAnimationInterface));
                    ignore ((self#getMovement ())#stop ());
                    ignore (self#setReadyForExplosion (true))
                end else begin
                    (self#setDestroyed (true))
                end
            end
        end;
        ignore (movement#process ((Obj.magic self)));
        totalDamage <- (totalDamage + (weaponProperties#getDissipation ()))
        end [@@warning "-7-20"]
    

    method isDestroyed () : bool =
        begin
        destroyed
        end [@@warning "-7"]
    

    method damage ((damage : int), (_damageType : int)) : unit =
        begin
        totalDamage <- (totalDamage + (damage * damage))
        end [@@warning "-7"]
    

    method givePoints ((total : int)) : unit =
        begin
        ignore (scoreableInterface#addPoints ((((GameConfigurationUtil.getInstance ())#getCompetitionValue ()) * total)))
        end [@@warning "-7"]
    

    method isExhausted () : bool =
        try
        begin
        if ((totalDamage > (self#getInitDamage ())) || (totalDamage < 0)) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method getDamage ((_damageType : int)) : int =
        try
        begin
        if (not (self#isExhausted ())) then begin
            let total : int ref = ref (((self#getInitDamage ()) - totalDamage)) in ();
            (self#givePoints (!total));
            raise (Java_return (Obj.repr (!total)))
        end;
        0
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method setDestroyed ((destroyed_arg : bool)) : unit =
        begin
        destroyed <- destroyed_arg;
        if (self#isDestroyed ()) then begin
            scoreableInterface <- (NoScoreable.getInstance ());
            ignore ((DestroyedLayerProcessor.getInstance ())#add ((Obj.magic self)))
        end
        end [@@warning "-7"]
    

    method getInitDamage () : int =
        begin
        initDamage
        end [@@warning "-7"]
    

    method setAnimationInterface : 'any1. 'any1 -> unit = fun (animationInterface_arg) ->
        let animationInterface_arg = Obj.repr animationInterface_arg in
        begin
        animationInterface <- (Obj.magic animationInterface_arg)
        end [@@warning "-7-20"]
    

    method getAnimationInterface : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (animationInterface))
        end [@@warning "-7"]
    

    method getInitAnimationInterfaceP : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (initAnimationInterface))
        end [@@warning "-7"]
    

    method setInitAnimationInterfaceP : 'any1. 'any1 -> unit = fun (initAnimationInterface_arg) ->
        let initAnimationInterface_arg = Obj.repr initAnimationInterface_arg in
        begin
        initAnimationInterface <- (Obj.magic initAnimationInterface_arg)
        end [@@warning "-7-20"]
    

    method getDestroyedAnimationInterface : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (destroyedAnimationInterface))
        end [@@warning "-7"]
    

    method getOwnerLayerInterface : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (sourceLayerInterface))
        end [@@warning "-7"]
    

    method setOwnerLayerInterface : 'any1. 'any1 -> unit = fun (sourceLayerInterface_arg) ->
        let sourceLayerInterface_arg = Obj.repr sourceLayerInterface_arg in
        begin
        sourceLayerInterface <- (Obj.magic sourceLayerInterface_arg)
        end [@@warning "-7-20"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        let viewPosition : ViewPositionBase.viewPositionBase ref = ref (((self#getViewPosition ()) :> ViewPositionBase.viewPositionBase)) in ();
        ignore (animationInterface#paintXY ((Obj.magic graphics), ((!viewPosition#getX ()) - (self#getHalfWidth ())), ((!viewPosition#getY ()) - (self#getHalfHeight ()))))
        end [@@warning "-7-20"]
    

    method paintThreed : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        let viewPosition : ViewPositionBase.viewPositionBase ref = ref (((self#getViewPosition ()) :> ViewPositionBase.viewPositionBase)) in ();
        ignore (animationInterface#paintThreedXYZ ((Obj.magic graphics), ((!viewPosition#getX ()) - (self#getHalfWidth ())), ((!viewPosition#getY ()) - (self#getHalfHeight ())), ((!viewPosition#getZ ()) - (self#getHalfDepth ()))))
        end [@@warning "-7-20"]
    

    method getMovement : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (movement))
        end [@@warning "-7"]
    

    method setMovement : 'any1. 'any1 -> unit = fun (movement_arg) ->
        let movement_arg = Obj.repr movement_arg in
        begin
        movement <- (Obj.magic movement_arg)
        end [@@warning "-7-20"]
    

    method getType () : int =
        begin
        (getStaticType ())
        end [@@warning "-7"]
    

    method getMultiPlayerType () : int =
        begin
        multiPlayerType
        end [@@warning "-7"]
    

    method setWeaponPropertiesP : 'any1. 'any1 -> unit = fun (weaponProperties_arg) ->
        let weaponProperties_arg = Obj.repr weaponProperties_arg in
        begin
        weaponProperties <- (Obj.magic weaponProperties_arg)
        end [@@warning "-7-20"]
    

    method getWeaponPropertiesP : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (weaponProperties))
        end [@@warning "-7"]
    

    method implmentsTickableInterface () : bool =
        begin
        true
        end [@@warning "-7"]
    

    method set : 'any1. 'any1 -> unit = fun (gl) ->
        let gl = Obj.repr gl in
        begin
        ignore (initAnimationInterface#set ((Obj.magic gl)))
        end [@@warning "-7-20"]

    initializer
      begin
        animationInterface <- (((NullAnimationFactory.getFactoryInstance ())#getInstance (0)) :> Animation.animation);
        ();
        ();
        sourceLayerInterface <- ((AllBinaryLayer.get_nULL_ALLBINARY_LAYER ()) :> AllBinaryLayer.allBinaryLayer);
        totalDamage <- 0;
        initDamage <- 0;
        destroyed <- true;
        scoreableInterface <- ((NoScoreable.getInstance ()) :> ScoreableInterface.scoreableInterface);
        ();
        weaponProperties <- ((WeaponProperties.get_nULL_WEAPON_PROPERTIES ()) :> WeaponProperties.weaponProperties);
        ();
        collidableWeaponBehavior <- ((CollidableWeaponBehavior.getNullInstance ()) :> CollidableWeaponBehavior.collidableWeaponBehavior);
        ();
        (* super(...) is the inherit clause *) ();
        initAnimationInterface <- animationInterface_arg;
        (self#setAnimationInterface (animationInterface_arg));
        destroyedAnimationInterface <- destroyedAnimationInterface_arg;
        movement <- movement_arg;
        multiPlayerType <- multiPlayerType_arg
      end
  end
let () = java_register_constructor "WeaponLayer" (fun arguments -> Obj.repr (new weaponLayer (Obj.obj arguments)))


