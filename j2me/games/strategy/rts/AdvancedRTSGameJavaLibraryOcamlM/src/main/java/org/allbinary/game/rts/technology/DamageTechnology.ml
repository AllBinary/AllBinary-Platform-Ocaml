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
(* package org.allbinary.game.rts.technology *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.game.layer.RTSInterface *)

class damageTechnology ((maxLevel_arg : int)) =
  object (self)
    val mutable level : int = 0
    method level = level
    method set_level value' = level <- value'
    val mutable maxLevel : int = 0
    method maxLevel = maxLevel
    method set_maxLevel value' = maxLevel <- value'
    
    

    method isCompleted () : bool =
        begin
        false
        end
    

    method getPercentComplete () : int =
        begin
        0
        end
    

    method getLevel () : int =
        begin
        level
        end
    

    method getMaxLevel () : int =
        begin
        maxLevel
        end
    

    method getCost () : int =
        begin
        0
        end
    

    method downgrade () : unit =
        begin
        ()
        end
    

    method getDowngradeCost () : int =
        begin
        0
        end
    

    method isDowngradeable () : bool =
        begin
        false
        end
    

    method getUpgradeCost () : int =
        begin
        ((((self#getLevel ()) * (self#getLevel ()))) * 1000)
        end
    

    method isUpgradeable () : bool =
        try
        begin
        if ((self#getLevel ()) < (self#getMaxLevel ())) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value
    

    method upgrade () : unit =
        begin
        level <- level + 1;
        let unitTechnologySingletonFactory : UnitTechnologySingletonFactory.unitTechnologySingletonFactory ref = ref (((UnitTechnologySingletonFactory.getInstance ()) :> UnitTechnologySingletonFactory.unitTechnologySingletonFactory)) in ();
        ignore (!unitTechnologySingletonFactory#setDamage (((!unitTechnologySingletonFactory#getDamage ()) + (((self#getLevel ()) * 100)))))
        end
    

    method isSelfUpgradeable () : bool =
        begin
        false
        end

    initializer
      begin
        level <- 0;
        ();
        ();
        maxLevel <- maxLevel_arg
      end
  end
let () = java_register_constructor "DamageTechnology" (fun arguments -> Obj.repr (new damageTechnology (Obj.obj arguments)))


