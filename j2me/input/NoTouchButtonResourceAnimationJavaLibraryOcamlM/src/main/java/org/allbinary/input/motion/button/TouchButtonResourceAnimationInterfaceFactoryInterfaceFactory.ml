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
(* import org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory *)
(* import org.allbinary.game.configuration.feature.Features *)
(* import org.allbinary.game.resource.ResourceLoadingLevelFactory *)
(* import org.allbinary.graphics.opengles.OpenGLFeatureFactory *)
(* import org.allbinary.image.ImageCache *)
(* import org.allbinary.image.ImageCacheFactory *)
(* import org.allbinary.logic.StdUtil *)

class touchButtonResourceAnimationInterfaceFactoryInterfaceFactory ((name : string)) =
  object (self)
    inherit BaseResourceAnimationInterfaceFactoryInterfaceFactory.baseResourceAnimationInterfaceFactoryInterfaceFactory (name, ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashtable ()), ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashtable ()), ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashtable ())) as super
    
    

    method init ((level : int)) : unit =
        begin
        (self#initImageCache ((ImageCacheFactory.getInstance ()), level))
        end [@@warning "-7"]
    

    method initImageCache : 'any1. 'any1 * int -> unit = fun (_imageCache, (level : int)) ->
        try
        begin
        if (self#isInitialized ()) then begin
            raise (Java_return (Obj.repr (())))
        end;
        ignore (super#init (level))
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method isLoadingLevel ((level : int)) : bool =
        try
        begin
        let resourceLoadingLevelFactory : ResourceLoadingLevelFactory.resourceLoadingLevelFactory ref = ref (((ResourceLoadingLevelFactory.getInstance ()) :> ResourceLoadingLevelFactory.resourceLoadingLevelFactory)) in ();
        if (level = (!resourceLoadingLevelFactory#lOAD_TOUCH#getLevel ())) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr ((super#isLoadingLevel (level)))))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method isFeature () : bool =
        try
        begin
        if (not ((Features.getInstance ())#isDefault ((OpenGLFeatureFactory.getInstance ())#oPENGL))) then begin
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
let () = java_register_constructor "TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory" (fun arguments -> Obj.repr (new touchButtonResourceAnimationInterfaceFactoryInterfaceFactory (Obj.obj arguments)))

let createFactory () =
        begin
        (new touchButtonResourceAnimationInterfaceFactoryInterfaceFactory ("TouchButton Animations"))
        end
let () = java_register_static "TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory.createFactory" (fun arguments -> Obj.repr (createFactory (Obj.obj arguments)))


