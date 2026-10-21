(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2026 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.animation *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class shapeTypeFactory () =
  object
    val mutable kEY_LINE : string = ""
    method kEY_LINE = kEY_LINE
    method set_kEY_LINE value' = kEY_LINE <- value'
    val mutable kEY_CIRCLE : string = ""
    method kEY_CIRCLE = kEY_CIRCLE
    method set_kEY_CIRCLE value' = kEY_CIRCLE <- value'
    val mutable kEY_RECTANGLE : string = ""
    method kEY_RECTANGLE = kEY_RECTANGLE
    method set_kEY_RECTANGLE value' = kEY_RECTANGLE <- value'
    val mutable kEY_RECT : string = ""
    method kEY_RECT = kEY_RECT
    method set_kEY_RECT value' = kEY_RECT <- value'
    val mutable lINE : ShapeType.shapeType = (Obj.magic 0)
    method lINE = lINE
    method set_lINE value' = lINE <- value'
    val mutable cIRCLE : ShapeType.shapeType = (Obj.magic 0)
    method cIRCLE = cIRCLE
    method set_cIRCLE value' = cIRCLE <- value'
    val mutable rECTANGLE : ShapeType.shapeType = (Obj.magic 0)
    method rECTANGLE = rECTANGLE
    method set_rECTANGLE value' = rECTANGLE <- value'

    initializer
      begin
        kEY_LINE <- "line";
        kEY_CIRCLE <- "circle";
        kEY_RECTANGLE <- "rectangle";
        kEY_RECT <- "rect";
        lINE <- ((new ShapeType.shapeType (kEY_LINE)) :> ShapeType.shapeType);
        cIRCLE <- ((new ShapeType.shapeType (kEY_CIRCLE)) :> ShapeType.shapeType);
        rECTANGLE <- ((new ShapeType.shapeType (kEY_RECTANGLE)) :> ShapeType.shapeType);
        ()
      end
  end
let () = java_register_constructor "ShapeTypeFactory" (fun arguments -> Obj.repr (new shapeTypeFactory (Obj.obj arguments)))

let instance = (new shapeTypeFactory ())
let get_instance () = instance
let () = java_register_static "ShapeTypeFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ShapeTypeFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


