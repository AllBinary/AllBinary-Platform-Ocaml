(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2006 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.layer.geological.resources *)

open Allbinary_java [@@warning "-33"]

let instance : GeologicalResourceInfoHudPaintable.geologicalResourceInfoHudPaintable = ((new GeologicalResourceInfoHudPaintable.geologicalResourceInfoHudPaintable ()) :> GeologicalResourceInfoHudPaintable.geologicalResourceInfoHudPaintable)
let get_instance () = instance
let () = java_register_static "GeologicalResourceInfoHudPaintableSingleton.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () : GeologicalResourceInfoHudPaintable.geologicalResourceInfoHudPaintable =
        begin
        (instance :> GeologicalResourceInfoHudPaintable.geologicalResourceInfoHudPaintable)
        end

let () = java_register_static "GeologicalResourceInfoHudPaintableSingleton.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class geologicalResourceInfoHudPaintableSingleton () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "GeologicalResourceInfoHudPaintableSingleton" (fun arguments -> Obj.repr (new geologicalResourceInfoHudPaintableSingleton (Obj.obj arguments)))


