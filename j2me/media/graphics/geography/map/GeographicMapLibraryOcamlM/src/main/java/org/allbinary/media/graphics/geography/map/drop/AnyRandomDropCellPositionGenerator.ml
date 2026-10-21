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
(* package org.allbinary.media.graphics.geography.map.drop *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.game.layer.AllBinaryGameLayerManager *)
(* import org.allbinary.game.layer.AllBinaryTiledLayer *)
(* import org.allbinary.game.rand.MyRandomFactory *)
(* import org.allbinary.layer.AllBinaryLayerManager *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMap *)

class anyRandomDropCellPositionGenerator () =
  object (self)
    inherit BaseDropCellPositionGenerator.baseDropCellPositionGenerator ()
    val mutable list : BasicArrayList.basicArrayList = (Obj.magic 0)
    method list = list
    method set_list value' = list <- value'
    val mutable geographicMapInterface : Obj.t = (Obj.magic 0)
    method geographicMapInterface = geographicMapInterface
    method set_geographicMapInterface value' = geographicMapInterface <- value'
    

    method update : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_allBinaryGameLayerManager, geographicMapInterface_arg) ->
        let geographicMapInterface_arg = Obj.repr geographicMapInterface_arg in
        begin
        geographicMapInterface <- (Obj.magic geographicMapInterface_arg);
        let basicGeographicMapCellPositionFactory : BasicGeographicMapCellPositionFactory.basicGeographicMapCellPositionFactory ref = ref ((((Obj.magic geographicMapInterface_arg)#getGeographicMapCellPositionFactory ()) :> BasicGeographicMapCellPositionFactory.basicGeographicMapCellPositionFactory)) in ();
        let randomFactory : MyRandomFactory.myRandomFactory ref = ref (((MyRandomFactory.getInstance ()) :> MyRandomFactory.myRandomFactory)) in ();
        let tiledLayer : AllBinaryTiledLayer.allBinaryTiledLayer ref = ref ((((Obj.magic geographicMapInterface_arg)#getAllBinaryTiledLayer ()) :> AllBinaryTiledLayer.allBinaryTiledLayer)) in ();
        let total : int ref = ref (((!tiledLayer#getColumns ()) * (!tiledLayer#getRows ()))) in ();
        let randomColumn : int ref = ref (0) in ();
        let randomRow : int ref = ref (0) in ();
        let geographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((Obj.magic 0) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
        let index : int ref = ref (!total) in ();
        while ((index := !index - 1; !index) >= 0) do
            randomColumn := (!randomFactory#getAbsoluteNextInt ((!tiledLayer#getColumns ())));
            randomRow := (!randomFactory#getAbsoluteNextInt ((!tiledLayer#getRows ())));
            geographicMapCellPosition := (!basicGeographicMapCellPositionFactory#getAt (!randomColumn, !randomRow));
            if (self#isDropAllowedAt (!geographicMapCellPosition)) then begin
                ignore (list#add (!geographicMapCellPosition))
            end
        done
        end [@@warning "-7-20"]
    

    method processTick : 'any1. 'any1 -> unit = fun (_allBinaryLayerManager) ->
        begin
        ()
        end [@@warning "-7-20"]

    initializer
      begin
        list <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        geographicMapInterface <- (Obj.repr (NullUtil.getInstance ())#nULL_OBJECT);
        ()
      end
  end
let () = java_register_constructor "AnyRandomDropCellPositionGenerator" (fun arguments -> Obj.repr (new anyRandomDropCellPositionGenerator (Obj.obj arguments)))


