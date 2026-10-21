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
(* package org.allbinary.game.combat.damage *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.layer.CollidableCompositeLayer *)
(* import org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)

class damageUtil () =
  object
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable cOLLIDE : string = ""
    method cOLLIDE = cOLLIDE
    method set_cOLLIDE value' = cOLLIDE <- value'
    
    

    method process : 'any1 'any2. 'any1 * 'any2 -> unit = fun (damageableInterface, damageableInterface2) ->
        let damageableInterface = Obj.repr damageableInterface in
        let damageableInterface2 = Obj.repr damageableInterface2 in
        begin
        ignore ((Obj.magic damageableInterface)#damage (((Obj.magic damageableInterface2)#getDamage (0)), 0))
        end [@@warning "-20"]
    

    method debugDamage : 'any1 'any2. 'any1 * 'any2 -> unit = fun (collidableInterfaceCompositeInterface1, collidableInterfaceCompositeInterface) ->
        let collidableInterfaceCompositeInterface1 = Obj.repr collidableInterfaceCompositeInterface1 in
        let collidableInterfaceCompositeInterface = Obj.repr collidableInterfaceCompositeInterface in
        begin
        let collidableDestroyableDamageableLayer : CollidableDestroyableDamageableLayer.collidableDestroyableDamageableLayer ref = ref (((Obj.magic (Obj.magic collidableInterfaceCompositeInterface)) :> CollidableDestroyableDamageableLayer.collidableDestroyableDamageableLayer)) in ();
        let damage : int ref = ref ((!collidableDestroyableDamageableLayer#getDamage (0))) in ();
        if (!damage > 20000) then begin
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (!stringBuffer#append ("Collision "));
            ignore (!stringBuffer#append ((java_string_of (Obj.repr (Obj.magic collidableInterfaceCompositeInterface1)))));
            ignore (!stringBuffer#append (" with: "));
            ignore (!stringBuffer#append ((java_string_of (Obj.repr (Obj.magic collidableInterfaceCompositeInterface)))));
            ignore (!stringBuffer#append (" damage: "));
            ignore (!stringBuffer#appendint (!damage));
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), (Obj.magic collidableInterfaceCompositeInterface1), cOLLIDE))
        end
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        cOLLIDE <- "collide";
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "DamageUtil" (fun arguments -> Obj.repr (new damageUtil (Obj.obj arguments)))

let instance = (new damageUtil ())
let get_instance () = instance
let () = java_register_static "DamageUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "DamageUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


