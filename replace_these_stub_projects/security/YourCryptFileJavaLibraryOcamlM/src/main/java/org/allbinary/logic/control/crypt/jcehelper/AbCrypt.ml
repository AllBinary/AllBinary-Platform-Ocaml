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
(* package org.allbinary.logic.control.crypt.jcehelper *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class abCrypt ((_algorithm : string), (_key : string)) =
  object
    
    

    method encrypt ((_array : int array)) : int array =
        begin
        (Obj.magic 0)
        end
    

    method decrypt ((_array : int array)) : int array =
        begin
        (Obj.magic 0)
        end
    

    method mutilate ((_array : int array)) : int array =
        begin
        (Obj.magic 0)
        end

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "AbCrypt" (fun arguments -> Obj.repr (new abCrypt (Obj.obj arguments)))


