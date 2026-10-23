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
(* package org.allbinary.game.layer.special *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.game.collision.CollidableNeverCollideBehaviorFactory *)
(* import org.allbinary.game.combat.damage.DamageableInterface *)
(* import org.allbinary.game.combat.destroy.DestroyableInterface *)
(* import org.allbinary.game.combat.destroy.event.DestroyedEvent *)
(* import org.allbinary.game.identification.BasicGroupFactory *)
(* import org.allbinary.game.identification.Group *)
(* import org.allbinary.game.input.event.GameKeyEvent *)
(* import org.allbinary.game.layer.AllBinaryGameLayerManager *)
(* import org.allbinary.game.layer.CollidableCompositeLayer *)
(* import org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface *)
(* import org.allbinary.game.layer.pickup.PickupBehavior *)
(* import org.allbinary.game.layer.pickup.PickupCompositeInterface *)
(* import org.allbinary.game.part.PartInterface *)
(* import org.allbinary.game.part.PartInterfaceUtil *)
(* import org.allbinary.graphics.Rectangle *)
(* import org.allbinary.graphics.RectangleFactory *)
(* import org.allbinary.layer.AllBinaryLayerManager *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.math.PositionStrings *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.view.ViewPositionBase *)

let nULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER : Obj.t ref = ref ((Obj.repr (NullUtil.getInstance ())#nULL_OBJECT))
let get_nULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER () = !nULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER
let set_nULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER value' = nULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER := value'
let () = java_register_static "CollidableDestroyableDamageableLayer.get_nULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER" (fun _ -> Obj.repr (get_nULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER ()))
let rEADYFOREXPLOSION : string = "ReadyForExplosion: "
let get_rEADYFOREXPLOSION () = rEADYFOREXPLOSION
let () = java_register_static "CollidableDestroyableDamageableLayer.get_rEADYFOREXPLOSION" (fun _ -> Obj.repr (get_rEADYFOREXPLOSION ()))
class collidableDestroyableDamageableLayer (groupInterface_arg, (name : string), layerInfo, (viewPosition : ViewPositionBase.viewPositionBase)) =
  object (self)
    inherit CollidableCompositeLayer.collidableCompositeLayer (name, layerInfo, viewPosition, (CollidableNeverCollideBehaviorFactory.getInstance ())) as super
    val mutable groupInterface : Obj.t = Obj.repr 0
    method groupInterface : 'r. 'r = Obj.magic groupInterface
    method set_groupInterface : 'v. 'v -> unit = fun value' -> groupInterface <- Obj.repr value'
    val mutable readyForExplosion : bool = false
    method readyForExplosion = readyForExplosion
    method set_readyForExplosion value' = readyForExplosion <- value'
    val mutable initWidth : int = 0
    method initWidth = initWidth
    method set_initWidth value' = initWidth <- value'
    val mutable initHeight : int = 0
    method initHeight = initHeight
    method set_initHeight value' = initHeight <- value'
    val mutable initX : int = 0
    method initX = initX
    method set_initX value' = initX <- value'
    val mutable initY : int = 0
    method initY = initY
    method set_initY value' = initY <- value'
    val mutable initZ : int = 0
    method initZ = initZ
    method set_initZ value' = initZ <- value'
    val mutable partInterfaceArrayP : PartInterface.partInterface array = (Obj.magic 0)
    method partInterfaceArrayP = partInterfaceArrayP
    method set_partInterfaceArrayP value' = partInterfaceArrayP <- value'
    val mutable pickupBehavior : PickupBehavior.pickupBehavior = (Obj.magic 0)
    method pickupBehavior = pickupBehavior
    method set_pickupBehavior value' = pickupBehavior <- value'
    val mutable allBinaryGameLayerManagerP : AllBinaryGameLayerManager.allBinaryGameLayerManager = (Obj.magic 0)
    method allBinaryGameLayerManagerP = allBinaryGameLayerManagerP
    method set_allBinaryGameLayerManagerP value' = allBinaryGameLayerManagerP <- value'
    val mutable isDraggable : bool = false
    method isDraggable = isDraggable
    method set_isDraggable value' = isDraggable <- value'
    val mutable isDragged : bool = false
    method isDragged = isDragged
    method set_isDragged value' = isDragged <- value'
    val mutable isDropped : bool = false
    method isDropped = isDropped
    method set_isDropped value' = isDropped <- value'
    
    

    method initPosition () : unit =
        begin
        ignore (self#setPosition (initX, initY, initZ))
        end [@@warning "-7"]
    

    method initPositionXYZ ((x : int), (y : int), (z : int)) : unit =
        begin
        initX <- x;
        initY <- y;
        initZ <- z
        end [@@warning "-7"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (super#paint ((Obj.magic graphics)))
        end [@@warning "-7-20"]
    

    method damage ((_damage : int), (_damageType : int)) : unit =
        begin
        raise (Failure ((self#commonStrings)#nOT_IMPLEMENTED))
        end [@@warning "-7"]
    

    method getDamage ((_damageType : int)) : int =
        begin
        raise (Failure ((self#commonStrings)#nOT_IMPLEMENTED))
        end [@@warning "-7"]
    

    method isDestroyed () : bool =
        begin
        raise (Failure ((self#commonStrings)#nOT_IMPLEMENTED))
        end [@@warning "-7"]
    

    method getGroupInterface : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic groupInterface)))
        end [@@warning "-7"]
    

    method setGroupInterface (teamInterface) : unit =
        begin
        groupInterface <- Obj.repr (teamInterface)
        end [@@warning "-7"]
    

    method setAllBinaryGameLayerManager : 'any1. 'any1 -> unit = fun (allBinaryGameLayerManager) ->
        let allBinaryGameLayerManager = Obj.repr allBinaryGameLayerManager in
        begin
        allBinaryGameLayerManagerP <- (Obj.magic allBinaryGameLayerManager);
        if (allBinaryGameLayerManagerP == (Obj.magic 0)) then begin
            raise (Failure ("RuntimeException"))
        end
        end [@@warning "-7-20"]
    

    method isReadyForExplosion () : bool =
        begin
        readyForExplosion
        end [@@warning "-7"]
    

    method setReadyForExplosion ((isReadyForExplosion : bool)) : unit =
        begin
        readyForExplosion <- isReadyForExplosion
        end [@@warning "-7"]
    

    method getInitWidth () : int =
        begin
        initWidth
        end [@@warning "-7"]
    

    method getInitHeight () : int =
        begin
        initHeight
        end [@@warning "-7"]
    

    method getInitX () : int =
        begin
        initX
        end [@@warning "-7"]
    

    method getInitY () : int =
        begin
        initY
        end [@@warning "-7"]
    

    method up () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method down () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method right () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method left () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method strafeLeft () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method strafeRight () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method fire : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_layerManager, _gameKeyEvent) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method special1 : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_layerManager, _gameKeyEvent) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method special2 : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_layerManager, _gameKeyEvent) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method special3 : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_layerManager, _gameKeyEvent) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method special4 : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_layerManager, _gameKeyEvent) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method special5 : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_layerManager, _gameKeyEvent) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method upAnalog ((_yAnalogValue : int)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method downAnalog ((_yAnalogValue : int)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method rightAnalog ((_xAnalogValue : int)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method leftAnalog ((_xAnalogValue : int)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method rightTrigger : 'any1 'any2. 'any1 * 'any2 * int -> unit = fun (_layerManager, _gameKeyEvent, (_xAnalogValue : int)) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method leftTrigger : 'any1 'any2. 'any1 * 'any2 * int -> unit = fun (_layerManager, _gameKeyEvent, (_xAnalogValue : int)) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method onDestroyed : 'any1. 'any1 -> unit = fun (_destroyedEvent) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method getPickupBehavior () : PickupBehavior.pickupBehavior =
        begin
        (pickupBehavior :> PickupBehavior.pickupBehavior)
        end [@@warning "-7"]
    

    method setPickupBehavior : 'any1. 'any1 -> unit = fun (pickupBehavior_arg) ->
        let pickupBehavior_arg = Obj.repr pickupBehavior_arg in
        begin
        pickupBehavior <- (Obj.magic pickupBehavior_arg)
        end [@@warning "-7-20"]
    

    method addPart : 'any1. 'any1 -> unit = fun (_pickedUpLayerInterfaceFactoryInterface) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method setPartInterfaceArray ((partInterfaceArray : PartInterface.partInterface array)) : unit =
        begin
        partInterfaceArrayP <- partInterfaceArray
        end [@@warning "-7"]
    

    method getPartInterfaceArray () : PartInterface.partInterface array =
        begin
        partInterfaceArrayP
        end [@@warning "-7"]
    

    method toStringAppend : 'any1. 'any1 -> unit = fun (stringBuffer) ->
        let stringBuffer = Obj.repr stringBuffer in
        begin
        let commonSeps : CommonSeps.commonSeps ref = ref (((CommonSeps.getInstance ()) :> CommonSeps.commonSeps)) in ();
        let positionStrings : PositionStrings.positionStrings ref = ref (((PositionStrings.getInstance ()) :> PositionStrings.positionStrings)) in ();
        ignore (super#toStringAppend ((Obj.magic stringBuffer)));
        ignore ((Obj.magic stringBuffer)#append (!commonSeps#nEW_LINE));
        let groupInterfaceArray : Obj.t ref = ref ((Obj.repr (self#getGroupInterface ()))) in ();
        let size : int ref = ref ((Array.length (Obj.magic !groupInterfaceArray))) in ();
        for index = 0 to !size - 1 do
            ignore ((Obj.magic stringBuffer)#append ((java_string_of (Obj.repr (Obj.magic !groupInterfaceArray).(index)))));
            ignore ((Obj.magic stringBuffer)#append (!commonSeps#cOMMA))
        done;
        let pickupBehavior_arg : PickupBehavior.pickupBehavior ref = ref (((self#getPickupBehavior ()) :> PickupBehavior.pickupBehavior)) in ();
        if (!pickupBehavior_arg != (Obj.magic 0)) then begin
            ignore ((Obj.magic stringBuffer)#append (!commonSeps#nEW_LINE));
            ignore ((Obj.magic stringBuffer)#append ((java_string_of (Obj.repr !pickupBehavior_arg))))
        end;
        ignore ((Obj.magic stringBuffer)#append (!commonSeps#nEW_LINE));
        ignore ((Obj.magic stringBuffer)#append (rEADYFOREXPLOSION));
        ignore ((Obj.magic stringBuffer)#appendboolean (readyForExplosion));
        ignore ((Obj.magic stringBuffer)#append (!commonSeps#nEW_LINE));
        ignore ((Obj.magic stringBuffer)#append ((self#commonStrings)#iNIT));
        ignore ((Obj.magic stringBuffer)#append (!commonSeps#sPACE));
        ignore ((Obj.magic stringBuffer)#append (!positionStrings#x_LABEL));
        ignore ((Obj.magic stringBuffer)#appendint (initX));
        ignore ((Obj.magic stringBuffer)#append (!positionStrings#y_LABEL));
        ignore ((Obj.magic stringBuffer)#appendint (initX));
        ignore ((Obj.magic stringBuffer)#append (!positionStrings#z_LABEL));
        ignore ((Obj.magic stringBuffer)#appendint (initZ))
        end [@@warning "-7-20"]
    

    method toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        (self#toStringAppend (!stringBuffer));
        (java_string_of (Obj.repr !stringBuffer))
        end [@@warning "-7"]

    initializer
      begin
        ();
        readyForExplosion <- false;
        ();
        ();
        initX <- 0;
        initY <- 0;
        initZ <- 0;
        partInterfaceArrayP <- (PartInterfaceUtil.getZeroArray ());
        ();
        allBinaryGameLayerManagerP <- ((AllBinaryGameLayerManager.getNullInstance ()) :> AllBinaryGameLayerManager.allBinaryGameLayerManager);
        isDraggable <- false;
        isDragged <- false;
        isDropped <- false;
        ();
        (* super(...) is the inherit clause *) ();
        initWidth <- (layerInfo#getWidth ());
        initHeight <- (layerInfo#getHeight ());
        groupInterface <- Obj.repr (groupInterface_arg);
        pickupBehavior <- (PickupBehavior.getNullInstance ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "CollidableDestroyableDamageableLayer" (fun arguments -> Obj.repr (new collidableDestroyableDamageableLayer (Obj.obj arguments)))

let getNullInstance () =
        begin
        if ((Obj.repr !nULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER) == (Obj.repr (NullUtil.getInstance ())#nULL_OBJECT)) then begin
            nULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER := (new collidableDestroyableDamageableLayer ((BasicGroupFactory.getInstance ())#nONE_ARRAY, (StringUtil.getInstance ())#eMPTY_STRING, (RectangleFactory.get_sINGLETON ()), (ViewPositionBase.get_nULL_VIEW_POSITION ())))
        end;
        (Obj.magic !nULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER)
        end
let () = java_register_static "CollidableDestroyableDamageableLayer.getNullInstance" (fun arguments -> Obj.repr (getNullInstance (Obj.obj arguments)))


