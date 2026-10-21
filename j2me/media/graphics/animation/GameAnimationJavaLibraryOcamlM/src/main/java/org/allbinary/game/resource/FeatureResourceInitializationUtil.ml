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
(* package org.allbinary.game.resource *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)

class featureResourceInitializationUtil () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    

    method init ((level : int)) : unit =
        begin
        let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        ignore ((Obj.magic logUtil)#putF (!commonStrings#sTART, self, !commonStrings#iNIT));
        let featuredResourceFactory : FeaturedResourceFactory.featuredResourceFactory ref = ref (((FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance ()) :> FeaturedResourceFactory.featuredResourceFactory)) in ();
        ignore (!featuredResourceFactory#init (level));
        ignore ((FeaturedResourceRelativeRelationshipFactory.getInstance ())#init (level))
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "FeatureResourceInitializationUtil" (fun arguments -> Obj.repr (new featureResourceInitializationUtil (Obj.obj arguments)))

let instance = (new featureResourceInitializationUtil ())
let get_instance () = instance
let () = java_register_static "FeatureResourceInitializationUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "FeatureResourceInitializationUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


