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
(* package org.allbinary.game.collision *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.game.layer.CollidableCompositeLayer *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonLabels *)
(* import org.allbinary.string.CommonStrings *)

class collidableBaseBehavior ((collidable_arg : bool)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable layerCollisionUtil : LayerCollisionUtil.layerCollisionUtil = (Obj.magic 0)
    method layerCollisionUtil = layerCollisionUtil
    method set_layerCollisionUtil value' = layerCollisionUtil <- value'
    val mutable collidable : bool = false
    method collidable = collidable
    method set_collidable value' = collidable <- value'
    
    

    method update () : unit =
        begin
        ()
        end
    

    method getName () : string =
        begin
        (java_get_class (Obj.repr self))
        end
    

    method setCollidable ((collidable_arg : bool)) : unit =
        begin
        collidable <- collidable_arg
        end
    

    method isCollidable : 'any1. 'any1 -> bool = fun (_ownerLayer) ->
        begin
        collidable
        end [@@warning "-20"]
    

    method collide : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_ownerLayer, _allbinaryCollidableLayer) ->
        begin
        raise (Failure ((java_string_of (Obj.repr ((((new StringMaker.stringMaker ())#append (commonStrings#nOT_IMPLEMENTED))#append ((CommonLabels.getInstance ())#cOLON_SEP))#append ((java_get_class (Obj.repr self))))))))
        end [@@warning "-20"]
    

    method isCollision : 'any1 'any2. 'any1 * 'any2 -> bool = fun (ownerLayer, collisionLayer) ->
        let ownerLayer = Obj.repr ownerLayer in
        let collisionLayer = Obj.repr collisionLayer in
        begin
        (layerCollisionUtil#isCollision ((Obj.magic ownerLayer), (Obj.magic collisionLayer)))
        end [@@warning "-20"]
    

    method isCollisionInterface : 'any1 'any2. 'any1 * 'any2 -> bool = fun (ownerLayer, collidableInterfaceCompositeInterface) ->
        let ownerLayer = Obj.repr ownerLayer in
        let collidableInterfaceCompositeInterface = Obj.repr collidableInterfaceCompositeInterface in
        begin
        (layerCollisionUtil#isCollision ((Obj.magic ownerLayer), (Obj.magic (Obj.magic collidableInterfaceCompositeInterface))))
        end [@@warning "-20"]
    

    method collideInterface : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_ownerLayer, _collidableInterfaceCompositeInterface) ->
        begin
        raise (Failure (commonStrings#nOT_IMPLEMENTED))
        end [@@warning "-20"]
    

    method paint : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_ownerLayer, _graphics) ->
        begin
        ()
        end [@@warning "-20"]
    

    method getCollisionTypeWith : 'any1. 'any1 -> CollisionType.collisionType = fun (_layerInterface) ->
        begin
        ((CollisionTypeFactory.getInstance ())#nONE :> CollisionType.collisionType)
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        layerCollisionUtil <- ((LayerCollisionUtil.getInstance ()) :> LayerCollisionUtil.layerCollisionUtil);
        collidable <- true;
        ();
        collidable <- collidable_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "CollidableBaseBehavior" (fun arguments -> Obj.repr (new collidableBaseBehavior (Obj.obj arguments)))


