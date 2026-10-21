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
(* package org.allbinary.input.motion.button *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.configuration.feature.Features *)
(* import org.allbinary.graphics.opengles.OpenGLFeatureFactory *)
(* import org.allbinary.image.opengles.OpenGLImageCacheFactory *)

class touchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory () =
  object
    inherit TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory.touchButtonResourceAnimationInterfaceFactoryInterfaceFactory ("OpenGL TouchButton Animations") as super
    
    

    method init ((level : int)) : unit =
        begin
        ignore (super#initImageCache ((Obj.magic (java_call_static "OpenGLImageCacheFactory.getInstance" (Obj.repr ()))), level))
        end [@@warning "-7"]
    

    method isFeature () : bool =
        try
        begin
        if ((Features.getInstance ())#isDefault ((OpenGLFeatureFactory.getInstance ())#oPENGL)) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory" (fun arguments -> Obj.repr (new touchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory (Obj.obj arguments)))


