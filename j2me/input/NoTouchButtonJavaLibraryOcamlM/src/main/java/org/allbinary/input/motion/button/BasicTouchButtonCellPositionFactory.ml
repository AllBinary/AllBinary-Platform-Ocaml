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
(* package org.allbinary.input.motion.button *)

open Allbinary_java [@@warning "-33"]


let init () : unit =
        begin
        ()
        end

let () = java_register_static "BasicTouchButtonCellPositionFactory.init" (fun arguments -> Obj.repr (init (Obj.obj arguments)))
class basicTouchButtonCellPositionFactory () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "BasicTouchButtonCellPositionFactory" (fun arguments -> Obj.repr (new basicTouchButtonCellPositionFactory (Obj.obj arguments)))


