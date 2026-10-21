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
(* package org.allbinary.game.terrain *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)
(* import org.allbinary.logic.util.event.AllBinaryEventObjectFactoryInterface *)

class terrainEventFactory () =
  object
    
    

    method getInstance () : AllBinaryEventObject.allBinaryEventObject =
        begin
        ((new TerrainEvent.terrainEvent ((NullUtil.getInstance ())#nULL_OBJECT)) :> AllBinaryEventObject.allBinaryEventObject)
        end

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "TerrainEventFactory" (fun arguments -> Obj.repr (new terrainEventFactory (Obj.obj arguments)))


