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
(* package org.allbinary.game.health *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.communication.log.ForcedLogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonSeps *)

let nAME : string = "Health Resource"
let get_nAME () = nAME
let () = java_register_static "Health.get_nAME" (fun _ -> Obj.repr (get_nAME ()))
let hEALTH_LABEL : string = "Health: "
let get_hEALTH_LABEL () = hEALTH_LABEL
let () = java_register_static "Health.get_hEALTH_LABEL" (fun _ -> Obj.repr (get_hEALTH_LABEL ()))
let mAX_HEALTH_LABEL : string = " Max: "
let get_mAX_HEALTH_LABEL () = mAX_HEALTH_LABEL
let () = java_register_static "Health.get_mAX_HEALTH_LABEL" (fun _ -> Obj.repr (get_mAX_HEALTH_LABEL ()))
class health ((maxHealth_arg : int)) =
  object (self)
    val mutable health : int = 0
    method health = health
    method set_health value' = health <- value'
    val mutable maxHealth : int = 0
    method maxHealth = maxHealth
    method set_maxHealth value' = maxHealth <- value'
    val mutable healthListenerInterface : HealthListenerInterface.healthListenerInterface = (Obj.magic 0)
    method healthListenerInterface = healthListenerInterface
    method set_healthListenerInterface value' = healthListenerInterface <- value'
    
    

    method heal ((ahealth : int)) : unit =
        begin
        let newHealth : int ref = ref (((self#getHealth ()) + ahealth)) in ();
        if (!newHealth > (self#getMaxHealth ())) then begin
            (self#setHealth ((self#getMaxHealth ())))
        end else begin
            (self#setHealth (!newHealth))
        end
        end
    

    method healMax () : unit =
        begin
        (self#setHealth ((self#getMaxHealth ())))
        end
    

    method isDamaged () : bool =
        try
        begin
        if ((self#getHealth ()) <> (self#getMaxHealth ())) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value
    

    method damage ((ahealth : int)) : unit =
        try
        begin
        if (ahealth < 0) then begin
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (!stringBuffer#append ("******* Trying to heal when damaging. Damage: "));
            ignore (!stringBuffer#appendint (ahealth));
            ignore (!stringBuffer#append ((CommonSeps.getInstance ())#sPACE));
            ignore (!stringBuffer#append ((java_string_of (Obj.repr self))));
            ignore (ForcedLogUtil.log ((java_string_of (Obj.repr !stringBuffer)), self));
            raise (Java_return (Obj.repr (())))
        end;
        let health_arg : int ref = ref (((self#getHealth ()) - ahealth)) in ();
        (self#setHealth (!health_arg))
        end
        with Java_return value -> Obj.obj value
    

    method isAlive () : bool =
        try
        begin
        if ((self#getHealth ()) <= 0) then begin
            raise (Java_return (Obj.repr (false)))
        end else begin
            raise (Java_return (Obj.repr (true)))
        end
        end
        with Java_return value -> Obj.obj value
    

    method getMaxHealth () : int =
        begin
        maxHealth
        end
    

    method setMaxHealth ((maxHealth_arg : int)) : unit =
        begin
        maxHealth <- maxHealth_arg
        end
    

    method setHealth ((health_arg : int)) : unit =
        begin
        if (health_arg > (self#getMaxHealth ())) then begin
            health <- (self#getMaxHealth ())
        end else if (health_arg < 0) then begin
            health <- 0
        end else begin
            health <- health_arg
        end;
        if (healthListenerInterface != (Obj.magic 0)) then begin
            ignore (healthListenerInterface#onHealthChange ())
        end
        end
    

    method getHealth () : int =
        begin
        health
        end
    

    method addListener : 'any1. 'any1 -> unit = fun (healthGraphic) ->
        let healthGraphic = Obj.repr healthGraphic in
        begin
        healthListenerInterface <- (Obj.magic healthGraphic)
        end [@@warning "-20"]
    

    method toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (hEALTH_LABEL));
        ignore (!stringBuffer#appendint (health));
        ignore (!stringBuffer#append (mAX_HEALTH_LABEL));
        ignore (!stringBuffer#appendint (maxHealth));
        (java_string_of (Obj.repr !stringBuffer))
        end

    initializer
      begin
        health <- 0;
        maxHealth <- 0;
        healthListenerInterface <- ((NullHealthListener.get_nULL_HEALTH_LISTENER ()) :> HealthListenerInterface.healthListenerInterface);
        ();
        (self#setMaxHealth (maxHealth_arg));
        (self#setHealth (maxHealth_arg))
      end
  end
let () = java_register_constructor "Health" (fun arguments -> Obj.repr (new health (Obj.obj arguments)))

let nULL_HEALTH = (new health (0))
let get_nULL_HEALTH () = nULL_HEALTH
let () = java_register_static "Health.get_nULL_HEALTH" (fun _ -> Obj.repr (get_nULL_HEALTH ()))


