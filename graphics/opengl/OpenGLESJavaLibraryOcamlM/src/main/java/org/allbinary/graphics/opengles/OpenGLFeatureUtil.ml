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
[@@@warning "-20"]
(* import org.allbinary.game.configuration.feature.Features *)

class openGLFeatureUtil () =
  object
    val mutable anyThreed : bool = false
    method anyThreed = anyThreed
    method set_anyThreed value' = anyThreed <- value'
    
    

    method isAnyThreed () : bool =
        begin
        anyThreed
        end

    initializer
      begin
        ();
        ();
        let openGLConfiguration : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "OpenGLConfiguration.getInstance" (Obj.repr ()))))) in ();
        let features : Features.features ref = ref (((Features.getInstance ()) :> Features.features)) in ();
        let openGLFeatureFactory : OpenGLFeatureFactory.openGLFeatureFactory ref = ref (((OpenGLFeatureFactory.getInstance ()) :> OpenGLFeatureFactory.openGLFeatureFactory)) in ();
        anyThreed <- (((Obj.magic !openGLConfiguration)#isOpenGL ()) && (((!features#isFeature (!openGLFeatureFactory#oPENGL_2D_AND_3D)) || (!features#isFeature (!openGLFeatureFactory#oPENGL_3D)))))
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


