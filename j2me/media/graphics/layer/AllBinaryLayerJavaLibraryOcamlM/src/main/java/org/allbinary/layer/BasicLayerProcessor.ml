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
(* package org.allbinary.layer *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class basicLayerProcessor () =
  object
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable list : BasicArrayList.basicArrayList = (Obj.magic 0)
    method list = list
    method set_list value' = list <- value'
    
    

    method add : 'any1. 'any1 -> unit = fun (layerInterface) ->
        let layerInterface = Obj.repr layerInterface in
        begin
        if (not (list#contains ((Obj.magic layerInterface)))) then begin
            ignore (list#add ((Obj.magic layerInterface)))
        end
        end [@@warning "-20"]
    

    method process : 'any1. 'any1 -> unit = fun (_allBinaryLayerManager) ->
        begin
        raise (Failure ((CommonStrings.getInstance ())#nOT_IMPLEMENTED))
        end [@@warning "-20"]
    

    method getList () : BasicArrayList.basicArrayList =
        begin
        (list :> BasicArrayList.basicArrayList)
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        list <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "BasicLayerProcessor" (fun arguments -> Obj.repr (new basicLayerProcessor (Obj.obj arguments)))

let nULL_LAYER_PROCESSOR = (new basicLayerProcessor ())
let get_nULL_LAYER_PROCESSOR () = nULL_LAYER_PROCESSOR
let () = java_register_static "BasicLayerProcessor.get_nULL_LAYER_PROCESSOR" (fun _ -> Obj.repr (get_nULL_LAYER_PROCESSOR ()))


