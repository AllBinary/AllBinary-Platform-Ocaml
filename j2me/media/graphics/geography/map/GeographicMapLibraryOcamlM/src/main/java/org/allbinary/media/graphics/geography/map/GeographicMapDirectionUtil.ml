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
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.direction.Direction *)
(* import org.allbinary.direction.DirectionFactory *)
(* import org.allbinary.graphics.CellPosition *)

class geographicMapDirectionUtil () =
  object
    val mutable mESSAGE : string = ""
    method mESSAGE = mESSAGE
    method set_mESSAGE value' = mESSAGE <- value'
    val mutable eRROR : string = ""
    method eRROR = eRROR
    method set_eRROR value' = eRROR <- value'
    val mutable eQUAL : string = ""
    method eQUAL = eQUAL
    method set_eQUAL value' = eQUAL <- value'
    
    

    method getDirectionFromCellPositionToAdjacentCellPosition : 'any1 'any2. 'any1 * 'any2 -> Direction.direction = fun (fromGeographicMapCellPosition, toGeographicMapCellPosition) ->
        let fromGeographicMapCellPosition = Obj.repr fromGeographicMapCellPosition in
        let toGeographicMapCellPosition = Obj.repr toGeographicMapCellPosition in
        try
        begin
        let fromColumn : int ref = ref (((Obj.magic fromGeographicMapCellPosition)#getColumn ())) in ();
        let fromRow : int ref = ref (((Obj.magic fromGeographicMapCellPosition)#getRow ())) in ();
        let goColumn : int ref = ref (((Obj.magic toGeographicMapCellPosition)#getColumn ())) in ();
        let goRow : int ref = ref (((Obj.magic toGeographicMapCellPosition)#getRow ())) in ();
        let directionFactory : DirectionFactory.directionFactory ref = ref (((DirectionFactory.getInstance ()) :> DirectionFactory.directionFactory)) in ();
        if ((!fromColumn - 1) = !goColumn) then begin
            raise (Java_return (Obj.repr (!directionFactory#lEFT)))
        end else if ((!fromColumn + 1) = !goColumn) then begin
            raise (Java_return (Obj.repr (!directionFactory#rIGHT)))
        end else if ((!fromRow - 1) = !goRow) then begin
            raise (Java_return (Obj.repr (!directionFactory#uP)))
        end else if ((!fromRow + 1) = !goRow) then begin
            raise (Java_return (Obj.repr (!directionFactory#dOWN)))
        end else if ((Obj.repr (Obj.magic fromGeographicMapCellPosition)) == (Obj.repr (Obj.magic toGeographicMapCellPosition))) then begin
            raise (Java_return (Obj.repr (!directionFactory#nO_DIRECTION)))
        end else if ((!fromRow = !goRow) && (!fromColumn = !goColumn)) then begin
            raise (Failure (mESSAGE))
        end;
        (!directionFactory#nOT_BORDERED_WITH :> Direction.direction)
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method getEightDirectionFromCellPositionToAdjacentCellPosition : 'any1 'any2. 'any1 * 'any2 -> Direction.direction = fun (fromGeographicMapCellPosition, toGeographicMapCellPosition) ->
        let fromGeographicMapCellPosition = Obj.repr fromGeographicMapCellPosition in
        let toGeographicMapCellPosition = Obj.repr toGeographicMapCellPosition in
        try
        begin
        let fromColumn : int ref = ref (((Obj.magic fromGeographicMapCellPosition)#getColumn ())) in ();
        let fromRow : int ref = ref (((Obj.magic fromGeographicMapCellPosition)#getRow ())) in ();
        let goColumn : int ref = ref (((Obj.magic toGeographicMapCellPosition)#getColumn ())) in ();
        let goRow : int ref = ref (((Obj.magic toGeographicMapCellPosition)#getRow ())) in ();
        let directionFactory : DirectionFactory.directionFactory ref = ref (((DirectionFactory.getInstance ()) :> DirectionFactory.directionFactory)) in ();
        if (!fromRow = !goRow) then begin
            if ((!fromColumn - 1) = !goColumn) then begin
                raise (Java_return (Obj.repr (!directionFactory#lEFT)))
            end else if ((!fromColumn + 1) = !goColumn) then begin
                raise (Java_return (Obj.repr (!directionFactory#rIGHT)))
            end
        end else if ((!fromRow - 1) = !goRow) then begin
            if (!fromColumn = !goColumn) then begin
                raise (Java_return (Obj.repr (!directionFactory#uP)))
            end;
            if ((!fromColumn - 1) = !goColumn) then begin
                raise (Java_return (Obj.repr (!directionFactory#uP_LEFT)))
            end else if ((!fromColumn + 1) = !goColumn) then begin
                raise (Java_return (Obj.repr (!directionFactory#uP_RIGHT)))
            end
        end else if ((!fromRow + 1) = !goRow) then begin
            if (!fromColumn = !goColumn) then begin
                raise (Java_return (Obj.repr (!directionFactory#dOWN)))
            end;
            if ((!fromColumn - 1) = !goColumn) then begin
                raise (Java_return (Obj.repr (!directionFactory#dOWN_LEFT)))
            end else if ((!fromColumn + 1) = !goColumn) then begin
                raise (Java_return (Obj.repr (!directionFactory#dOWN_RIGHT)))
            end
        end else if ((Obj.repr (Obj.magic fromGeographicMapCellPosition)) == (Obj.repr (Obj.magic toGeographicMapCellPosition))) then begin
            raise (Java_return (Obj.repr (!directionFactory#nO_DIRECTION)))
        end else if ((!fromRow = !goRow) && (!fromColumn = !goColumn)) then begin
            raise (Failure (mESSAGE))
        end;
        (!directionFactory#nOT_BORDERED_WITH :> Direction.direction)
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method getDirectionFromCellPositionToCellPosition : 'any1 'any2. 'any1 * 'any2 -> Direction.direction = fun (fromGeographicMapCellPosition, toGeographicMapCellPosition) ->
        let fromGeographicMapCellPosition = Obj.repr fromGeographicMapCellPosition in
        let toGeographicMapCellPosition = Obj.repr toGeographicMapCellPosition in
        try
        begin
        let fromColumn : int ref = ref (((Obj.magic fromGeographicMapCellPosition)#getColumn ())) in ();
        let fromRow : int ref = ref (((Obj.magic fromGeographicMapCellPosition)#getRow ())) in ();
        let goColumn : int ref = ref (((Obj.magic toGeographicMapCellPosition)#getColumn ())) in ();
        let goRow : int ref = ref (((Obj.magic toGeographicMapCellPosition)#getRow ())) in ();
        let directionFactory : DirectionFactory.directionFactory ref = ref (((DirectionFactory.getInstance ()) :> DirectionFactory.directionFactory)) in ();
        if (!fromColumn > !goColumn) then begin
            raise (Java_return (Obj.repr (!directionFactory#lEFT)))
        end else if (!fromColumn < !goColumn) then begin
            raise (Java_return (Obj.repr (!directionFactory#rIGHT)))
        end else if (!fromRow > !goRow) then begin
            raise (Java_return (Obj.repr (!directionFactory#uP)))
        end else if (!fromRow < !goRow) then begin
            raise (Java_return (Obj.repr (!directionFactory#dOWN)))
        end;
        let stringMaker : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let string : string ref = ref ((java_string_of (Obj.repr (((!stringMaker#append ((CellPosition.toStringCellPosition ((Obj.magic fromGeographicMapCellPosition)))))#append (" == "))#append ((CellPosition.toStringCellPosition ((Obj.magic toGeographicMapCellPosition)))))))) in ();
        ignore (!stringMaker#delete (0, (!stringMaker#length ())));
        raise (Failure ((java_string_of (Obj.repr ((!stringMaker#append ("Error: "))#append (!string))))))
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method getEightDirectionFromCellPositionToCellPosition : 'any1 'any2. 'any1 * 'any2 -> Direction.direction = fun (fromGeographicMapCellPosition, toGeographicMapCellPosition) ->
        let fromGeographicMapCellPosition = Obj.repr fromGeographicMapCellPosition in
        let toGeographicMapCellPosition = Obj.repr toGeographicMapCellPosition in
        try
        begin
        let fromColumn : int ref = ref (((Obj.magic fromGeographicMapCellPosition)#getColumn ())) in ();
        let fromRow : int ref = ref (((Obj.magic fromGeographicMapCellPosition)#getRow ())) in ();
        let goColumn : int ref = ref (((Obj.magic toGeographicMapCellPosition)#getColumn ())) in ();
        let goRow : int ref = ref (((Obj.magic toGeographicMapCellPosition)#getRow ())) in ();
        let directionFactory : DirectionFactory.directionFactory ref = ref (((DirectionFactory.getInstance ()) :> DirectionFactory.directionFactory)) in ();
        if ((Obj.repr (Obj.magic fromGeographicMapCellPosition)) == (Obj.repr (Obj.magic toGeographicMapCellPosition))) then begin
            raise (Java_return (Obj.repr (!directionFactory#nO_DIRECTION)))
        end else if (!fromRow = !goRow) then begin
            if (!fromColumn > !goColumn) then begin
                raise (Java_return (Obj.repr (!directionFactory#lEFT)))
            end else if (!fromColumn < !goColumn) then begin
                raise (Java_return (Obj.repr (!directionFactory#rIGHT)))
            end
        end else if (!fromRow > !goRow) then begin
            if (!fromColumn > !goColumn) then begin
                raise (Java_return (Obj.repr (!directionFactory#uP_LEFT)))
            end else if (!fromColumn < !goColumn) then begin
                raise (Java_return (Obj.repr (!directionFactory#uP_RIGHT)))
            end else if (!fromColumn = !goColumn) then begin
                raise (Java_return (Obj.repr (!directionFactory#uP)))
            end
        end else if (!fromRow < !goRow) then begin
            if (!fromColumn > !goColumn) then begin
                raise (Java_return (Obj.repr (!directionFactory#dOWN_LEFT)))
            end else if (!fromColumn < !goColumn) then begin
                raise (Java_return (Obj.repr (!directionFactory#dOWN_RIGHT)))
            end else if (!fromColumn = !goColumn) then begin
                raise (Java_return (Obj.repr (!directionFactory#dOWN)))
            end
        end;
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (eRROR));
        ignore (!stringBuffer#append ((CellPosition.toStringCellPosition ((Obj.magic fromGeographicMapCellPosition)))));
        ignore (!stringBuffer#append (eQUAL));
        ignore (!stringBuffer#append ((CellPosition.toStringCellPosition ((Obj.magic toGeographicMapCellPosition)))));
        raise (Failure ((java_string_of (Obj.repr !stringBuffer))))
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]

    initializer
      begin
        mESSAGE <- "Cell Position should have been cached!!!";
        eRROR <- "Error: ";
        eQUAL <- " == ";
        ();
        ()
      end
  end
let () = java_register_constructor "GeographicMapDirectionUtil" (fun arguments -> Obj.repr (new geographicMapDirectionUtil (Obj.obj arguments)))

let instance = (new geographicMapDirectionUtil ())
let get_instance () = instance
let () = java_register_static "GeographicMapDirectionUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "GeographicMapDirectionUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


