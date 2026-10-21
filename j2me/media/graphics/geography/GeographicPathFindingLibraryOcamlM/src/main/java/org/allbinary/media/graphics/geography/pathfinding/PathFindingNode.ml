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
(* package org.allbinary.media.graphics.geography.pathfinding *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)
(* import org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory *)
(* import org.allbinary.string.CommonLabels *)

class pathFindingNode ((parent_arg : Obj.t), (geographicMapCellPosition_arg : GeographicMapCellPosition.geographicMapCellPosition)) =
  object (self)
    val mutable parent : Obj.t = (Obj.magic 0)
    method parent = parent
    method set_parent value' = parent <- value'
    val mutable geographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition = (Obj.magic 0)
    method geographicMapCellPosition = geographicMapCellPosition
    method set_geographicMapCellPosition value' = geographicMapCellPosition <- value'
    
    

    method getParentP () =
        begin
        (Obj.magic parent)
        end
    

    method setGeographicMapCellPositionP : 'any1. 'any1 -> unit = fun (geographicMapCellPosition_arg) ->
        let geographicMapCellPosition_arg = Obj.repr geographicMapCellPosition_arg in
        begin
        geographicMapCellPosition <- (Obj.magic geographicMapCellPosition_arg)
        end [@@warning "-20"]
    

    method toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ((java_get_class (Obj.repr self))));
        ignore (!stringBuffer#append ((CommonLabels.getInstance ())#cOLON_SEP));
        ignore (!stringBuffer#append (" Path: "));
        ignore (!stringBuffer#append ((java_string_of (Obj.repr geographicMapCellPosition))));
        let pathFindingNode : Obj.t ref = ref ((Obj.repr (self#getParentP ()))) in ();
        while ((Obj.magic !pathFindingNode) != (Obj.magic 0)) do
            ignore (!stringBuffer#append ((java_string_of (Obj.repr (Obj.magic !pathFindingNode)#geographicMapCellPosition))));
            ignore (!stringBuffer#append ((CommonSeps.getInstance ())#sPACE));
            pathFindingNode := Obj.repr (((Obj.magic !pathFindingNode)#getParentP ()))
        done;
        (java_string_of (Obj.repr !stringBuffer))
        end

    initializer
      begin
        parent <- (Obj.repr (NullUtil.getInstance ())#nULL_OBJECT);
        geographicMapCellPosition <- ((SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION ()) :> GeographicMapCellPosition.geographicMapCellPosition);
        ();
        parent <- parent_arg;
        (self#setGeographicMapCellPositionP (geographicMapCellPosition_arg));
        if ((Obj.repr geographicMapCellPosition) == (Obj.repr (SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION ()))) then begin
            raise (Failure ("No GeographicMapCellPosition"))
        end
      end
  end
let () = java_register_constructor "PathFindingNode" (fun arguments -> Obj.repr (new pathFindingNode (Obj.obj arguments)))


