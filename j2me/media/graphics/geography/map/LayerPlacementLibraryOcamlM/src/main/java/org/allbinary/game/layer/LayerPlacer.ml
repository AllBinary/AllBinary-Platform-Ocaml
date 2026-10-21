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
(* package org.allbinary.game.layer *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.Enumeration *)
(* import org.allbinary.graphics.GPoint *)
(* import org.allbinary.graphics.PointFactory *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.layer.LayerInterfaceFactory *)
(* import org.allbinary.layer.LayerInterfaceVisitor *)
(* import org.allbinary.util.ABHashtable *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.EnumerationUtil *)

class layerPlacer ((layerInterfaceVisitor_arg : LayerInterfaceVisitor.layerInterfaceVisitor), (dimension_arg : GPoint.gPoint)) =
  object (self)
    val mutable enumerationUtil : EnumerationUtil.enumerationUtil = (Obj.magic 0)
    method enumerationUtil = enumerationUtil
    method set_enumerationUtil value' = enumerationUtil <- value'
    val mutable layerInterfaceVisitor : LayerInterfaceVisitor.layerInterfaceVisitor = (Obj.magic 0)
    method layerInterfaceVisitor = layerInterfaceVisitor
    method set_layerInterfaceVisitor value' = layerInterfaceVisitor <- value'
    val mutable dimension : GPoint.gPoint = (Obj.magic 0)
    method dimension = dimension
    method set_dimension value' = dimension <- value'
    
    

    method processList : 'any1. 'any1 -> unit = fun (list) ->
        let list = Obj.repr list in
        begin
        let size : int ref = ref (((Obj.magic list)#size ())) in ();
        let layerPlacementInterface : LayerPlacementInterface.layerPlacementInterface ref = ref (((Obj.magic 0) :> LayerPlacementInterface.layerPlacementInterface)) in ();
        for index = 0 to !size - 1 do
            layerPlacementInterface := (Obj.magic (Obj.magic list)#objectArray.(index));
            (self#process (!layerPlacementInterface))
        done
        end [@@warning "-20"]
    

    method process : 'any1. 'any1 -> unit = fun (layerPlacementInterface) ->
        let layerPlacementInterface = Obj.repr layerPlacementInterface in
        begin
        let relativePoint : GPoint.gPoint ref = ref (((self#getPoint ((Obj.magic layerPlacementInterface))) :> GPoint.gPoint)) in ();
        let layerInterfaceFactory : LayerInterfaceFactory.layerInterfaceFactory ref = ref (((LayerInterfaceFactory.getInstance ()) :> LayerInterfaceFactory.layerInterfaceFactory)) in ();
        let hashtable : Obj.t ref = ref ((Obj.repr ((Obj.magic layerPlacementInterface)#getInstance ()))) in ();
        let enumeration : java_enumeration ref = ref ((((Obj.magic !hashtable)#keys ()) :> java_enumeration)) in ();
        let point : GPoint.gPoint ref = ref (((Obj.magic 0) :> GPoint.gPoint)) in ();
        let layerHashtable : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        let x : int ref = ref (0) in ();
        let y : int ref = ref (0) in ();
        let z : int ref = ref (0) in ();
        let layerInterface : AllBinaryLayer.allBinaryLayer ref = ref (((Obj.magic 0) :> AllBinaryLayer.allBinaryLayer)) in ();
        while (enumerationUtil#hasMoreElements (!enumeration)) do
            point := (Obj.magic (enumerationUtil#nextElement (!enumeration)));
            layerHashtable := Obj.repr ((Obj.magic ((Obj.magic !hashtable)#get (!point))));
            x := ((!point#getX ()) + (!relativePoint#getX ()));
            y := ((!point#getY ()) + (!relativePoint#getY ()));
            z := ((!point#getZ ()) + (!relativePoint#getZ ()));
            layerInterface := (!layerInterfaceFactory#getNexInstance ((Obj.magic !layerHashtable), !x, !y, !z));
            ignore (layerInterfaceVisitor#visit (!layerInterface))
        done
        end [@@warning "-20"]
    

    method getPoint : 'any1. 'any1 -> GPoint.gPoint = fun (layerPlacementInterface) ->
        let layerPlacementInterface = Obj.repr layerPlacementInterface in
        try
        begin
        let pointFactory : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ()))))) in ();
        let layerPlacementType : LayerPlacementType.layerPlacementType ref = ref ((((Obj.magic layerPlacementInterface)#getLayerType ()) :> LayerPlacementType.layerPlacementType)) in ();
        if ((Obj.repr !layerPlacementType) == (Obj.repr (LayerPlacementTypeFactory.getInstance ())#mAP)) then begin
            let width : int ref = ref (((Obj.magic layerPlacementInterface)#getWidth ())) in ();
            let height : int ref = ref (((Obj.magic layerPlacementInterface)#getHeight ())) in ();
            let x : int ref = ref ((((((dimension#getX ()) - !width)) / 2))) in ();
            let y : int ref = ref ((((((dimension#getY ()) - !height)) / 2))) in ();
            raise (Java_return (Obj.repr (((Obj.magic !pointFactory)#createXY (!x, !y)))))
        end else if ((Obj.repr !layerPlacementType) == (Obj.repr (LayerPlacementTypeFactory.getInstance ())#uP)) then begin
            let width : int ref = ref (((Obj.magic layerPlacementInterface)#getWidth ())) in ();
            let height : int ref = ref (((Obj.magic layerPlacementInterface)#getHeight ())) in ();
            let x : int ref = ref ((((((dimension#getX ()) - !width)) / 2))) in ();
            let y : int ref = ref ((-!height)) in ();
            raise (Java_return (Obj.repr (((Obj.magic !pointFactory)#createXY (!x, !y)))))
        end else begin
            raise (Failure ("PlacementType Not Recognized"))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]

    initializer
      begin
        enumerationUtil <- ((EnumerationUtil.getInstance ()) :> EnumerationUtil.enumerationUtil);
        ();
        ();
        ();
        layerInterfaceVisitor <- layerInterfaceVisitor_arg;
        dimension <- dimension_arg
      end
  end
let () = java_register_constructor "LayerPlacer" (fun arguments -> Obj.repr (new layerPlacer (Obj.obj arguments)))


