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
(* package org.allbinary.graphics *)

open Allbinary_java [@@warning "-33"]

class rendererStateFactory () =
  object
    val mutable loaded : bool = false
    method loaded = loaded
    method set_loaded value' = loaded <- value'
    val mutable surfaceChanged : bool = false
    method surfaceChanged = surfaceChanged
    method set_surfaceChanged value' = surfaceChanged <- value'
    

    method setLoaded ((loaded_arg : bool)) : unit =
        begin
        loaded <- loaded_arg
        end
    

    method isLoaded () : bool =
        begin
        loaded
        end
    

    method setSurfaceChanged ((initialized : bool)) : unit =
        begin
        surfaceChanged <- initialized
        end
    

    method isSurfaceChanged () : bool =
        begin
        surfaceChanged
        end

    initializer
      begin
        loaded <- false;
        surfaceChanged <- false;
        ()
      end
  end
let () = java_register_constructor "RendererStateFactory" (fun arguments -> Obj.repr (new rendererStateFactory (Obj.obj arguments)))

let instance = (new rendererStateFactory ())
let get_instance () = instance
let () = java_register_static "RendererStateFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "RendererStateFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


