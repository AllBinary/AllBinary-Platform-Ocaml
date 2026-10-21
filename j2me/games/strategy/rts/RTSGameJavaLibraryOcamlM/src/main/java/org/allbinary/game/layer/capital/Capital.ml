(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2002 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.layer.capital *)

open Allbinary_java [@@warning "-33"]

class capital () =
  object
    val mutable value : int = 0
    method value = value
    method set_value value' = value <- value'
    
    

    method getTotalMoney () : int =
        begin
        value
        end
    

    method removeMoney ((points : int)) : unit =
        begin
        value <- (value - points)
        end
    

    method addMoney ((points : int)) : unit =
        begin
        value <- (value + points)
        end

    initializer
      begin
        value <- 0;
        ();
        ()
      end
  end
let () = java_register_constructor "Capital" (fun arguments -> Obj.repr (new capital (Obj.obj arguments)))


