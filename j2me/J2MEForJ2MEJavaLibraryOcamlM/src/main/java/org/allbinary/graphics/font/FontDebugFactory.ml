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
(* package org.allbinary.graphics.font *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Font *)
(* import javax.microedition.lcdui.Graphics *)

class fontDebugFactory () =
  object
    

    method setFont : 'any1 'any2. 'any1 * 'any2 -> unit = fun (font, graphics) ->
        let font = Obj.repr font in
        let graphics = Obj.repr graphics in
        begin
        ignore ((Obj.magic graphics)#setFont ((Obj.magic font)))
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "FontDebugFactory" (fun arguments -> Obj.repr (new fontDebugFactory (Obj.obj arguments)))

let instance = (new fontDebugFactory ())
let get_instance () = instance
let () = java_register_static "FontDebugFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "FontDebugFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


