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
(* import org.allbinary.logic.communication.log.LogUtil *)

class geographicMapCellTypeFactory () =
  object
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable geographicMapCellTypeArray : Obj.t = Obj.repr 0
    method geographicMapCellTypeArray : 'r. 'r = Obj.magic geographicMapCellTypeArray
    method set_geographicMapCellTypeArray : 'v. 'v -> unit = fun value' -> geographicMapCellTypeArray <- Obj.repr value'
    

    method get : 'return. int -> 'return = fun ((type_ : int)) ->
        begin
        (Obj.magic ((Obj.magic geographicMapCellTypeArray).(type_)))
        end
    

    method getGeographicMapCellTypeArray : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic geographicMapCellTypeArray)))
        end
    

    method getStartType () : int =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getEndType () : int =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getEmptyType () : int =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method isPath : 'any1. 'any1 -> bool = fun (_cellType) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        geographicMapCellTypeArray <- (Obj.repr (Array.make (512) (Obj.magic 0)));
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "GeographicMapCellTypeFactory" (fun arguments -> Obj.repr (new geographicMapCellTypeFactory (Obj.obj arguments)))

let instance = (new geographicMapCellTypeFactory ())
let get_instance () = instance
let () = java_register_static "GeographicMapCellTypeFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "GeographicMapCellTypeFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


