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
(* package org.allbinary.graphics *)

open Allbinary_java [@@warning "-33"]

class screenEmptyListener () =
  object
    

    method onFullScreen ((_isFullScreen : bool)) : unit =
        begin
        ()
        end
    

    method onFullScreenDisplay () : unit =
        begin
        ()
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "ScreenEmptyListener" (fun arguments -> Obj.repr (new screenEmptyListener (Obj.obj arguments)))


