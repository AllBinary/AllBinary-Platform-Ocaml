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
(* package org.allbinary.game.displayable.canvas *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Font *)
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.game.configuration.feature.Features *)
(* import org.allbinary.graphics.PointFactory *)
(* import org.allbinary.graphics.Rectangle *)
(* import org.allbinary.graphics.RectangleFactory *)
(* import org.allbinary.graphics.displayable.DisplayInfoSingleton *)
(* import org.allbinary.graphics.font.MyFontProcessor *)
(* import org.allbinary.graphics.opengles.OpenGLFeatureFactory *)
(* import org.allbinary.graphics.threed.SWTJOGLProcessor *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)

class myFormUtil () =
  object
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable popupMenuRectangle : Obj.t = Obj.repr 0
    method popupMenuRectangle : 'r. 'r = Obj.magic popupMenuRectangle
    method set_popupMenuRectangle : 'v. 'v -> unit = fun value' -> popupMenuRectangle <- Obj.repr value'
    

    method updateMeasurement : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        let font : Obj.t ref = ref ((Obj.repr ((Obj.magic graphics)#getFont ()))) in ();
        let displayInfo : DisplayInfoSingleton.displayInfoSingleton ref = ref (((DisplayInfoSingleton.getInstance ()) :> DisplayInfoSingleton.displayInfoSingleton)) in ();
        let features : Features.features ref = ref (((Features.getInstance ()) :> Features.features)) in ();
        let isOpenGL : bool ref = ref ((!features#isDefault ((OpenGLFeatureFactory.getInstance ())#oPENGL))) in ();
        let tOTAL_CHAR_WIDTH : int ref = ref ((if (((Obj.magic (java_call_static "SWTJOGLProcessor.getInstance" (Obj.repr ())))#isJOGL ()) && !isOpenGL) then 2 else 3)) in ();
        let width : int ref = ref ((MyFontProcessor.defaultStringWidth ((Obj.magic !font), !tOTAL_CHAR_WIDTH))) in ();
        let pointFactory : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ()))))) in ();
        if ((!displayInfo#getLastHeight ()) < 320) then begin
            popupMenuRectangle <- Obj.repr ((Obj.obj (java_new "Rectangle" (Obj.repr (((Obj.magic !pointFactory)#createXY (0, 25)), !width, (((((Obj.magic !font)#getHeight ()) * 4)) + 2))))))
        end else begin
            popupMenuRectangle <- Obj.repr ((Obj.obj (java_new "Rectangle" (Obj.repr (((Obj.magic !pointFactory)#createXY (0, ((!displayInfo#getLastHalfHeight ()) - 70))), !width, ((((Obj.magic !font)#getHeight ()) * 5)))))))
        end
        end [@@warning "-20"]
    

    method getPopupMenuRectangle : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic popupMenuRectangle)))
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        popupMenuRectangle <- (Obj.repr (RectangleFactory.get_sINGLETON ()));
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "MyFormUtil" (fun arguments -> Obj.repr (new myFormUtil (Obj.obj arguments)))

let instance = (new myFormUtil ())
let get_instance () = instance
let () = java_register_static "MyFormUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "MyFormUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


