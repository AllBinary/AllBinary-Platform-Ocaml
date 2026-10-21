(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2006 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.layer.unit *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.layer.resources.BasicGameResources *)
(* import org.allbinary.animation.AnimationInterfaceFactoryInterface *)
(* import org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory *)
(* import org.allbinary.animation.NullRotationAnimationFactory *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.color.BasicColorFactory *)

class decalAnimationInterfaceFactory () =
  object
    

    method getAnimationFactory : 'any1 'any2. 'any1 * 'any2 -> AnimationInterfaceFactoryInterface.animationInterfaceFactoryInterface = fun (basicGameResources, basicColor) ->
        let basicGameResources = Obj.repr basicGameResources in
        let basicColor = Obj.repr basicColor in
        begin
        let animationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface.animationInterfaceFactoryInterface ref = ref (((Obj.magic 0) :> AnimationInterfaceFactoryInterface.animationInterfaceFactoryInterface)) in ();
        if ((Obj.repr (Obj.magic basicColor)) == (Obj.repr (BasicColorFactory.getInstance ())#rED)) then begin
            animationInterfaceFactoryInterface := ((FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance ())#get ((Obj.magic basicGameResources)#rESOURCE))
        end else begin
            animationInterfaceFactoryInterface := (NullRotationAnimationFactory.getFactoryInstance ())
        end;
        (!animationInterfaceFactoryInterface :> AnimationInterfaceFactoryInterface.animationInterfaceFactoryInterface)
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "DecalAnimationInterfaceFactory" (fun arguments -> Obj.repr (new decalAnimationInterfaceFactory (Obj.obj arguments)))

let instance = (new decalAnimationInterfaceFactory ())
let get_instance () = instance
let () = java_register_static "DecalAnimationInterfaceFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "DecalAnimationInterfaceFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


