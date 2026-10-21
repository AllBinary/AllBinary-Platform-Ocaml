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
(* package org.allbinary.media.graphics.geography.map *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.graphics.CellPosition *)
(* import org.allbinary.graphics.GPoint *)
(* import org.allbinary.graphics.PointFactory *)

class geographicMapCellPosition ((column : int), (row : int), (columns : int), (rows : int), (width : int), (height : int)) =
  object (self)
    inherit CellPosition.cellPosition (column, row, columns, rows)
    val mutable point : GPoint.gPoint = (Obj.magic 0)
    method point = point
    method set_point value' = point <- value'
    val mutable midPoint : GPoint.gPoint = (Obj.magic 0)
    method midPoint = midPoint
    method set_midPoint value' = midPoint <- value'
    
    

    method getPoint () : GPoint.gPoint =
        begin
        (point :> GPoint.gPoint)
        end [@@warning "-7"]
    

    method getMidPoint () : GPoint.gPoint =
        begin
        (midPoint :> GPoint.gPoint)
        end [@@warning "-7"]
    

    method setMidPoint : 'any1. 'any1 -> unit = fun (midPoint_arg) ->
        let midPoint_arg = Obj.repr midPoint_arg in
        begin
        midPoint <- (Obj.magic midPoint_arg)
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ();
        ();
        (* super(...) is the inherit clause *) ();
        let x : int ref = ref (((self#getColumn ()) * width)) in ();
        let y : int ref = ref (((self#getRow ()) * height)) in ();
        let pointFactory : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ()))))) in ();
        point <- ((Obj.magic !pointFactory)#createXY (!x, !y));
        midPoint <- ((Obj.magic !pointFactory)#createXY ((!x + ((width asr 1))), (!y + ((height asr 1)))))
      end
  end
let () = java_register_constructor "GeographicMapCellPosition" (fun arguments -> Obj.repr (new geographicMapCellPosition (Obj.obj arguments)))


