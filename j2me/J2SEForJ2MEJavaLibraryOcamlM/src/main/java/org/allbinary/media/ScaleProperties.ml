(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.media *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonLabels *)

class scaleProperties () =
  object
    val mutable scaleX : float = 0.0
    method scaleX = scaleX
    method set_scaleX value' = scaleX <- value'
    val mutable scaleY : float = 0.0
    method scaleY = scaleY
    method set_scaleY value' = scaleY <- value'
    val mutable scaleWidth : int = 0
    method scaleWidth = scaleWidth
    method set_scaleWidth value' = scaleWidth <- value'
    val mutable scaleHeight : int = 0
    method scaleHeight = scaleHeight
    method set_scaleHeight value' = scaleHeight <- value'
    val mutable shouldScale : bool = false
    method shouldScale = shouldScale
    method set_shouldScale value' = shouldScale <- value'
    

    method toString () : string =
        begin
        (java_string_of (Obj.repr (((((((((((new StringMaker.stringMaker ())#append ((CommonLabels.getInstance ())#cOLON_SEP))#appendboolean (shouldScale))#append ("scaleX: "))#appendfloat (scaleX))#append ("scaleY: "))#appendfloat (scaleY))#append ("scaleWidth: "))#appendint (scaleWidth))#append ("scaleHeight: "))#appendint (scaleHeight))))
        end

    initializer
      begin
        scaleX <- 0.0;
        scaleY <- 0.0;
        scaleWidth <- 0;
        scaleHeight <- 0;
        shouldScale <- false;
        ()
      end
  end
let () = java_register_constructor "ScaleProperties" (fun arguments -> Obj.repr (new scaleProperties (Obj.obj arguments)))

let instance = (new scaleProperties ())
let get_instance () = instance
let () = java_register_static "ScaleProperties.get_instance" (fun _ -> Obj.repr (get_instance ()))


