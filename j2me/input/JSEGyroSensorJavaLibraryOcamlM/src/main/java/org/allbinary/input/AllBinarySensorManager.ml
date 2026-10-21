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
(* package org.allbinary.input *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

let instance : Obj.t ref = ref ((Obj.repr (NullUtil.getInstance ())#nULL_OBJECT))
let get_instance () = !instance
let set_instance value' = instance := value'
let () = java_register_static "AllBinarySensorManager.get_instance" (fun _ -> Obj.repr (get_instance ()))
class allBinarySensorManager () =
  object
    val mutable oRIENTATION_SENSOR_INPUT : string = ""
    method oRIENTATION_SENSOR_INPUT = oRIENTATION_SENSOR_INPUT
    method set_oRIENTATION_SENSOR_INPUT value' = oRIENTATION_SENSOR_INPUT <- value'
    val mutable oRIENTATION_TYPE : string = ""
    method oRIENTATION_TYPE = oRIENTATION_TYPE
    method set_oRIENTATION_TYPE value' = oRIENTATION_TYPE <- value'
    val mutable list : BasicArrayList.basicArrayList = (Obj.magic 0)
    method list = list
    method set_list value' = list <- value'
    
    

    method init () : unit =
        begin
        ()
        end
    

    method getSensorNamesList () : BasicArrayList.basicArrayList =
        begin
        (list :> BasicArrayList.basicArrayList)
        end
    

    method shutdown () : unit =
        begin
        ()
        end

    initializer
      begin
        oRIENTATION_SENSOR_INPUT <- "Orientation Sensor Input";
        oRIENTATION_TYPE <- "Orientation Type";
        list <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        ();
        ()
      end
  end
let () = java_register_constructor "AllBinarySensorManager" (fun arguments -> Obj.repr (new allBinarySensorManager (Obj.obj arguments)))

let getInstance () =
        begin
        if ((Obj.repr !instance) == (Obj.repr (NullUtil.getInstance ())#nULL_OBJECT)) then begin
            instance := (new allBinarySensorManager ())
        end;
        (Obj.magic !instance)
        end
let () = java_register_static "AllBinarySensorManager.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


