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
(* package org.allbinary.graphics.pipeline *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.graphics.GPoint *)
(* import org.allbinary.graphics.PointFactory *)
(* import org.allbinary.math.Angle *)
(* import org.allbinary.math.NoDecimalTrigTable *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class basicGraphicsPipeline ((points : BasicArrayList.basicArrayList)) =
  object (self)
    val mutable pointBasicArrayList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method pointBasicArrayList = pointBasicArrayList
    method set_pointBasicArrayList value' = pointBasicArrayList <- value'
    val mutable noDecimalTrigTable : NoDecimalTrigTable.noDecimalTrigTable = (Obj.magic 0)
    method noDecimalTrigTable = noDecimalTrigTable
    method set_noDecimalTrigTable value' = noDecimalTrigTable <- value'
    
    

    method setInitMatrix : 'any1. 'any1 -> unit = fun (points) ->
        let points = Obj.repr points in
        begin
        pointBasicArrayList <- (Obj.magic points)
        end [@@warning "-20"]
    

    method createMatrix () : unit =
        begin
        ()
        end
    

    method translate ((x : int), (y : int)) : unit =
        begin
        let newBasicArrayList : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((pointBasicArrayList#size ())) in ();
        let pointFactory : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ()))))) in ();
        let secondPoint : GPoint.gPoint ref = ref (((Obj.magic 0) :> GPoint.gPoint)) in ();
        for index = 0 to !size - 1 do
            secondPoint := (Obj.magic pointBasicArrayList#objectArray.(index));
            if ((!secondPoint#getX ()) != 1000) then begin
                ignore (!newBasicArrayList#add (((Obj.magic !pointFactory)#createXY (((!secondPoint#getX ()) + x), ((!secondPoint#getY ()) + y)))))
            end else begin
                ignore (!newBasicArrayList#add (!secondPoint))
            end
        done;
        pointBasicArrayList <- !newBasicArrayList
        end
    

    method rotateToAngle : 'any1. 'any1 -> unit = fun (angle) ->
        let angle = Obj.repr angle in
        begin
        (self#rotate ((java_to_int (Obj.repr (((Obj.magic angle)#getValue ()))))))
        end [@@warning "-20"]
    

    method rotate ((angle : int)) : unit =
        begin
        let newBasicArrayList : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        let secondPoint : GPoint.gPoint ref = ref (((Obj.magic 0) :> GPoint.gPoint)) in ();
        let y : int ref = ref (0) in ();
        let secondX : int ref = ref (0) in ();
        let secondY : int ref = ref (0) in ();
        let point : GPoint.gPoint ref = ref (((Obj.magic 0) :> GPoint.gPoint)) in ();
        let pointFactory : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ()))))) in ();
        let size : int ref = ref ((pointBasicArrayList#size ())) in ();
        let sin : int ref = ref (0) in ();
        let cos : int ref = ref (0) in ();
        for index = 0 to !size - 1 do
            secondPoint := (Obj.magic pointBasicArrayList#objectArray.(index));
            if ((!secondPoint#getX ()) != 1000) then begin
                sin := (noDecimalTrigTable#sin (angle));
                cos := (noDecimalTrigTable#cos (angle));
                y := ((!secondPoint#getY ()) * !sin);
                secondX := ((((!secondPoint#getX ()) * !cos)) - !y);
                secondY := ((((!secondPoint#getX ()) * !sin)) + (((!secondPoint#getY ()) * !cos)));
                point := ((Obj.magic !pointFactory)#createXY ((!secondX / 10000), (!secondY / 10000)));
                ignore (!newBasicArrayList#add (!point))
            end else begin
                ignore (!newBasicArrayList#add (!secondPoint))
            end
        done;
        pointBasicArrayList <- !newBasicArrayList
        end
    

    method mirror ((width : int)) : unit =
        begin
        let pointFactory : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ()))))) in ();
        let halfWidth : int ref = ref (((width asr 1))) in ();
        let newBasicArrayList : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        let secondPoint : GPoint.gPoint ref = ref (((Obj.magic 0) :> GPoint.gPoint)) in ();
        let newX : int ref = ref (0) in ();
        let point : GPoint.gPoint ref = ref (((Obj.magic 0) :> GPoint.gPoint)) in ();
        let size : int ref = ref ((pointBasicArrayList#size ())) in ();
        for index = 0 to !size - 1 do
            secondPoint := (Obj.magic pointBasicArrayList#objectArray.(index));
            if ((!secondPoint#getX ()) != 1000) then begin
                newX := 0;
                if ((!secondPoint#getX ()) > !halfWidth) then begin
                    newX := (!halfWidth - (((!secondPoint#getX ()) - !halfWidth)))
                end else begin
                    newX := (!halfWidth + ((!halfWidth - (!secondPoint#getX ()))))
                end;
                point := ((Obj.magic !pointFactory)#createXY (!newX, (!secondPoint#getY ())));
                ignore (!newBasicArrayList#add (!point))
            end else begin
                ignore (!newBasicArrayList#add (!secondPoint))
            end
        done;
        pointBasicArrayList <- !newBasicArrayList
        end
    

    method getMatrix () : BasicArrayList.basicArrayList =
        begin
        (pointBasicArrayList :> BasicArrayList.basicArrayList)
        end

    initializer
      begin
        ();
        noDecimalTrigTable <- ((NoDecimalTrigTable.getInstance ()) :> NoDecimalTrigTable.noDecimalTrigTable);
        ();
        pointBasicArrayList <- points
      end
  end
let () = java_register_constructor "BasicGraphicsPipeline" (fun arguments -> Obj.repr (new basicGraphicsPipeline (Obj.obj arguments)))


