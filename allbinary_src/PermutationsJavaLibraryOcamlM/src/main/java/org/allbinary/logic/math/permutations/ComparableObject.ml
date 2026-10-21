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
(* package org.allbinary.logic.math.permutations *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.TsUtil *)

class comparableObject () =
  object (self)
    

    method compareTo : 'any1. 'any1 -> int = fun (anyType) ->
        let anyType = Obj.repr anyType in
        try
        begin
        if (((Obj.magic (java_call_static "TsUtil.getInstance" (Obj.repr ())))#hashCode (self)) < ((Obj.magic (java_call_static "TsUtil.getInstance" (Obj.repr ())))#hashCode (anyType))) then begin
            raise (Java_return (Obj.repr ((-1))))
        end else if (((Obj.magic (java_call_static "TsUtil.getInstance" (Obj.repr ())))#hashCode (self)) > ((Obj.magic (java_call_static "TsUtil.getInstance" (Obj.repr ())))#hashCode (anyType))) then begin
            raise (Java_return (Obj.repr (1)))
        end;
        0
        end
        with Java_return value -> Obj.obj value

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "ComparableObject" (fun arguments -> Obj.repr (new comparableObject (Obj.obj arguments)))


