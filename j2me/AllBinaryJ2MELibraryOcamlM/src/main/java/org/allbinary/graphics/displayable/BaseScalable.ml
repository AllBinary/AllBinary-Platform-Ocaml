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
(* package org.allbinary.graphics.displayable *)

open Allbinary_java [@@warning "-33"]

class baseScalable () =
  object
    

    method getRatio ((_ratio : float)) : float =
        begin
        1.
        end
    

    method getLeft ((_xOffset : int)) : int =
        begin
        (-1)
        end
    

    method getTop ((_yOffset : int)) : int =
        begin
        (-1)
        end
    

    method scale ((_ratio : float)) : unit =
        begin
        ()
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "BaseScalable" (fun arguments -> Obj.repr (new baseScalable (Obj.obj arguments)))


