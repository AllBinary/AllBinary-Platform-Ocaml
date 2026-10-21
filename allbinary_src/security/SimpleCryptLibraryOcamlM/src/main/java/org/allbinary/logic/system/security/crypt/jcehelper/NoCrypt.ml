(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.logic.system.security.crypt.jcehelper *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.init.crypt.jcehelper.CryptInterface *)

class noCrypt () =
  object
    

    method encrypt ((array : int array)) : int array =
        begin
        array
        end
    

    method decrypt ((array : int array)) : int array =
        begin
        array
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "NoCrypt" (fun arguments -> Obj.repr (new noCrypt (Obj.obj arguments)))


