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
(* package org.allbinary.logic.system.hardware.components.interfaces *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.string.StringUtil *)

class noHardwareComponent () =
  object (self)
    

    method compareTo : 'any1. 'any1 -> bool = fun (componentInterface) ->
        let componentInterface = Obj.repr componentInterface in
        try
        begin
        if ((Obj.repr self) == (Obj.repr (Obj.magic componentInterface))) then begin
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method toString () : string =
        begin
        (StringUtil.getInstance ())#nULL_STRING
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "NoHardwareComponent" (fun arguments -> Obj.repr (new noHardwareComponent (Obj.obj arguments)))

let instance = (new noHardwareComponent ())
let get_instance () = instance
let () = java_register_static "NoHardwareComponent.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "NoHardwareComponent.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


