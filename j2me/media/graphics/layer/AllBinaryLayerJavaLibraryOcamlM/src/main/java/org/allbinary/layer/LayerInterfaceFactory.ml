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
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.ABHashtable *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.util.BasicArrayListUtil *)

class layerInterfaceFactory () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable list : BasicArrayList.basicArrayList = (Obj.magic 0)
    method list = list
    method set_list value' = list <- value'
    val mutable hASHTABLE_LABEL : string = ""
    method hASHTABLE_LABEL = hASHTABLE_LABEL
    method set_hASHTABLE_LABEL value' = hASHTABLE_LABEL <- value'
    

    method init () : unit =
        begin
        list <- (new BasicArrayListD.basicArrayListD ())
        end
    

    method getNexInstance : 'any1. 'any1 * int * int * int -> AllBinaryLayer.allBinaryLayer = fun (hashtable, (x : int), (y : int), (z : int)) ->
        let hashtable = Obj.repr hashtable in
        begin
        let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (hASHTABLE_LABEL))#append (((StringUtil.getInstance ())#toString ((Obj.magic hashtable))))))), self, !commonStrings#gET_INSTANCE));
        let typeInteger : int ref = ref ((Obj.magic ((Obj.magic hashtable)#get ((Obj.magic (Obj.magic (java_call_static "Layer.get_iD" (Obj.repr ())))))))) in ();
        let layerInterfaceFactoryInterface : LayerInterfaceFactoryInterface.layerInterfaceFactoryInterface ref = ref (((Obj.magic list#objectArray.((!typeInteger - 1))) :> LayerInterfaceFactoryInterface.layerInterfaceFactoryInterface)) in ();
        ((!layerInterfaceFactoryInterface#getNextInstance ((Obj.magic hashtable), x, y, z)) :> AllBinaryLayer.allBinaryLayer)
        end [@@warning "-20"]
    

    method add : 'any1. 'any1 -> unit = fun (layerInterfaceFactoryInterface) ->
        let layerInterfaceFactoryInterface = Obj.repr layerInterfaceFactoryInterface in
        begin
        ignore (list#add ((Obj.magic layerInterfaceFactoryInterface)))
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        list <- (((BasicArrayListUtil.getInstance ())#getImmutableInstance ()) :> BasicArrayList.basicArrayList);
        hASHTABLE_LABEL <- "Hashtable: ";
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "LayerInterfaceFactory" (fun arguments -> Obj.repr (new layerInterfaceFactory (Obj.obj arguments)))

let sINGLETON = (new layerInterfaceFactory ())
let get_sINGLETON () = sINGLETON
let () = java_register_static "LayerInterfaceFactory.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))

let getInstance () =
        begin
        sINGLETON
        end
let () = java_register_static "LayerInterfaceFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


