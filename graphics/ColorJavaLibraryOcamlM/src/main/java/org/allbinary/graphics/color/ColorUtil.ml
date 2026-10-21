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
(* package org.allbinary.graphics.color *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.awt *)

class colorUtil () =
  object
    

    method isGreyishOrWhiteLike : 'any1. 'any1 -> bool = fun (color) ->
        let color = Obj.repr color in
        try
        begin
        if ((((abs ((((Obj.magic color)#getRed ()) - ((Obj.magic color)#getGreen ())))) > 20) || ((abs ((((Obj.magic color)#getRed ()) - ((Obj.magic color)#getBlue ())))) > 20)) || ((abs ((((Obj.magic color)#getGreen ()) - ((Obj.magic color)#getBlue ())))) > 20)) then begin
            raise (Java_return (Obj.repr (false)))
        end;
        true
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method isDark : 'any1. 'any1 -> bool = fun (color) ->
        let color = Obj.repr color in
        try
        begin
        if (((((Obj.magic color)#getRed ()) < 0x77) && (((Obj.magic color)#getRed ()) < 0x77)) && (((Obj.magic color)#getRed ()) < 0x77)) then begin
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "ColorUtil" (fun arguments -> Obj.repr (new colorUtil (Obj.obj arguments)))

let instance = (new colorUtil ())
let get_instance () = instance
let () = java_register_static "ColorUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ColorUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


