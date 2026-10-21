(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.ag.layer.hud.basic *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.graphics.hud.BasicHudFactory *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.string.CommonStrings *)

let instance : Obj.t ref = ref ((Obj.repr (NullUtil.getInstance ())))
let get_instance () = !instance
let set_instance value' = instance := value'
let () = java_register_static "NumberStringHudFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))
class numberStringHudFactory () =
  object (self)
    val mutable nULL_NUMBER_STRING_HUD : NumberStringHud.numberStringHud = (Obj.magic 0)
    method nULL_NUMBER_STRING_HUD = nULL_NUMBER_STRING_HUD
    method set_nULL_NUMBER_STRING_HUD value' = nULL_NUMBER_STRING_HUD <- value'
    

    method createHud () : NumberStringHud.numberStringHud =
        begin
        (try
            ((new NumberStringHud.numberStringHud ((StringUtil.getInstance ())#eMPTY_STRING, 9, (BasicHudFactory.getInstance ())#aBSOLUTE, 1, 0, (BasicColorFactory.getInstance ())#nULL_COLOR)) :> NumberStringHud.numberStringHud)
        with e -> begin
            let logUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic !logUtil)#put (!commonStrings#eXCEPTION, self, !commonStrings#cONSTRUCTOR, e));
            raise (Failure ("RuntimeException"))
        end)
        end

    initializer
      begin
        nULL_NUMBER_STRING_HUD <- ((self#createHud ()) :> NumberStringHud.numberStringHud);
        ()
      end
  end
let () = java_register_constructor "NumberStringHudFactory" (fun arguments -> Obj.repr (new numberStringHudFactory (Obj.obj arguments)))

let getInstance () =
        begin
        if ((Obj.repr !instance) == (Obj.repr (NullUtil.getInstance ()))) then begin
            instance := (new numberStringHudFactory ())
        end;
        (Obj.magic !instance)
        end
let () = java_register_static "NumberStringHudFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


