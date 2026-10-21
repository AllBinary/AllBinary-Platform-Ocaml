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
(* package org.allbinary.game.displayable *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.graphics.displayable.event.DisplayChangeEventHandler *)
(* import org.allbinary.graphics.displayable.event.DisplayChangeEventListener *)
(* import org.allbinary.logic.util.event.handler.BasicEventHandler *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class gameLevelDisplayChangeEventListenersFactory () =
  object
    val mutable list : BasicArrayList.basicArrayList = (Obj.magic 0)
    method list = list
    method set_list value' = list <- value'
    

    method add : 'any1. 'any1 -> unit = fun (displayChangeEventListener) ->
        let displayChangeEventListener = Obj.repr displayChangeEventListener in
        begin
        ignore (list#add ((Obj.magic displayChangeEventListener)));
        ignore ((DisplayChangeEventHandler.getInstance ())#addListenerInterface ((Obj.magic displayChangeEventListener)))
        end [@@warning "-20"]
    

    method clear () : unit =
        begin
        let displayChangeEventHandler : Obj.t ref = ref ((Obj.repr (DisplayChangeEventHandler.getInstance ()))) in ();
        let displayChangeEventListener : DisplayChangeEventListener.displayChangeEventListener ref = ref (((Obj.magic 0) :> DisplayChangeEventListener.displayChangeEventListener)) in ();
        let index : int ref = ref ((list#size ())) in ();
        while ((index := !index - 1; !index) >= 0) do
            displayChangeEventListener := (Obj.magic list#objectArray.(!index));
            ignore ((Obj.magic !displayChangeEventHandler)#removeListener (!displayChangeEventListener))
        done;
        ignore (list#clear ())
        end

    initializer
      begin
        list <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        ()
      end
  end
let () = java_register_constructor "GameLevelDisplayChangeEventListenersFactory" (fun arguments -> Obj.repr (new gameLevelDisplayChangeEventListenersFactory (Obj.obj arguments)))

let instance = (new gameLevelDisplayChangeEventListenersFactory ())
let get_instance () = instance
let () = java_register_static "GameLevelDisplayChangeEventListenersFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "GameLevelDisplayChangeEventListenersFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


