(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
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
(* import org.allbinary.game.layer.AllBinaryGameLayer *)
(* import org.allbinary.logic.util.event.EventListenerInterface *)
(* import org.allbinary.logic.util.event.handler.BasicEventHandler *)
(* import org.allbinary.logic.util.event.EventStrings *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class geographicMapEventHandler () =
  object (self)
    inherit BasicEventHandler.basicEventHandler () as super
    val mutable list : BasicArrayList.basicArrayList = (Obj.magic 0)
    method list = list
    method set_list value' = list <- value'
    
    

    method addListener : 'any1. 'any1 -> unit = fun (gameLayer) ->
        let gameLayer = Obj.repr gameLayer in
        begin
        if (not (list#contains ((Obj.magic gameLayer)))) then begin
            ignore (list#add ((Obj.magic gameLayer)))
        end
        end [@@warning "-7-20"]
    

    method removeAllListeners () : unit =
        begin
        ignore (list#clear ());
        ignore (super#removeAllListeners ())
        end [@@warning "-7"]
    

    method removeListener : 'any1. 'any1 -> unit = fun (eventListenerInterface) ->
        let eventListenerInterface = Obj.repr eventListenerInterface in
        begin
        ignore (list#remove ((Obj.magic eventListenerInterface)));
        ignore (super#removeListener ((Obj.magic eventListenerInterface)))
        end [@@warning "-7-20"]
    

    method fireEvent () : unit =
        begin
        let index : int ref = ref ((list#size ())) in ();
        while ((index := !index - 1; !index) >= 0) do
            (try
                let gameLayer : AllBinaryGameLayer.allBinaryGameLayer ref = ref (((Obj.magic (list#get (!index))) :> AllBinaryGameLayer.allBinaryGameLayer)) in ();
                ignore (!gameLayer#move ())
            with e -> begin
                ignore ((self#logUtil)#put ((self#commonStrings)#eXCEPTION, self, (EventStrings.getInstance ())#fIRE_EVENT, e))
            end)
        done
        end [@@warning "-7"]

    initializer
      begin
        list <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        ();
        ()
      end
  end
let () = java_register_constructor "GeographicMapEventHandler" (fun arguments -> Obj.repr (new geographicMapEventHandler (Obj.obj arguments)))

let instance = ref ((new geographicMapEventHandler ()))
let get_instance () = !instance
let set_instance value' = instance := value'
let () = java_register_static "GeographicMapEventHandler.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        !instance
        end
let () = java_register_static "GeographicMapEventHandler.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


