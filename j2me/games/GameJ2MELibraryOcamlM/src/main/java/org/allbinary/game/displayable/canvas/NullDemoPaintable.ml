(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.displayable.canvas *)

open Allbinary_java [@@warning "-33"]

class nullDemoPaintable () =
  object
    

    method showGamePaintable () : unit =
        begin
        ()
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "NullDemoPaintable" (fun arguments -> Obj.repr (new nullDemoPaintable (Obj.obj arguments)))

let nULL_DEMO_PAINTABLE = (new nullDemoPaintable ())
let get_nULL_DEMO_PAINTABLE () = nULL_DEMO_PAINTABLE
let () = java_register_static "NullDemoPaintable.get_nULL_DEMO_PAINTABLE" (fun _ -> Obj.repr (get_nULL_DEMO_PAINTABLE ()))


