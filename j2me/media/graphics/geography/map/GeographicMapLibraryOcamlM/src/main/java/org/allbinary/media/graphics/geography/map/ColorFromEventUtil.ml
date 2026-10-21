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
(* package org.allbinary.media.graphics.geography.map *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.displayable.canvas.AllBinaryGameCanvas *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.color.BasicColorFactory *)

class colorFromEventUtil () =
  object
    val mutable yELLOW : BasicColor.basicColor = (Obj.magic 0)
    method yELLOW = yELLOW
    method set_yELLOW value' = yELLOW <- value'
    val mutable cOLOR_INT : int = 0
    method cOLOR_INT = cOLOR_INT
    method set_cOLOR_INT value' = cOLOR_INT <- value'
    

    method getForegroundColor : 'any1. 'any1 -> BasicColor.basicColor = fun (gameCanvasInterface) ->
        let gameCanvasInterface = Obj.repr gameCanvasInterface in
        begin
        let color : BasicColor.basicColor ref = ref ((yELLOW :> BasicColor.basicColor)) in ();
        let geographicMapCompositeInterface : GeographicMapCompositeInterface.geographicMapCompositeInterface ref = ref (((Obj.magic ((Obj.magic gameCanvasInterface)#getLayerManager ())) :> GeographicMapCompositeInterface.geographicMapCompositeInterface)) in ();
        let geographicMapInterface : BasicGeographicMap.basicGeographicMap ref = ref (((!geographicMapCompositeInterface#getGeographicMapInterface ()).(0) :> BasicGeographicMap.basicGeographicMap)) in ();
        if (!geographicMapInterface != (Obj.magic 0)) then begin
            let foregroundBasicColor : BasicColor.basicColor ref = ref (((!geographicMapInterface#getForegroundBasicColor ()) :> BasicColor.basicColor)) in ();
            color := !foregroundBasicColor
        end;
        (!color :> BasicColor.basicColor)
        end [@@warning "-20"]

    initializer
      begin
        yELLOW <- ((BasicColorFactory.getInstance ())#yELLOW :> BasicColor.basicColor);
        cOLOR_INT <- (yELLOW#intValue ());
        ()
      end
  end
let () = java_register_constructor "ColorFromEventUtil" (fun arguments -> Obj.repr (new colorFromEventUtil (Obj.obj arguments)))

let instance = (new colorFromEventUtil ())
let get_instance () = instance
let () = java_register_static "ColorFromEventUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ColorFromEventUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


