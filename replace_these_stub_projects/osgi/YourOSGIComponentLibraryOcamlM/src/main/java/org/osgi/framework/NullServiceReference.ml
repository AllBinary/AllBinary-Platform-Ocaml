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
(* package org.osgi.framework *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.string.StringUtil *)

class nullServiceReference () =
  object
    

    method getProperty ((_key : string)) : Obj.t =
        begin
        (Obj.repr ((NullUtil.getInstance ())#nULL_OBJECT))
        end
    

    method getPropertyKeys () : string array =
        begin
        ((StringUtil.getInstance ())#getArrayInstance ())
        end
    

    method compareTo : 'any1. 'any1 -> int = fun (_o) ->
        begin
        raise (Failure ("RuntimeException"))
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "NullServiceReference" (fun arguments -> Obj.repr (new nullServiceReference (Obj.obj arguments)))


