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
(* package org.allbinary.util *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.communication.log.ForcedLogUtil *)

class immutableBasicArrayList ((name_arg : string), (size : int)) =
  object (self)
    inherit BasicArrayListS.basicArrayListS (size)
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    
    

    method add : 'any1. 'any1 -> bool = fun (_e) ->
        begin
        ignore (ForcedLogUtil.log (name, self));
        true
        end [@@warning "-7"]
    

    method addAt : 'any2. int * 'any2 -> unit = fun ((_index : int), _element) ->
        begin
        ignore (ForcedLogUtil.log (name, self))
        end [@@warning "-7"]
    

    method toString () : string =
        begin
        name
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        (* super(...) is the inherit clause *) ();
        name <- name_arg
      end
  end
let () = java_register_constructor "ImmutableBasicArrayList" (fun arguments -> Obj.repr (new immutableBasicArrayList (Obj.obj arguments)))


