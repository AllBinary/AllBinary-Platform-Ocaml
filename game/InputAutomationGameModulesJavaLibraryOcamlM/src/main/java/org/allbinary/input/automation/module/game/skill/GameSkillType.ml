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
(* package org.allbinary.input.automation.module.game.skill *)

open Allbinary_java [@@warning "-33"]

class gameSkillType ((name_arg : string)) =
  object (self)
    val mutable sPELL_GAME_SKILL_TYPE : string = ""
    method sPELL_GAME_SKILL_TYPE = sPELL_GAME_SKILL_TYPE
    method set_sPELL_GAME_SKILL_TYPE value' = sPELL_GAME_SKILL_TYPE <- value'
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    
    

    method getName () : string =
        begin
        name
        end
    

    method setName ((name_arg : string)) : unit =
        begin
        name <- name_arg
        end
    

    method toString () : string =
        begin
        (sPELL_GAME_SKILL_TYPE ^ (self#getName ()))
        end

    initializer
      begin
        sPELL_GAME_SKILL_TYPE <- "SpellGameSkillType: ";
        name <- "";
        ();
        (self#setName (name_arg))
      end
  end
let () = java_register_constructor "GameSkillType" (fun arguments -> Obj.repr (new gameSkillType (Obj.obj arguments)))

let mANA = ref ((new gameSkillType ("Mana")))
let get_mANA () = !mANA
let set_mANA value' = mANA := value'
let () = java_register_static "GameSkillType.get_mANA" (fun _ -> Obj.repr (get_mANA ()))

let rEPLENISH = ref ((new gameSkillType ("Replenish")))
let get_rEPLENISH () = !rEPLENISH
let set_rEPLENISH value' = rEPLENISH := value'
let () = java_register_static "GameSkillType.get_rEPLENISH" (fun _ -> Obj.repr (get_rEPLENISH ()))

let tIMED = ref ((new gameSkillType ("Timed")))
let get_tIMED () = !tIMED
let set_tIMED value' = tIMED := value'
let () = java_register_static "GameSkillType.get_tIMED" (fun _ -> Obj.repr (get_tIMED ()))

let aTTACK = ref ((new gameSkillType ("Attack")))
let get_aTTACK () = !aTTACK
let set_aTTACK value' = aTTACK := value'
let () = java_register_static "GameSkillType.get_aTTACK" (fun _ -> Obj.repr (get_aTTACK ()))

let tRANSPORT = ref ((new gameSkillType ("Transport")))
let get_tRANSPORT () = !tRANSPORT
let set_tRANSPORT value' = tRANSPORT := value'
let () = java_register_static "GameSkillType.get_tRANSPORT" (fun _ -> Obj.repr (get_tRANSPORT ()))


