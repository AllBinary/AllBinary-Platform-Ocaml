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
(* package org.allbinary.graphics.color *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Graphics *)

class basicColorSetUtil () =
  object
    
    

    method setBasicColorP : 'any1 'any2. 'any1 * 'any2 -> unit = fun (graphics, basicColor) ->
        let graphics = Obj.repr graphics in
        let basicColor = Obj.repr basicColor in
        begin
        ignore ((Obj.magic graphics)#setColor (((Obj.magic basicColor)#intValue ())))
        end [@@warning "-20"]
    

    method setBasicColorP3 : 'any1 'any2. 'any1 * 'any2 * int -> unit = fun (graphics, _basicColor, (value : int)) ->
        let graphics = Obj.repr graphics in
        begin
        ignore ((Obj.magic graphics)#setColor (value))
        end [@@warning "-20"]

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "BasicColorSetUtil" (fun arguments -> Obj.repr (new basicColorSetUtil (Obj.obj arguments)))

let instance = (new basicColorSetUtil ())
let get_instance () = instance
let () = java_register_static "BasicColorSetUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "BasicColorSetUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


