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
(* import org.allbinary.game.layer.resources.GameGraphicsResourceUtil *)
(* import org.allbinary.AndroidUtil *)
(* import org.allbinary.game.configuration.feature.GraphicsFeatureFactory *)

class unit1DecalGameResources () =
  object
    inherit BasicGameResources.basicGameResources () as super
    
    

    method append ((rOOT : string), (sizeString : string)) : unit =
        begin
        ignore (super#append (rOOT, sizeString))
        end [@@warning "-7"]
    

    method getString () : string =
        try
        begin
        if (Obj.magic (java_call_static "AndroidUtil.isAndroid" (Obj.repr ()))) then begin
            raise (Java_return (Obj.repr (((GameGraphicsResourceUtil.getInstance ())#getStringForFeature ((GraphicsFeatureFactory.getInstance ())#sPRITE_QUARTER_ROTATION_GRAPHICS)))))
        end else begin
            raise (Java_return (Obj.repr ((super#getString ()))))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]

    initializer
      begin
        ();
        let rOOT : string ref = ref ("/unit_decal") in ();
        let sMALL : string ref = ref ("_20_by_20.png") in ();
        let mEDIUM : string ref = ref (!sMALL) in ();
        let sIZE_FOUR : string ref = ref (!sMALL) in ();
        let sIZE_FIVE : string ref = ref (!sMALL) in ();
        let sIZE_SIX : string ref = ref (!sMALL) in ();
        let sIZE : string array ref = ref ([| !sMALL; !mEDIUM; !sIZE_FOUR; !sIZE_FIVE; !sIZE_SIX |]) in ();
        ignore (super#init (!rOOT, !sIZE))
      end
  end
let () = java_register_constructor "Unit1DecalGameResources" (fun arguments -> Obj.repr (new unit1DecalGameResources (Obj.obj arguments)))

let instance = (new unit1DecalGameResources ())
let get_instance () = instance
let () = java_register_static "Unit1DecalGameResources.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () : BasicGameResources.basicGameResources =
        begin
        (instance :> BasicGameResources.basicGameResources)
        end
let () = java_register_static "Unit1DecalGameResources.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


