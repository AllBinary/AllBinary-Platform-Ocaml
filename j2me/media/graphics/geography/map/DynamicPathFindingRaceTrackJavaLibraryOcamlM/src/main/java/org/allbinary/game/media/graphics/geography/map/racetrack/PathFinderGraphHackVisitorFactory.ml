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
(* package org.allbinary.game.media.graphics.geography.map.racetrack *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMap *)
(* import org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorFactoryBase *)
(* import org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase *)

class pathFinderGraphHackVisitorFactory ((edgeMinimum_arg : int), (minPathWeight_arg : int), (maxPathWeight_arg : int)) =
  object
    inherit PathFinderGraphVisitorFactoryBase.pathFinderGraphVisitorFactoryBase ()
    val mutable edgeMinimum : int = 0
    method edgeMinimum = edgeMinimum
    method set_edgeMinimum value' = edgeMinimum <- value'
    val mutable minPathWeight : int = 0
    method minPathWeight = minPathWeight
    method set_minPathWeight value' = minPathWeight <- value'
    val mutable maxPathWeight : int = 0
    method maxPathWeight = maxPathWeight
    method set_maxPathWeight value' = maxPathWeight <- value'
    
    

    method getInstance : 'any1 'return. 'any1 -> 'return = fun (geographicMapInterface) ->
        let geographicMapInterface = Obj.repr geographicMapInterface in
        begin
        (Obj.magic ((Obj.obj (java_new "PathFinderGraphHackVisitor" (Obj.repr ((Obj.magic geographicMapInterface), edgeMinimum, minPathWeight, maxPathWeight))))))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ();
        ();
        ();
        edgeMinimum <- edgeMinimum_arg;
        minPathWeight <- minPathWeight_arg;
        maxPathWeight <- maxPathWeight_arg
      end
  end
let () = java_register_constructor "PathFinderGraphHackVisitorFactory" (fun arguments -> Obj.repr (new pathFinderGraphHackVisitorFactory (Obj.obj arguments)))


