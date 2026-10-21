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
(* package org.allbinary.image.opengles *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)

class openGLImageSpecificFactory () =
  object (self)
    val mutable imageFactory : Obj.t = Obj.repr 0
    method imageFactory : 'r. 'r = Obj.magic imageFactory
    method set_imageFactory : 'v. 'v -> unit = fun value' -> imageFactory <- Obj.repr value'
    val mutable updating : bool = false
    method updating = updating
    method set_updating value' = updating <- value'
    

    method setImageFactory : 'any1. 'any1 -> unit = fun (imageFactory_arg) ->
        let imageFactory_arg = Obj.repr imageFactory_arg in
        begin
        imageFactory <- Obj.repr ((Obj.magic imageFactory_arg));
        ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("Selected Image Factory: "))#append (((StringUtil.getInstance ())#toString ((Obj.magic imageFactory))))))), self, "setImageFactory"))))
        end [@@warning "-20"]
    

    method getImageFactory : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic imageFactory)))
        end

    initializer
      begin
        imageFactory <- (Obj.repr (Obj.magic (java_call_static "OpenGLImageFactory.get_nULL_OPENGL_IMAGE_FACTORY" (Obj.repr ()))));
        updating <- false;
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "OpenGLImageSpecificFactory" (fun arguments -> Obj.repr (new openGLImageSpecificFactory (Obj.obj arguments)))

let instance = (new openGLImageSpecificFactory ())
let get_instance () = instance
let () = java_register_static "OpenGLImageSpecificFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "OpenGLImageSpecificFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


