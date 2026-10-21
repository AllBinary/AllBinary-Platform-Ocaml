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
(* package org.allbinary.game.input *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Canvas *)

class gameKeyUtil () =
  object
    

    method isDirectionKey ((key : int)) : bool =
        try
        begin
        if ((((key = (Obj.magic (java_call_static "Canvas.get_uP" (Obj.repr ())))) || (key = (Obj.magic (java_call_static "Canvas.get_dOWN" (Obj.repr ()))))) || (key = (Obj.magic (java_call_static "Canvas.get_lEFT" (Obj.repr ()))))) || (key = (Obj.magic (java_call_static "Canvas.get_rIGHT" (Obj.repr ()))))) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "GameKeyUtil" (fun arguments -> Obj.repr (new gameKeyUtil (Obj.obj arguments)))

let instance = (new gameKeyUtil ())
let get_instance () = instance
let () = java_register_static "GameKeyUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "GameKeyUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


