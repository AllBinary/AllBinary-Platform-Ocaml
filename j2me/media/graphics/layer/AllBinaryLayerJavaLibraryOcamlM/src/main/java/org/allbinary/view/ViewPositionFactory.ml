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
(* package org.allbinary.view *)

open Allbinary_java [@@warning "-33"]

class viewPositionFactory () =
  object
    

    method getInstance () : ViewPositionBase.viewPositionBase =
        begin
        ((ViewPosition.getInstanceD ()) :> ViewPositionBase.viewPositionBase)
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "ViewPositionFactory" (fun arguments -> Obj.repr (new viewPositionFactory (Obj.obj arguments)))


