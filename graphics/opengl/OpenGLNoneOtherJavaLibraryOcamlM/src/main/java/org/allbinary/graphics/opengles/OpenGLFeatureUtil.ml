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
(* package org.allbinary.graphics.opengles *)

open Allbinary_java [@@warning "-33"]

class openGLFeatureUtil () =
  object
    
    

    method isAnyThreed () : bool =
        begin
        false
        end

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "OpenGLFeatureUtil" (fun arguments -> Obj.repr (new openGLFeatureUtil (Obj.obj arguments)))

let instance = (new openGLFeatureUtil ())
let get_instance () = instance
let () = java_register_static "OpenGLFeatureUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "OpenGLFeatureUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


