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
(* package org.allbinary.game.ag.ai.scroller *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.input.GameInput *)
(* import org.allbinary.game.terrain.BasicTerrainInfo *)
(* import org.allbinary.game.terrain.TerrainEvent *)
(* import org.allbinary.game.terrain.TerrainEventCircularStaticPool *)
(* import org.allbinary.game.terrain.TerrainEventHandler *)
(* import org.allbinary.game.terrain.TerrainEventListener *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.math.Angle *)
(* import org.allbinary.math.AngleFactory *)
(* import org.allbinary.util.ABHashtable *)
(* import org.allbinary.util.BasicArrayList *)

class terrainPatrolAI (hashtable, (ownerLayerInterface : AllBinaryLayer.allBinaryLayer), (gameInput : GameInput.gameInput)) =
  object (self)
    inherit PacePatrolAI.pacePatrolAI (hashtable, ownerLayerInterface, gameInput) as super
    val mutable terrainEventListener : TerrainEventListener.terrainEventListener = (Obj.magic 0)
    method terrainEventListener = terrainEventListener
    method set_terrainEventListener value' = terrainEventListener <- value'
    val mutable dOWN : Angle.angle = (Obj.magic 0)
    method dOWN = dOWN
    method set_dOWN value' = dOWN <- value'
    val mutable cLIFF : BasicTerrainInfo.basicTerrainInfo = (Obj.magic 0)
    method cLIFF = cLIFF
    method set_cLIFF value' = cLIFF <- value'
    
    

    method update () : unit =
        begin
        ignore (super#update ());
        (self#changeDirectionIfCliffReached ())
        end [@@warning "-7"]
    

    method changeDirectionIfCliffReached () : unit =
        begin
        let list : BasicArrayList.basicArrayList ref = ref (((terrainEventListener#getList ()) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((!list#size ())) in ();
        for index = 0 to !size - 1 do
            let terrainEvent : TerrainEvent.terrainEvent ref = ref (((Obj.magic (!list#removeAt (index))) :> TerrainEvent.terrainEvent)) in ();
            let basicTerrainInfo : BasicTerrainInfo.basicTerrainInfo ref = ref (((!terrainEvent#getBasicTerrainInfo ()) :> BasicTerrainInfo.basicTerrainInfo)) in ();
            let angle : Angle.angle ref = ref (((!basicTerrainInfo#getAngle ()) :> Angle.angle)) in ();
            if ((Obj.repr !angle) == (Obj.repr dOWN)) then begin
                ignore (self#nextDirection ());
                if (not (self#isFollowLimitedByTerrain)) then begin
                    ignore ((self#logUtil)#putF ("Following Limited", self, "onTerrainEvent"));
                    (self#set_isFollowLimitedByTerrain) (true)
                end
            end
        done
        end [@@warning "-7"]

    initializer
      begin
        terrainEventListener <- ((new TerrainEventListener.terrainEventListener ()) :> TerrainEventListener.terrainEventListener);
        dOWN <- ((AngleFactory.getInstance ())#dOWN :> Angle.angle);
        cLIFF <- ((new BasicTerrainInfo.basicTerrainInfo (dOWN)) :> BasicTerrainInfo.basicTerrainInfo);
        ();
        (* super(...) is the inherit clause *) ();
        ignore ((TerrainEventHandler.getInstance (ownerLayerInterface))#addListener (terrainEventListener));
        ignore (terrainEventListener#onTerrainEvent (((TerrainEventCircularStaticPool.getInstance ())#getNext (cLIFF))))
      end
  end
let () = java_register_constructor "TerrainPatrolAI" (fun arguments -> Obj.repr (new terrainPatrolAI (Obj.obj arguments)))


