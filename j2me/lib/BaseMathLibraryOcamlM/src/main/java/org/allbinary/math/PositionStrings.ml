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
(* package org.allbinary.math *)

open Allbinary_java [@@warning "-33"]
(* import jsinterop.annotations.JsType *)
(* import jsinterop.annotations.JsMethod *)
(* import jsinterop.annotations.JsProperty *)

class positionStrings () =
  object
    val mutable x : string = ""
    method x = x
    method set_x value' = x <- value'
    val mutable y : string = ""
    method y = y
    method set_y value' = y <- value'
    val mutable x_LABEL : string = ""
    method x_LABEL = x_LABEL
    method set_x_LABEL value' = x_LABEL <- value'
    val mutable y_LABEL : string = ""
    method y_LABEL = y_LABEL
    method set_y_LABEL value' = y_LABEL <- value'
    val mutable z_LABEL : string = ""
    method z_LABEL = z_LABEL
    method set_z_LABEL value' = z_LABEL <- value'
    val mutable dX_LABEL : string = ""
    method dX_LABEL = dX_LABEL
    method set_dX_LABEL value' = dX_LABEL <- value'
    val mutable dY_LABEL : string = ""
    method dY_LABEL = dY_LABEL
    method set_dY_LABEL value' = dY_LABEL <- value'
    val mutable dZ_LABEL : string = ""
    method dZ_LABEL = dZ_LABEL
    method set_dZ_LABEL value' = dZ_LABEL <- value'

    initializer
      begin
        x <- "x";
        y <- "y";
        x_LABEL <- "x: ";
        y_LABEL <- "y: ";
        z_LABEL <- "z: ";
        dX_LABEL <- "dx: ";
        dY_LABEL <- "dy: ";
        dZ_LABEL <- "dz: ";
        ()
      end
  end
let () = java_register_constructor "PositionStrings" (fun arguments -> Obj.repr (new positionStrings (Obj.obj arguments)))

let instance = (new positionStrings ())
let get_instance () = instance
let () = java_register_static "PositionStrings.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "PositionStrings.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


