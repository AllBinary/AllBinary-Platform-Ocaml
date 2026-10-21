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
(* package org.allbinary.input *)

open Allbinary_java [@@warning "-33"]

class touchJ2ME () =
  object
    
    

    method pointerDragged ((_x : int), (_y : int)) : unit =
        begin
        ()
        end
    

    method pointerPressed ((_x : int), (_y : int)) : unit =
        begin
        ()
        end
    

    method pointerReleased ((_x : int), (_y : int)) : unit =
        begin
        ()
        end

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "TouchJ2ME" (fun arguments -> Obj.repr (new touchJ2ME (Obj.obj arguments)))


