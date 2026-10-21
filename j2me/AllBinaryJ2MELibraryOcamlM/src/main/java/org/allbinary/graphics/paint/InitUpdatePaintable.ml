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

class initUpdatePaintable () =
  object
    inherit Paintable.paintable ()
    
    

    method init () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method update () : unit =
        begin
        ()
        end [@@warning "-7"]

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "InitUpdatePaintable" (fun arguments -> Obj.repr (new initUpdatePaintable (Obj.obj arguments)))


