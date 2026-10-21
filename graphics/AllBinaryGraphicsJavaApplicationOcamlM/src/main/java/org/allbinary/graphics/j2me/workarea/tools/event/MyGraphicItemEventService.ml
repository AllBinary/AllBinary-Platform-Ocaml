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
(* package org.allbinary.graphics.j2me.workarea.tools.event *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

let listenerList : Obj.t ref = ref ((Obj.repr (new EventListenerList.eventListenerList ())))
let get_listenerList () = Obj.magic !listenerList
let set_listenerList value' = listenerList := Obj.repr value'
let () = java_register_static "MyGraphicItemEventService.get_listenerList" (fun _ -> Obj.repr (get_listenerList ()))
let dELETE : string ref = ref ("delete")
let get_dELETE () = !dELETE
let set_dELETE value' = dELETE := value'
let () = java_register_static "MyGraphicItemEventService.get_dELETE" (fun _ -> Obj.repr (get_dELETE ()))
let dESELECT : string ref = ref ("deselect")
let get_dESELECT () = !dESELECT
let set_dESELECT value' = dESELECT := value'
let () = java_register_static "MyGraphicItemEventService.get_dESELECT" (fun _ -> Obj.repr (get_dESELECT ()))
let sELECT : string ref = ref ("select")
let get_sELECT () = !sELECT
let set_sELECT value' = sELECT := value'
let () = java_register_static "MyGraphicItemEventService.get_sELECT" (fun _ -> Obj.repr (get_sELECT ()))
let dUPLICATE : string ref = ref ("duplicate")
let get_dUPLICATE () = !dUPLICATE
let set_dUPLICATE value' = dUPLICATE := value'
let () = java_register_static "MyGraphicItemEventService.get_dUPLICATE" (fun _ -> Obj.repr (get_dUPLICATE ()))
let rOTATE : string ref = ref ("rotate")
let get_rOTATE () = !rOTATE
let set_rOTATE value' = rOTATE := value'
let () = java_register_static "MyGraphicItemEventService.get_rOTATE" (fun _ -> Obj.repr (get_rOTATE ()))

let addListener : 'any1. 'any1 -> unit = fun (listener) ->
        let listener = Obj.repr listener in
        begin
        ignore ((Obj.magic !listenerList)#add ((Obj.magic (java_get_class (Obj.repr (Obj.magic listener)))), (Obj.magic (Obj.magic listener))))
        end [@@warning "-20"]

and removeListener : 'any1. 'any1 -> unit = fun (listener) ->
        let listener = Obj.repr listener in
        begin
        ignore ((Obj.magic !listenerList)#remove ((Obj.magic (java_get_class (Obj.repr (Obj.magic listener)))), (Obj.magic (Obj.magic listener))))
        end [@@warning "-20"]

and fire : 'any1. 'any1 -> unit = fun (evt) ->
        let evt = Obj.repr evt in
        begin
        let listeners : Obj.t array ref = ref (((Obj.magic !listenerList)#getListenerList ())) in ();
        let i : int ref = ref (0) in ();
        while (i < (Array.length !listeners)) do
            if ((Obj.repr !listeners.(i)) == (Obj.repr (java_get_class (Obj.repr !listeners.((i + 1)))))) then begin
                if ((((Obj.magic evt)#getCommand ())#compareTo (!sELECT)) == 0) then begin
                    ignore (((Obj.magic !listeners.((i + 1))))#highlight ((Obj.magic evt)))
                end else if ((((Obj.magic evt)#getCommand ())#compareTo (!dESELECT)) == 0) then begin
                    ignore (((Obj.magic !listeners.((i + 1))))#deselect ((Obj.magic evt)))
                end else if ((((Obj.magic evt)#getCommand ())#compareTo (!dELETE)) == 0) then begin
                    ignore (((Obj.magic !listeners.((i + 1))))#delete ((Obj.magic evt)))
                end else if ((((Obj.magic evt)#getCommand ())#compareTo (!dUPLICATE)) == 0) then begin
                    ignore (((Obj.magic !listeners.((i + 1))))#duplicate ((Obj.magic evt)))
                end else if ((((Obj.magic evt)#getCommand ())#compareTo (!rOTATE)) == 0) then begin
                    ignore (((Obj.magic !listeners.((i + 1))))#rotate ((Obj.magic evt)))
                end
            end;
            i <- (i + 2)
        done
        end [@@warning "-20"]

let () = java_register_static "MyGraphicItemEventService.addListener" (fun arguments -> Obj.repr (addListener (Obj.obj arguments)))
let () = java_register_static "MyGraphicItemEventService.removeListener" (fun arguments -> Obj.repr (removeListener (Obj.obj arguments)))
let () = java_register_static "MyGraphicItemEventService.fire" (fun arguments -> Obj.repr (fire (Obj.obj arguments)))
class myGraphicItemEventService () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "MyGraphicItemEventService" (fun arguments -> Obj.repr (new myGraphicItemEventService (Obj.obj arguments)))


