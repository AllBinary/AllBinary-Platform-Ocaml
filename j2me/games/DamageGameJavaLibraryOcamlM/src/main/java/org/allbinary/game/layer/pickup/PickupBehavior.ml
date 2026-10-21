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
(* package org.allbinary.game.layer.pickup *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.health.HealthInterfaceCompositeInterface *)
(* import org.allbinary.game.layer.CollidableCompositeLayer *)
(* import org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer *)
(* import org.allbinary.game.part.CountedLayerInterfaceFactoryPart *)
(* import org.allbinary.game.part.PartInterface *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.string.CommonStrings *)

let nULL_PICKUP_BEHAVIOR : Obj.t ref = ref ((Obj.repr (NullUtil.getInstance ())#nULL_OBJECT))
let get_nULL_PICKUP_BEHAVIOR () = !nULL_PICKUP_BEHAVIOR
let set_nULL_PICKUP_BEHAVIOR value' = nULL_PICKUP_BEHAVIOR := value'
let () = java_register_static "PickupBehavior.get_nULL_PICKUP_BEHAVIOR" (fun _ -> Obj.repr (get_nULL_PICKUP_BEHAVIOR ()))
class pickupBehavior ((ownerLayerInterface_arg : CollidableCompositeLayer.collidableCompositeLayer), (countedIndex_arg : int)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable countedIndex : int = 0
    method countedIndex = countedIndex
    method set_countedIndex value' = countedIndex <- value'
    val mutable ownerLayerInterface : CollidableCompositeLayer.collidableCompositeLayer = (Obj.magic 0)
    method ownerLayerInterface = ownerLayerInterface
    method set_ownerLayerInterface value' = ownerLayerInterface <- value'
    
    

    method doPickup : 'any1. 'any1 -> unit = fun (pickupProcessorInterface) ->
        let pickupProcessorInterface = Obj.repr pickupProcessorInterface in
        begin
        (try
            let healthInterfaceCompositeInterface : HealthInterfaceCompositeInterface.healthInterfaceCompositeInterface ref = ref (((Obj.magic ownerLayerInterface) :> HealthInterfaceCompositeInterface.healthInterfaceCompositeInterface)) in ();
            if ((!healthInterfaceCompositeInterface#getHealthInterface ())#isAlive ()) then begin
                ignore ((Obj.magic pickupProcessorInterface)#process (ownerLayerInterface))
            end
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, "doPickup", e))
        end)
        end [@@warning "-20"]
    

    method doPickupLayer : 'any1. 'any1 -> unit = fun (pickupLayerInterface) ->
        let pickupLayerInterface = Obj.repr pickupLayerInterface in
        begin
        (try
            let pickedUpLayerInterfaceFactoryInterface : PickedUpLayerInterfaceFactoryInterface.pickedUpLayerInterfaceFactoryInterface ref = ref ((((Obj.magic pickupLayerInterface)#getPickedUpLayerInterfaceFactoryInterface ()) :> PickedUpLayerInterfaceFactoryInterface.pickedUpLayerInterfaceFactoryInterface)) in ();
            let pickedUpLayerType : PickedUpLayerType.pickedUpLayerType ref = ref (((!pickedUpLayerInterfaceFactoryInterface#getPickedUpLayerType ()) :> PickedUpLayerType.pickedUpLayerType)) in ();
            let pickedUpLayerTypeFactory : PickedUpLayerTypeFactory.pickedUpLayerTypeFactory ref = ref (((PickedUpLayerTypeFactory.getInstance ()) :> PickedUpLayerTypeFactory.pickedUpLayerTypeFactory)) in ();
            if (((((Obj.repr !pickedUpLayerType) == (Obj.repr !pickedUpLayerTypeFactory#bEAM)) || ((Obj.repr !pickedUpLayerType) == (Obj.repr !pickedUpLayerTypeFactory#mINE))) || ((Obj.repr !pickedUpLayerType) == (Obj.repr !pickedUpLayerTypeFactory#pROJECTILE))) || ((Obj.repr !pickedUpLayerType) == (Obj.repr !pickedUpLayerTypeFactory#eNHANCEMENT))) then begin
                (self#add ((Obj.magic !pickedUpLayerInterfaceFactoryInterface)))
            end else if ((Obj.repr (!pickedUpLayerInterfaceFactoryInterface#getPickedUpLayerType ())) == (Obj.repr !pickedUpLayerTypeFactory#pART)) then begin
                let collidableDestroyableDamageableLayer : Obj.t ref = ref ((Obj.repr (Obj.magic ownerLayerInterface))) in ();
                ignore ((Obj.magic !collidableDestroyableDamageableLayer)#addPart (!pickedUpLayerInterfaceFactoryInterface))
            end else if ((Obj.repr !pickedUpLayerType) == (Obj.repr !pickedUpLayerTypeFactory#nONE)) then begin
                ()
            end else begin
                let pickupProcessorInterface : PickupProcessorInterface.pickupProcessorInterface ref = ref (((Obj.magic !pickedUpLayerInterfaceFactoryInterface) :> PickupProcessorInterface.pickupProcessorInterface)) in ();
                (self#doPickup (!pickupProcessorInterface))
            end;
            ignore ((Obj.magic pickupLayerInterface)#setPickedUp ())
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore (Obj.magic (java_call_static "PreLogUtil.putOE" (Obj.repr (!commonStrings#eXCEPTION, self, "doPickup", e))))
        end)
        end [@@warning "-20"]
    

    method add : 'any1. 'any1 -> unit = fun (countedPickedUpLayerInterfaceFactoryInterface) ->
        let countedPickedUpLayerInterfaceFactoryInterface = Obj.repr countedPickedUpLayerInterfaceFactoryInterface in
        begin
        let partIndex : int ref = ref ((((Obj.magic countedPickedUpLayerInterfaceFactoryInterface)#getId ()) + countedIndex)) in ();
        (self#addAt ((Obj.magic countedPickedUpLayerInterfaceFactoryInterface), !partIndex))
        end [@@warning "-20"]
    

    method addAt : 'any1. 'any1 * int -> unit = fun (countedPickedUpLayerInterfaceFactoryInterface, (partIndex : int)) ->
        let countedPickedUpLayerInterfaceFactoryInterface = Obj.repr countedPickedUpLayerInterfaceFactoryInterface in
        begin
        let collidableDestroyableDamageableLayer : Obj.t ref = ref ((Obj.repr (Obj.magic ownerLayerInterface))) in ();
        let countedLayerInterfaceFactory : CountedLayerInterfaceFactoryPart.countedLayerInterfaceFactoryPart ref = ref (((Obj.magic ((Obj.magic !collidableDestroyableDamageableLayer)#getPartInterfaceArray ()).(partIndex)) :> CountedLayerInterfaceFactoryPart.countedLayerInterfaceFactoryPart)) in ();
        ignore (!countedLayerInterfaceFactory#setTotal (((!countedLayerInterfaceFactory#getTotal ()) + ((Obj.magic countedPickedUpLayerInterfaceFactoryInterface)#getTotal ()))))
        end [@@warning "-20"]
    

    method getFirstAvailableCountedLayerInterfaceFactory ((pickedUpLayerTypeArray : PickedUpLayerType.pickedUpLayerType array)) : CountedLayerInterfaceFactoryPart.countedLayerInterfaceFactoryPart =
        try
        begin
        let collidableDestroyableDamageableLayer : Obj.t ref = ref ((Obj.repr (Obj.magic ownerLayerInterface))) in ();
        let partInterfaceArray : PartInterface.partInterface array ref = ref (((Obj.magic !collidableDestroyableDamageableLayer)#getPartInterfaceArray ())) in ();
        let size : int ref = ref ((Array.length !partInterfaceArray)) in ();
        let nextCountedLayerInterfaceFactory : CountedLayerInterfaceFactoryPart.countedLayerInterfaceFactoryPart ref = ref (((Obj.magic 0) :> CountedLayerInterfaceFactoryPart.countedLayerInterfaceFactoryPart)) in ();
        let countedPickedUpLayerInterfaceFactory : CountedPickedUpLayerInterfaceFactory.countedPickedUpLayerInterfaceFactory ref = ref (((Obj.magic 0) :> CountedPickedUpLayerInterfaceFactory.countedPickedUpLayerInterfaceFactory)) in ();
        for index = countedIndex to !size - 1 do
            nextCountedLayerInterfaceFactory := (Obj.magic ((Obj.magic !collidableDestroyableDamageableLayer)#getPartInterfaceArray ()).(index));
            countedPickedUpLayerInterfaceFactory := (!nextCountedLayerInterfaceFactory#getCountedPickedUpLayerInterfaceFactory ());
            let index2 : int ref = ref ((Array.length pickedUpLayerTypeArray)) in ();
            while ((index2 := !index2 - 1; !index2) >= 0) do
                if ((Obj.repr (!countedPickedUpLayerInterfaceFactory#getPickedUpLayerType ())) == (Obj.repr pickedUpLayerTypeArray.(!index2))) then begin
                    if ((!nextCountedLayerInterfaceFactory#getTotal ()) > 0) then begin
                        raise (Java_return (Obj.repr (!nextCountedLayerInterfaceFactory)))
                    end
                end
            done
        done;
        ((CountedLayerInterfaceFactoryPart.get_nULL_COUNTED_LAYER_INTERFACE_FACTORY ()) :> CountedLayerInterfaceFactoryPart.countedLayerInterfaceFactoryPart)
        end
        with Java_return value -> Obj.obj value
    

    method getCountedLayerInterfaceFactoryForSlot ((slotIndex : int)) : CountedLayerInterfaceFactoryPart.countedLayerInterfaceFactoryPart =
        try
        begin
        let currentSlot : int ref = ref (0) in ();
        let collidableDestroyableDamageableLayer : Obj.t ref = ref ((Obj.repr (Obj.magic ownerLayerInterface))) in ();
        let partInterfaceArray : PartInterface.partInterface array ref = ref (((Obj.magic !collidableDestroyableDamageableLayer)#getPartInterfaceArray ())) in ();
        let size : int ref = ref ((Array.length !partInterfaceArray)) in ();
        let nextCountedLayerInterfaceFactory : CountedLayerInterfaceFactoryPart.countedLayerInterfaceFactoryPart ref = ref (((Obj.magic 0) :> CountedLayerInterfaceFactoryPart.countedLayerInterfaceFactoryPart)) in ();
        for index = countedIndex to !size - 1 do
            nextCountedLayerInterfaceFactory := (Obj.magic ((Obj.magic !collidableDestroyableDamageableLayer)#getPartInterfaceArray ()).(index));
            if ((!nextCountedLayerInterfaceFactory#getTotal ()) > 0) then begin
                if (!currentSlot = slotIndex) then begin
                    raise (Java_return (Obj.repr (!nextCountedLayerInterfaceFactory)))
                end else begin
                    currentSlot := !currentSlot + 1
                end
            end
        done;
        ((CountedLayerInterfaceFactoryPart.get_nULL_COUNTED_LAYER_INTERFACE_FACTORY ()) :> CountedLayerInterfaceFactoryPart.countedLayerInterfaceFactoryPart)
        end
        with Java_return value -> Obj.obj value
    

    method getCountedIndex () : int =
        begin
        countedIndex
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        ();
        ownerLayerInterface <- ownerLayerInterface_arg;
        countedIndex <- countedIndex_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "PickupBehavior" (fun arguments -> Obj.repr (new pickupBehavior (Obj.obj arguments)))

let getNullInstance () =
        begin
        if ((Obj.repr !nULL_PICKUP_BEHAVIOR) == (Obj.repr (NullUtil.getInstance ())#nULL_OBJECT)) then begin
            nULL_PICKUP_BEHAVIOR := (new pickupBehavior ((CollidableCompositeLayer.getNullInstance ()), 0))
        end;
        (Obj.magic !nULL_PICKUP_BEHAVIOR)
        end
let () = java_register_static "PickupBehavior.getNullInstance" (fun arguments -> Obj.repr (getNullInstance (Obj.obj arguments)))


