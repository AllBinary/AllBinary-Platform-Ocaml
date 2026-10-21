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
(* package org.allbinary.graphics.paint *)

open Allbinary_java [@@warning "-33"]
(* import javax.microedition.lcdui.Graphics *)

class locationPaintable () =
  object
    

    method paintXY : 'any1. 'any1 * int * int -> unit = fun (_graphics, (_x : int), (_y : int)) ->
        begin
        ()
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "LocationPaintable" (fun arguments -> Obj.repr (new locationPaintable (Obj.obj arguments)))

let instance = (new locationPaintable ())
let get_instance () = instance
let () = java_register_static "LocationPaintable.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "LocationPaintable.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


