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
(* package org.allbinary.graphics.threed *)

open Allbinary_java [@@warning "-33"]

class ratioProcessor () =
  object
    

    method setCustom ((_width : int), (_height : int), (_ratio : float)) : unit =
        begin
        ()
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "RatioProcessor" (fun arguments -> Obj.repr (new ratioProcessor (Obj.obj arguments)))


