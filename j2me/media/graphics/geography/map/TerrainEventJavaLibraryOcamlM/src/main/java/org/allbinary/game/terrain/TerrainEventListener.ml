(* Generated Code Do Not Modify *)
(* package org.allbinary.game.terrain *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.communication.log.ForcedLogUtil *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)
(* import org.allbinary.logic.util.event.EventStrings *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class terrainEventListener () =
  object (self)
    val mutable list : BasicArrayList.basicArrayList = (Obj.magic 0)
    method list = list
    method set_list value' = list <- value'
    

    method onEvent : 'any1. 'any1 -> unit = fun (_eventObject) ->
        begin
        ignore (ForcedLogUtil.log ((EventStrings.getInstance ())#pERFORMANCE_MESSAGE, self))
        end [@@warning "-20"]
    

    method onTerrainEvent : 'any1. 'any1 -> unit = fun (terrainEvent) ->
        let terrainEvent = Obj.repr terrainEvent in
        begin
        ignore (list#clear ());
        ignore (list#add ((Obj.magic terrainEvent)))
        end [@@warning "-20"]
    

    method getList () : BasicArrayList.basicArrayList =
        begin
        (list :> BasicArrayList.basicArrayList)
        end

    initializer
      begin
        list <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        ()
      end
  end
let () = java_register_constructor "TerrainEventListener" (fun arguments -> Obj.repr (new terrainEventListener (Obj.obj arguments)))


