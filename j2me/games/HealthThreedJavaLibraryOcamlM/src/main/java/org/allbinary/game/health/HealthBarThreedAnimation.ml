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
(* package org.allbinary.game.health *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.khronos.opengles.GL10 *)
(* import javax.microedition.lcdui.Graphics *)
(* import min3d.core.ColorBufferList *)
(* import min3d.core.Number3dBufferList *)
(* import min3d.objectPrimitives.Rectangle *)
(* import min3d.vos.Number3d *)
(* import org.allbinary.device.OpenGLESGraphics *)
(* import org.allbinary.graphics.threed.min3d.renderer.Object3dProcessor *)
(* import org.allbinary.graphics.threed.min3d.renderer.Object3dProcessorUtil *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.view.ViewPositionBase *)

class healthBarThreedAnimation ((layerInterface : AllBinaryLayer.allBinaryLayer), (location : int)) =
  object (self)
    inherit HealthBarAnimation.healthBarAnimation (layerInterface, location) as super
    val mutable rectangle : Obj.t = Obj.repr 0
    method rectangle : 'r. 'r = Obj.magic rectangle
    method set_rectangle : 'v. 'v -> unit = fun value' -> rectangle <- Obj.repr value'
    val mutable basicColorFactory : BasicColorFactory.basicColorFactory = (Obj.magic 0)
    method basicColorFactory = basicColorFactory
    method set_basicColorFactory value' = basicColorFactory <- value'
    val mutable object3dProcessor : Object3dProcessor.object3dProcessor = (Obj.magic 0)
    method object3dProcessor = object3dProcessor
    method set_object3dProcessor value' = object3dProcessor <- value'
    
    

    method updateColor () : unit =
        begin
        let colorBufferList : Obj.t ref = ref ((Obj.repr (((Obj.magic rectangle)#getVertices ())#getColor4BufferList ()))) in ();
        let size : int ref = ref (((Obj.magic !colorBufferList)#size ())) in ();
        let index : int ref = ref (!size) in ();
        while ((index := !index - 1; !index) >= 0) do
            ignore ((Obj.magic !colorBufferList)#set (!index, (self#basicColor)))
        done
        end [@@warning "-7"]
    

    method updateSize () : unit =
        begin
        let number3dBufferList : Obj.t ref = ref ((Obj.repr (((Obj.magic rectangle)#getVertices ())#getPointsOnFacesNumber3dBufferList ()))) in ();
        let width : int ref = ref ((self#x2)) in ();
        let height : int ref = ref (((self#thickness) * 2)) in ();
        let segsH : int ref = ref (1) in ();
        let segsW : int ref = ref (1) in ();
        let row : int ref = ref (0) in ();
        let col : int ref = ref (0) in ();
        let w : float ref = ref ((float_of_int ((!width / !segsW)))) in ();
        let h : float ref = ref ((float_of_int ((!height / !segsH)))) in ();
        let width5 : float ref = ref (((float_of_int (!width)) /. 2.)) in ();
        let height5 : float ref = ref (((float_of_int (!height)) /. 2.)) in ();
        let index : int ref = ref (0) in ();
        for row = 0 to !segsH do
            for col = 0 to !segsW do
                ignore ((Obj.magic !number3dBufferList)#set ((let value = !index in index := !index + 1; value), (((float_of_int (!col)) *. !w) -. !width5), (((float_of_int (!row)) *. !h) -. !height5), 0.))
            done
        done
        end [@@warning "-7"]
    

    method onHealthChange ((newX2 : int)) : unit =
        begin
        ignore (super#onHealthChange (newX2));
        (self#updateColor ());
        (self#updateSize ())
        end [@@warning "-7"]
    

    method paintThreedXYZ : 'any1. 'any1 * int * int * int -> unit = fun (graphics, (_x : int), (_y : int), (_z : int)) ->
        let graphics = Obj.repr graphics in
        begin
        let openGLESGraphics : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic graphics)))) in ();
        let gl : Obj.t ref = ref ((Obj.repr ((Obj.magic !openGLESGraphics)#getGl10 ()))) in ();
        let viewPosition : ViewPositionBase.viewPositionBase ref = ref ((((self#allbinaryLayer)#getViewPosition ()) :> ViewPositionBase.viewPositionBase)) in ();
        let positionNumber3d : Obj.t ref = ref ((Obj.repr ((Obj.magic rectangle)#getPosition ()))) in ();
        ignore ((Obj.magic !positionNumber3d)#set_x ((-.((java_to_float (Obj.repr ((!viewPosition#getX ()))))))));
        ignore ((Obj.magic !positionNumber3d)#set_z ((-.((java_to_float (Obj.repr ((!viewPosition#getY ()))))))));
        ignore ((Obj.magic !positionNumber3d)#set_y (((!viewPosition#getZ ()) + ((self#allbinaryLayer)#getHeight ()))));
        ignore (object3dProcessor#drawObject ((Obj.magic !gl), (Obj.magic rectangle)))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        basicColorFactory <- ((BasicColorFactory.getInstance ()) :> BasicColorFactory.basicColorFactory);
        object3dProcessor <- (((Object3dProcessorUtil.getInstance ())#getInstanceObject3dProcessor ()) :> Object3dProcessor.object3dProcessor);
        ();
        (* super(...) is the inherit clause *) ();
        (self#set_basicColor) (basicColorFactory#gREEN);
        (self#set_colorP) (((self#basicColor)#intValue ()));
        rectangle <- Obj.repr ((Obj.obj (java_new "Rectangle" (Obj.repr (0, 0, 1, 1, (self#basicColor))))));
        ignore ((Obj.magic rectangle)#setDoubleSidedEnabled (true));
        ignore ((Obj.magic rectangle)#setNormalsEnabled (false));
        ignore ((Obj.magic rectangle)#setTexturesEnabled (false))
      end
  end [@@warning "-20"]
let () = java_register_constructor "HealthBarThreedAnimation" (fun arguments -> Obj.repr (new healthBarThreedAnimation (Obj.obj arguments)))


