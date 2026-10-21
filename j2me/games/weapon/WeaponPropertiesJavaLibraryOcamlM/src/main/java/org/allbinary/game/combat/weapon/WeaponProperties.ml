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
(* package org.allbinary.game.combat.weapon *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.logic.math.BasicDecimal *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.string.CommonStrings *)

let messageSent : bool ref = ref (false)
let get_messageSent () = !messageSent
let set_messageSent value' = messageSent := value'
let () = java_register_static "WeaponProperties.get_messageSent" (fun _ -> Obj.repr (get_messageSent ()))
let dAMAGE : string = "Damage: "
let get_dAMAGE () = dAMAGE
let () = java_register_static "WeaponProperties.get_dAMAGE" (fun _ -> Obj.repr (get_dAMAGE ()))
let rANGE : string = "Range: "
let get_rANGE () = rANGE
let () = java_register_static "WeaponProperties.get_rANGE" (fun _ -> Obj.repr (get_rANGE ()))
let rELOAD : string = "Reload: "
let get_rELOAD () = rELOAD
let () = java_register_static "WeaponProperties.get_rELOAD" (fun _ -> Obj.repr (get_rELOAD ()))
class weaponProperties ((reloadTime_arg : int), (targetingTime_arg : int), (speed_arg : int), (damage : int), (dissipation : int)) =
  object (self)
    inherit SimpleWeaponProperties.simpleWeaponProperties ()
    val mutable reloadTime : int = 0
    method reloadTime = reloadTime
    method set_reloadTime value' = reloadTime <- value'
    val mutable targetingTime : int = 0
    method targetingTime = targetingTime
    method set_targetingTime value' = targetingTime <- value'
    val mutable speed : BasicDecimal.basicDecimal = (Obj.magic 0)
    method speed = speed
    method set_speed value' = speed <- value'
    val mutable mAX : int = 0
    method mAX = mAX
    method set_mAX value' = mAX <- value'
    val mutable zERO : int = 0
    method zERO = zERO
    method set_zERO value' = zERO <- value'
    
    

    method setReloadTime ((reloadTime_arg : int)) : unit =
        begin
        reloadTime <- reloadTime_arg
        end [@@warning "-7"]
    

    method getReloadTime () : int =
        begin
        reloadTime
        end [@@warning "-7"]
    

    method setTargetingTime ((targetingTime_arg : int)) : unit =
        begin
        targetingTime <- targetingTime_arg
        end [@@warning "-7"]
    

    method getTargetingTime () : int =
        begin
        targetingTime
        end [@@warning "-7"]
    

    method getSpeed () : BasicDecimal.basicDecimal =
        begin
        (speed :> BasicDecimal.basicDecimal)
        end [@@warning "-7"]
    

    method setSpeed : 'any1. 'any1 -> unit = fun (speed_arg) ->
        let speed_arg = Obj.repr speed_arg in
        begin
        speed <- (Obj.magic speed_arg)
        end [@@warning "-7-20"]
    

    method getDamageI ((range : int)) : int =
        begin
        ((self#getDamage ()) - (((((self#getDissipation ()) * range)) / (speed#getScaled ()))))
        end [@@warning "-7"]
    

    method toStringArray () : string array =
        begin
        let index : int ref = ref (0) in ();
        let stringArray : string array ref = ref ((Array.make (3) (Obj.magic 0))) in ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        !stringArray.((let value = !index in index := !index + 1; value)) <- (java_string_of (Obj.repr ((!stringBuffer#append (dAMAGE))#appendint ((java_to_int (Obj.repr ((self#getDamage ()))))))));
        ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
        !stringArray.((let value = !index in index := !index + 1; value)) <- (java_string_of (Obj.repr ((!stringBuffer#append (rANGE))#appendint ((java_to_int (Obj.repr ((self#getRange ()))))))));
        ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
        !stringArray.((let value = !index in index := !index + 1; value)) <- (java_string_of (Obj.repr ((!stringBuffer#append (rELOAD))#appendlong ((self#getReloadTime ())))));
        !stringArray
        end [@@warning "-7"]
    

    method toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore ((!stringBuffer#append (dAMAGE))#appendint ((java_to_int (Obj.repr ((self#getDamage ()))))));
        ignore (!stringBuffer#append ((CommonSeps.getInstance ())#sPACE));
        ignore ((!stringBuffer#append (rANGE))#appendint ((java_to_int (Obj.repr ((self#getRange ()))))));
        ignore (!stringBuffer#append ((CommonSeps.getInstance ())#sPACE));
        ignore ((!stringBuffer#append (rELOAD))#appendlong ((self#getReloadTime ())));
        (java_string_of (Obj.repr !stringBuffer))
        end [@@warning "-7"]

    initializer
      begin
        reloadTime <- 0;
        targetingTime <- 0;
        speed <- ((BasicDecimal.get_zERO_BIGDECIMAL ()) :> BasicDecimal.basicDecimal);
        mAX <- 10240;
        zERO <- 0;
        ();
        if (((speed_arg < mAX) && (speed_arg <> 0)) && (not !messageSent)) then begin
            let mESSAGE : string ref = ref ("Danger Danger Danger: Speed probably to slow if using 1 degree calculations as velocity for a single axis could be below 1024: ") in ();
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (!mESSAGE))#appendlong (speed_arg)))), self, !commonStrings#cONSTRUCTOR))));
            messageSent := true
        end;
        (self#setReloadTime (reloadTime_arg));
        (self#setTargetingTime (targetingTime_arg));
        ignore (self#setDamage (damage));
        ignore (self#setDissipation (dissipation));
        (self#setSpeed ((new BasicDecimal.basicDecimal (speed_arg))));
        if (dissipation <> zERO) then begin
            let unscaledDamage : int ref = ref (((speed#getUnscaled ()) * damage)) in ();
            let scaledDissipation : int ref = ref ((dissipation * (speed#getScaledFactorValue ()))) in ();
            let value : int ref = ref (((!unscaledDamage / !scaledDissipation))) in ();
            ignore (self#setRange ((((!value * 9)) / 10)))
        end
      end
  end
let () = java_register_constructor "WeaponProperties" (fun arguments -> Obj.repr (new weaponProperties (Obj.obj arguments)))

let nULL_WEAPON_PROPERTIES = (new weaponProperties (0, 0, 0, 0, 0))
let get_nULL_WEAPON_PROPERTIES () = nULL_WEAPON_PROPERTIES
let () = java_register_static "WeaponProperties.get_nULL_WEAPON_PROPERTIES" (fun _ -> Obj.repr (get_nULL_WEAPON_PROPERTIES ()))


