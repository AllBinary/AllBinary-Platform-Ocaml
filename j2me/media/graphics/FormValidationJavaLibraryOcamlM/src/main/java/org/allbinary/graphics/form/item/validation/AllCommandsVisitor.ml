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
(* package org.allbinary.graphics.form.item.validation *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.java.bool.BooleanFactory *)
(* import org.allbinary.logic.util.visitor.Visitor *)

class allCommandsVisitor () =
  object
    inherit Visitor.visitor ()
    
    

    method visit : 'any1. 'any1 -> Obj.t = fun (_anyType) ->
        begin
        (Obj.repr ((BooleanFactory.getInstance ())#tRUE))
        end [@@warning "-7"]

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "AllCommandsVisitor" (fun arguments -> Obj.repr (new allCommandsVisitor (Obj.obj arguments)))


