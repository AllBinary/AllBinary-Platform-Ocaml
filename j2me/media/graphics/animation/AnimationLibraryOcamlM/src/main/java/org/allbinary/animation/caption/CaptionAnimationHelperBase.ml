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
(* package org.allbinary.animation.caption *)

open Allbinary_java [@@warning "-33"]
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.animation.Animation *)
(* import org.allbinary.graphics.color.BasicColor *)

class captionAnimationHelperBase () =
  object
    inherit Animation.animation ()
    

    method isShowing () : bool =
        begin
        false
        end [@@warning "-7"]
    

    method tick () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method update : 'any2. string * 'any2 -> unit = fun ((_message : string), _basicColor) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method paintXY : 'any1. 'any1 * int * int -> unit = fun (_graphics, (_x : int), (_y : int)) ->
        begin
        ()
        end [@@warning "-7-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "CaptionAnimationHelperBase" (fun arguments -> Obj.repr (new captionAnimationHelperBase (Obj.obj arguments)))

let iNSTANCE = (new captionAnimationHelperBase ())
let get_iNSTANCE () = iNSTANCE
let () = java_register_static "CaptionAnimationHelperBase.get_iNSTANCE" (fun _ -> Obj.repr (get_iNSTANCE ()))


