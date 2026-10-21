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
(* package org.allbinary.image *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.khronos.opengles.GL *)
(* import javax.microedition.lcdui.Graphics *)
(* import javax.microedition.lcdui.Image *)

class preResourceImageUtil () =
  object
    

    method encapsulate : 'any1 'return. 'any1 -> 'return = fun (image) ->
        let image = Obj.repr image in
        begin
        (Obj.magic ((Obj.magic image)))
        end [@@warning "-20"]
    

    method updateGL : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_gl, _image) ->
        begin
        ()
        end [@@warning "-20"]
    

    method update : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_graphics, _image) ->
        begin
        ()
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "PreResourceImageUtil" (fun arguments -> Obj.repr (new preResourceImageUtil (Obj.obj arguments)))

let instance = (new preResourceImageUtil ())
let get_instance () = instance
let () = java_register_static "PreResourceImageUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "PreResourceImageUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


