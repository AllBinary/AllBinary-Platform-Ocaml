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
(* package org.allbinary.bounds *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.bounds.event.BoundsChangeEvent *)
(* import org.allbinary.bounds.event.BoundsChangeEventListener *)
(* import org.allbinary.graphics.Rectangle *)
(* import org.allbinary.logic.communication.log.ForcedLogUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)
(* import org.allbinary.logic.util.event.EventStrings *)

class layerBounds (rectangle_arg) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable rectangle : Obj.t = Obj.repr 0
    method rectangle : 'r. 'r = Obj.magic rectangle
    method set_rectangle : 'v. 'v -> unit = fun value' -> rectangle <- Obj.repr value'
    
    

    method getRectangleP : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic rectangle)))
        end
    

    method visit : 'any1. 'any1 -> unit = fun (_boundsVisitorInterface) ->
        begin
        ()
        end [@@warning "-20"]
    

    method onEvent : 'any1. 'any1 -> unit = fun (_eventObject) ->
        begin
        ignore (ForcedLogUtil.log ((EventStrings.getInstance ())#pERFORMANCE_MESSAGE, self))
        end [@@warning "-20"]
    

    method onBoundsChangeEvent : 'any1. 'any1 -> unit = fun (boundsChangeEvent) ->
        let boundsChangeEvent = Obj.repr boundsChangeEvent in
        begin
        rectangle <- Obj.repr (((Obj.magic boundsChangeEvent)#getRectangle ()))
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        rectangle <- Obj.repr (rectangle_arg)
      end
  end [@@warning "-20"]
let () = java_register_constructor "LayerBounds" (fun arguments -> Obj.repr (new layerBounds (Obj.obj arguments)))


