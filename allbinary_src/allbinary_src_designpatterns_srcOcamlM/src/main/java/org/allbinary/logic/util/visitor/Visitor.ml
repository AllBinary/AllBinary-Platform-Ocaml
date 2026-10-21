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
(* package org.allbinary.logic.util.visitor *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.NullUtil *)

class visitor () =
  object
    val mutable nullUtil : NullUtil.nullUtil = (Obj.magic 0)
    method nullUtil = nullUtil
    method set_nullUtil value' = nullUtil <- value'
    

    method visit : 'any1. 'any1 -> Obj.t = fun (_anyType) ->
        begin
        (Obj.repr (nullUtil#nULL_OBJECT))
        end

    initializer
      begin
        nullUtil <- ((NullUtil.getInstance ()) :> NullUtil.nullUtil);
        ()
      end
  end
let () = java_register_constructor "Visitor" (fun arguments -> Obj.repr (new visitor (Obj.obj arguments)))

let instance = (new visitor ())
let get_instance () = instance
let () = java_register_static "Visitor.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "Visitor.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


