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
(* package org.allbinary.game.tracking *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)

class trackingEvent ((allBinaryLayerInterface : Obj.t)) =
  object (self)
    inherit AllBinaryEventObject.allBinaryEventObject (allBinaryLayerInterface)
    val mutable layerInterface : AllBinaryLayer.allBinaryLayer = (Obj.magic 0)
    method layerInterface = layerInterface
    method set_layerInterface value' = layerInterface <- value'
    
    

    method init : 'any1. 'any1 -> unit = fun (anyType) ->
        let anyType = Obj.repr anyType in
        begin
        ignore (self#setSource (anyType))
        end [@@warning "-7"]
    

    method getLayerInterface () : AllBinaryLayer.allBinaryLayer =
        begin
        (layerInterface :> AllBinaryLayer.allBinaryLayer)
        end [@@warning "-7"]
    

    method setLayerInterface : 'any1. 'any1 -> unit = fun (layerInterface_arg) ->
        let layerInterface_arg = Obj.repr layerInterface_arg in
        begin
        layerInterface <- (Obj.magic layerInterface_arg)
        end [@@warning "-7-20"]
    

    method setLayerInterfaceForCircularStaticPool : 'any1. 'any1 -> unit = fun (layerInterface_arg) ->
        let layerInterface_arg = Obj.repr layerInterface_arg in
        begin
        layerInterface <- (Obj.magic layerInterface_arg)
        end [@@warning "-7-20"]
    

    method toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ("TrackingEvent: \n"));
        ignore (!stringBuffer#append ("LayerInterface: "));
        ignore (!stringBuffer#append ((java_string_of (Obj.repr layerInterface))));
        (java_string_of (Obj.repr !stringBuffer))
        end [@@warning "-7"]

    initializer
      begin
        layerInterface <- ((AllBinaryLayer.get_nULL_ALLBINARY_LAYER ()) :> AllBinaryLayer.allBinaryLayer);
        ();
        (* super(...) is the inherit clause *) ();
        if ((Obj.repr allBinaryLayerInterface) != (Obj.repr (TrackingEventHandler.getInstance ()))) then begin
            (self#setLayerInterface ((Obj.magic allBinaryLayerInterface)))
        end
      end
  end
let () = java_register_constructor "TrackingEvent" (fun arguments -> Obj.repr (new trackingEvent (Obj.obj arguments)))


