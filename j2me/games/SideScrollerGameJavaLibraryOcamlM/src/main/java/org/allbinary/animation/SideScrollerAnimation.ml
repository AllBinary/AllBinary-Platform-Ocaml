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
(* package org.allbinary.animation *)

open Allbinary_java [@@warning "-33"]

class sideScrollerAnimation () =
  object
    
    

    method jump () : unit =
        begin
        ()
        end
    

    method walk () : unit =
        begin
        ()
        end
    

    method run () : unit =
        begin
        ()
        end
    

    method crouch () : unit =
        begin
        ()
        end

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "SideScrollerAnimation" (fun arguments -> Obj.repr (new sideScrollerAnimation (Obj.obj arguments)))


