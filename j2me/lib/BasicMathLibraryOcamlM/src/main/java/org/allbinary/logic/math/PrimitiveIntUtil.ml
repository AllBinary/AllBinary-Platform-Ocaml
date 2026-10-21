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
(* package org.allbinary.logic.math *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.NullUtil *)


let getArrayInstance () : int array =
        begin
        (NullUtil.getInstance ())#nULL_INT_ARRAY
        end

and getTwoDimensionalArrayInstance () : int array array =
        begin
        (NullUtil.getInstance ())#nULL_INT_ARRAY_ARRAY
        end

let () = java_register_static "PrimitiveIntUtil.getArrayInstance" (fun arguments -> Obj.repr (getArrayInstance (Obj.obj arguments)))
let () = java_register_static "PrimitiveIntUtil.getTwoDimensionalArrayInstance" (fun arguments -> Obj.repr (getTwoDimensionalArrayInstance (Obj.obj arguments)))
class primitiveIntUtil () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "PrimitiveIntUtil" (fun arguments -> Obj.repr (new primitiveIntUtil (Obj.obj arguments)))


