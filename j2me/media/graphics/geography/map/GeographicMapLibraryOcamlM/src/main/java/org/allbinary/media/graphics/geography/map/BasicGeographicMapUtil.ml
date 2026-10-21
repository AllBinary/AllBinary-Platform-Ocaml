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
(* import org.allbinary.layer.Layer *)
(* import org.allbinary.logic.communication.log.LogUtil *)

class basicGeographicMapUtil () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    

    method getBorderingRow : 'any2. int * 'any2 -> int = fun ((direction : int), oldGeographicMapCellPosition) ->
        let oldGeographicMapCellPosition = Obj.repr oldGeographicMapCellPosition in
        begin
        let lOCATION_CHANGE : int ref = ref (1) in ();
        (match direction with
            | switch_value when switch_value = 0 -> begin
                ((Obj.magic oldGeographicMapCellPosition)#getRow ())
            end
            | switch_value when switch_value = 1 -> begin
                ((Obj.magic oldGeographicMapCellPosition)#getRow ())
            end
            | switch_value when switch_value = 2 -> begin
                (((Obj.magic oldGeographicMapCellPosition)#getRow ()) + !lOCATION_CHANGE)
            end
            | switch_value when switch_value = 3 -> begin
                (((Obj.magic oldGeographicMapCellPosition)#getRow ()) - !lOCATION_CHANGE)
            end
            | _ -> begin
                raise (Failure ("Only Four Directions"))
            end)
        end [@@warning "-20"]
    

    method getBorderingColumn : 'any2. int * 'any2 -> int = fun ((direction : int), oldGeographicMapCellPosition) ->
        let oldGeographicMapCellPosition = Obj.repr oldGeographicMapCellPosition in
        begin
        let lOCATION_CHANGE : int ref = ref (1) in ();
        (match direction with
            | switch_value when switch_value = 0 -> begin
                (((Obj.magic oldGeographicMapCellPosition)#getColumn ()) - !lOCATION_CHANGE)
            end
            | switch_value when switch_value = 1 -> begin
                (((Obj.magic oldGeographicMapCellPosition)#getColumn ()) + !lOCATION_CHANGE)
            end
            | switch_value when switch_value = 2 -> begin
                ((Obj.magic oldGeographicMapCellPosition)#getColumn ())
            end
            | switch_value when switch_value = 3 -> begin
                ((Obj.magic oldGeographicMapCellPosition)#getColumn ())
            end
            | _ -> begin
                raise (Failure ("Only Four Directions"))
            end)
        end [@@warning "-20"]
    

    method isSameCellPosition : 'any1 'any2. 'any1 * 'any2 -> bool = fun (fromGeographicMapCellPosition, toGeographicMapCellPosition) ->
        let fromGeographicMapCellPosition = Obj.repr fromGeographicMapCellPosition in
        let toGeographicMapCellPosition = Obj.repr toGeographicMapCellPosition in
        try
        begin
        let fromColumn : int ref = ref (((Obj.magic fromGeographicMapCellPosition)#getColumn ())) in ();
        let fromRow : int ref = ref (((Obj.magic fromGeographicMapCellPosition)#getRow ())) in ();
        let goColumn : int ref = ref (((Obj.magic toGeographicMapCellPosition)#getColumn ())) in ();
        let goRow : int ref = ref (((Obj.magic toGeographicMapCellPosition)#getRow ())) in ();
        if ((!fromColumn = !goColumn) && (!fromRow = !goRow)) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method createAllBinaryTiledLayerArray : 'return. BasicGeographicMap.basicGeographicMap array -> 'return = fun ((geographicMapInterfaceArray : BasicGeographicMap.basicGeographicMap array)) ->
        begin
        let tiledLayerArray : Obj.t ref = ref ((Obj.repr (Array.make ((Array.length geographicMapInterfaceArray)) (Obj.magic 0)))) in ();
        (Obj.magic ((self#getAllBinaryTiledLayerArray (geographicMapInterfaceArray, (Obj.magic !tiledLayerArray), 0))))
        end
    

    method getAllBinaryTiledLayerArray : 'return. BasicGeographicMap.basicGeographicMap array * _ * int -> 'return = fun ((geographicMapInterfaceArray : BasicGeographicMap.basicGeographicMap array), tiledLayerArray, (startIndex : int)) ->
        begin
        let geographicMapInterface : BasicGeographicMap.basicGeographicMap ref = ref (((Obj.magic 0) :> BasicGeographicMap.basicGeographicMap)) in ();
        let size : int ref = ref ((Array.length geographicMapInterfaceArray)) in ();
        let count : int ref = ref (0) in ();
        let index : int ref = ref ((!size + startIndex)) in ();
        while ((index := !index - 1; !index) >= startIndex) do
            geographicMapInterface := geographicMapInterfaceArray.(!index);
            tiledLayerArray.((let value = !count in count := !count + 1; value)) <- (!geographicMapInterface#getAllBinaryTiledLayer ())
        done;
        (Obj.magic (tiledLayerArray))
        end
    

    method move ((geographicMapInterfaceArray : BasicGeographicMap.basicGeographicMap array), (dx : int), (dy : int)) : unit =
        begin
        let geographicMapInterface : BasicGeographicMap.basicGeographicMap ref = ref (((Obj.magic 0) :> BasicGeographicMap.basicGeographicMap)) in ();
        let size : int ref = ref ((Array.length geographicMapInterfaceArray)) in ();
        let index : int ref = ref (!size) in ();
        while ((index := !index - 1; !index) >= 0) do
            geographicMapInterface := geographicMapInterfaceArray.(!index);
            ignore ((!geographicMapInterface#getAllBinaryTiledLayer ())#moveDXY (dx, dy))
        done
        end
    

    method setPosition ((geographicMapInterfaceArray : BasicGeographicMap.basicGeographicMap array), (x : int), (y : int)) : unit =
        begin
        let geographicMapInterface : BasicGeographicMap.basicGeographicMap ref = ref (((Obj.magic 0) :> BasicGeographicMap.basicGeographicMap)) in ();
        let size : int ref = ref ((Array.length geographicMapInterfaceArray)) in ();
        let index : int ref = ref (!size) in ();
        while ((index := !index - 1; !index) >= 0) do
            geographicMapInterface := geographicMapInterfaceArray.(!index);
            ignore ((!geographicMapInterface#getAllBinaryTiledLayer ())#setPosition (x, y, ((!geographicMapInterface#getAllBinaryTiledLayer ())#getZP ())))
        done
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "BasicGeographicMapUtil" (fun arguments -> Obj.repr (new basicGeographicMapUtil (Obj.obj arguments)))

let instance = (new basicGeographicMapUtil ())
let get_instance () = instance
let () = java_register_static "BasicGeographicMapUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "BasicGeographicMapUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


