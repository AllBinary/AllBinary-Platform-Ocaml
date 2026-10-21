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
(* package org.allbinary.game.layer *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.math.SmallIntegerSingletonFactory *)

class aggression ((ram_arg : int), (projectile_arg : int), (drops_arg : int)) =
  object (self)
    val mutable ram : int = (Obj.magic 0)
    method ram = ram
    method set_ram value' = ram <- value'
    val mutable projectile : int = (Obj.magic 0)
    method projectile = projectile
    method set_projectile value' = projectile <- value'
    val mutable drops : int = (Obj.magic 0)
    method drops = drops
    method set_drops value' = drops <- value'
    
    

    method getRam () : int =
        begin
        ram
        end
    

    method setRam ((ram_arg : int)) : unit =
        begin
        ram <- ram_arg
        end
    

    method getProjectile () : int =
        begin
        projectile
        end
    

    method setProjectile ((projectile_arg : int)) : unit =
        begin
        projectile <- projectile_arg
        end
    

    method getDrops () : int =
        begin
        drops
        end
    

    method setDrops ((drops_arg : int)) : unit =
        begin
        drops <- drops_arg
        end

    initializer
      begin
        ram <- ((SmallIntegerSingletonFactory.getInstance ())#getAt (0));
        projectile <- ((SmallIntegerSingletonFactory.getInstance ())#getAt (0));
        drops <- ((SmallIntegerSingletonFactory.getInstance ())#getAt (0));
        ();
        (self#setRam (ram_arg));
        (self#setProjectile (projectile_arg));
        (self#setDrops (drops_arg))
      end
  end
let () = java_register_constructor "Aggression" (fun arguments -> Obj.repr (new aggression (Obj.obj arguments)))


