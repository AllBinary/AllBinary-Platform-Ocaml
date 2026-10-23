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
(* package org.allbinary.image.opengles *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.khronos.opengles.GL *)
(* import javax.microedition.khronos.opengles.GL10 *)
(* import javax.microedition.khronos.opengles.GL11 *)
(* import javax.microedition.khronos.opengles.GL11Ext *)
(* import javax.microedition.lcdui.Image *)
(* import org.allbinary.graphics.displayable.DisplayInfoSingleton *)
(* import org.allbinary.graphics.displayable.event.DisplayChangeEvent *)
(* import org.allbinary.graphics.opengles.OpenGLLogUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.platform.graphics.PlatformBitmapBaseFactory *)
(* import org.allbinary.platform.opengles.PlatformTextureBaseFactory *)

class openGLESGL11ExtImage (image, (bitmapFactory : PlatformBitmapBaseFactory.platformBitmapBaseFactory), (textureFactory : PlatformTextureBaseFactory.platformTextureBaseFactory)) =
  object (self)
    inherit OpenGLESImage.openGLESImage (image, bitmapFactory, textureFactory) as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable a : int = 0
    method a = a
    method set_a value' = a <- value'
    val mutable rectangle : int array = (Obj.magic 0)
    method rectangle = rectangle
    method set_rectangle value' = rectangle <- value'
    
    

    method onDisplayChangeEvent : 'any1. 'any1 -> unit = fun (_displayChangeEvent) ->
        begin
        (try
            ignore ((Obj.magic logUtil)#putF ((self#commonStrings)#sTART, self, "onResize"));
            a <- (((DisplayInfoSingleton.getInstance ())#getLastHeight ()) - (self#getHeight ()))
        with e -> begin
            ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "onResize", e))
        end)
        end [@@warning "-7-20"]
    

    method set : 'any1. 'any1 -> unit = fun (gl) ->
        let gl = Obj.repr gl in
        begin
        (self#onDisplayChangeEvent ((DisplayInfoSingleton.getInstance ())#displayChangeEvent));
        let gl11 : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic gl)))) in ();
        if (super#initTexture ((Obj.magic !gl11))) then begin
            ignore ((self#textureFactory)#load ((Obj.magic !gl11), (Obj.magic (java_call_static "GL10.get_gL_TEXTURE_2D" (Obj.repr ()))), 0, self, 0, true));
            ignore ((Obj.magic !gl11)#glTexParameteriv ((Obj.magic (java_call_static "GL10.get_gL_TEXTURE_2D" (Obj.repr ()))), (Obj.magic (java_call_static "GL11Ext.get_gL_TEXTURE_CROP_RECT_OES" (Obj.repr ()))), rectangle, 0));
            ignore ((Obj.magic !gl11)#glDisable ((Obj.magic (java_call_static "GL10.get_gL_TEXTURE_2D" (Obj.repr ())))));
            ignore ((OpenGLLogUtil.getInstance ())#logError ((Obj.magic !gl11), self))
        end
        end [@@warning "-7-20"]
    

    method draw : 'any1. 'any1 * int * int * int -> unit = fun (gl, (x : int), (y : int), (z : int)) ->
        let gl = Obj.repr gl in
        begin
        ignore ((Obj.magic gl)#glEnable ((Obj.magic (java_call_static "GL10.get_gL_TEXTURE_2D" (Obj.repr ())))));
        ignore ((Obj.magic gl)#glBindTexture ((Obj.magic (java_call_static "GL10.get_gL_TEXTURE_2D" (Obj.repr ()))), (self#openGLESImageProperties)#textureID));
        let gl11Ext : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic gl)))) in ();
        ignore ((Obj.magic !gl11Ext)#glDrawTexfOES ((float_of_int (x)), (float_of_int (((a - y)))), (float_of_int (z)), (java_to_float (Obj.repr ((self#getWidth ())))), (java_to_float (Obj.repr ((self#getHeight ()))))));
        ignore ((Obj.magic gl)#glDisable ((Obj.magic (java_call_static "GL10.get_gL_TEXTURE_2D" (Obj.repr ())))))
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        a <- 0;
        ();
        ();
        (* super(...) is the inherit clause *) ();
        (self#onDisplayChangeEvent ((DisplayInfoSingleton.getInstance ())#displayChangeEvent));
        rectangle <- [| 0; (self#getHeight ()); (self#getWidth ()); (-(self#getHeight ())) |]
      end
  end [@@warning "-20"]
let () = java_register_constructor "OpenGLESGL11ExtImage" (fun arguments -> Obj.repr (new openGLESGL11ExtImage (Obj.obj arguments)))


