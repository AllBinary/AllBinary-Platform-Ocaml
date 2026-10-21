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
(* package org.allbinary.game.ag.layer.weapon.mine *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.layer.resources.BasicGameResources *)
(* import org.allbinary.logic.NullUtil *)

let instance : Obj.t ref = ref ((Obj.repr (NullUtil.getInstance ())#nULL_OBJECT))
let get_instance () = !instance
let set_instance value' = instance := value'
let () = java_register_static "MineWeaponResources.get_instance" (fun _ -> Obj.repr (get_instance ()))
class mineWeaponResources () =
  object
    inherit BasicGameResources.basicGameResources () as super
    val mutable dROP_TEXT_RESOURCE : string = ""
    method dROP_TEXT_RESOURCE = dROP_TEXT_RESOURCE
    method set_dROP_TEXT_RESOURCE value' = dROP_TEXT_RESOURCE <- value'
    val mutable dROP_RESOURCE : string = ""
    method dROP_RESOURCE = dROP_RESOURCE
    method set_dROP_RESOURCE value' = dROP_RESOURCE <- value'
    val mutable dROP_ICON_RESOURCE : string = ""
    method dROP_ICON_RESOURCE = dROP_ICON_RESOURCE
    method set_dROP_ICON_RESOURCE value' = dROP_ICON_RESOURCE <- value'
    

    initializer
      begin
        dROP_TEXT_RESOURCE <- "/mine_drop_text_20_by_20.png";
        dROP_RESOURCE <- "/mine_drop_20_by_20.png";
        dROP_ICON_RESOURCE <- "/mine_drop_icon_20_by_20.png";
        ();
        let rOOT : string ref = ref ("/mine") in ();
        let sMALL : string ref = ref ("_20_by_20.png") in ();
        let mEDIUM : string ref = ref (!sMALL) in ();
        let sIZE_FOUR : string ref = ref (!sMALL) in ();
        let sIZE_FIVE : string ref = ref (!sMALL) in ();
        let sIZE_SIX : string ref = ref (!sMALL) in ();
        let sIZE : string array ref = ref ([| !sMALL; !mEDIUM; !sIZE_FOUR; !sIZE_FIVE; !sIZE_SIX |]) in ();
        ignore (super#init (!rOOT, !sIZE))
      end
  end
let () = java_register_constructor "MineWeaponResources" (fun arguments -> Obj.repr (new mineWeaponResources (Obj.obj arguments)))

let getInstance () =
        begin
        if ((Obj.repr !instance) == (Obj.repr (NullUtil.getInstance ())#nULL_OBJECT)) then begin
            instance := (new mineWeaponResources ())
        end;
        (Obj.magic !instance)
        end
let () = java_register_static "MineWeaponResources.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


