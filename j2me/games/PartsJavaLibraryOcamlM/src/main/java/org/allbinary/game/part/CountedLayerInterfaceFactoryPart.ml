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
(* package org.allbinary.game.part *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Font *)
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.animation.Animation *)
(* import org.allbinary.animation.NullAnimationFactory *)
(* import org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory *)
(* import org.allbinary.graphics.font.MyFontProcessor *)
(* import org.allbinary.graphics.font.UpdateMyFontInterface *)
(* import org.allbinary.graphics.font.UpdateMyFontProcessor *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.math.PrimitiveLongUtil *)
(* import org.allbinary.util.ABHashtable *)

class countedLayerInterfaceFactoryPart ((total_arg : int), (countedPickedUpLayerInterfaceFactory_arg : CountedPickedUpLayerInterfaceFactory.countedPickedUpLayerInterfaceFactory)) =
  object (self)
    val mutable updateMyFontProcessor : MyFontProcessor.myFontProcessor = (Obj.magic 0)
    method updateMyFontProcessor = updateMyFontProcessor
    method set_updateMyFontProcessor value' = updateMyFontProcessor <- value'
    val mutable myFontProcessor : MyFontProcessor.myFontProcessor = (Obj.magic 0)
    method myFontProcessor = myFontProcessor
    method set_myFontProcessor value' = myFontProcessor <- value'
    val mutable animationInterface : Obj.t = Obj.repr 0
    method animationInterface : 'r. 'r = Obj.magic animationInterface
    method set_animationInterface : 'v. 'v -> unit = fun value' -> animationInterface <- Obj.repr value'
    val mutable total : int = 0
    method total = total
    method set_total value' = total <- value'
    val mutable totalString : char array = (Obj.magic 0)
    method totalString = totalString
    method set_totalString value' = totalString <- value'
    val mutable xOffset : int = 0
    method xOffset = xOffset
    method set_xOffset value' = xOffset <- value'
    val mutable countedPickedUpLayerInterfaceFactory : CountedPickedUpLayerInterfaceFactory.countedPickedUpLayerInterfaceFactory = (Obj.magic 0)
    method countedPickedUpLayerInterfaceFactory = countedPickedUpLayerInterfaceFactory
    method set_countedPickedUpLayerInterfaceFactory value' = countedPickedUpLayerInterfaceFactory <- value'
    val mutable primitiveLongUtil : PrimitiveLongUtil.primitiveLongUtil = (Obj.magic 0)
    method primitiveLongUtil = primitiveLongUtil
    method set_primitiveLongUtil value' = primitiveLongUtil <- value'
    
    

    method updateMeasurement : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        let font : Obj.t ref = ref ((Obj.repr ((Obj.magic graphics)#getFont ()))) in ();
        (self#setXOffset ((((Obj.magic !font)#charsWidth (totalString, 0, (primitiveLongUtil#getCurrentTotalDigits ()))) + ((((Obj.magic !font)#getSize ()) asr 1)))));
        myFontProcessor <- (MyFontProcessor.getInstance ())
        end [@@warning "-20"]
    

    method init : 'any2. int * 'any2 -> unit = fun ((total_arg : int), countedPickedUpLayerInterfaceFactory_arg) ->
        let countedPickedUpLayerInterfaceFactory_arg = Obj.repr countedPickedUpLayerInterfaceFactory_arg in
        begin
        (self#setCountedPickedUpLayerInterfaceFactory ((Obj.magic countedPickedUpLayerInterfaceFactory_arg)));
        total <- total_arg
        end [@@warning "-20"]
    

    method getInstance : 'any1. 'any1 * int * int * int -> AllBinaryLayer.allBinaryLayer = fun (hashtable, (x : int), (y : int), (z : int)) ->
        let hashtable = Obj.repr hashtable in
        try
        begin
        if (total > 0) then begin
            (self#setTotal ((total - 1)));
            raise (Java_return (Obj.repr (((self#getCountedPickedUpLayerInterfaceFactory ())#getNextInstance ((Obj.magic hashtable), x, y, z)))))
        end else begin
            raise (Failure ("No more left. Could use a listener to automatically remove"))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method getTotal () : int =
        begin
        total
        end
    

    method setTotal ((total_arg : int)) : unit =
        begin
        total <- total_arg;
        totalString <- (primitiveLongUtil#getCharArray (total_arg));
        myFontProcessor <- updateMyFontProcessor
        end
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (myFontProcessor#process ((Obj.magic graphics)))
        end [@@warning "-20"]
    

    method paintThreed : 'any1. 'any1 -> unit = fun (_graphics) ->
        begin
        ()
        end [@@warning "-20"]
    

    method getAnimationInterface : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic animationInterface)))
        end
    

    method setAnimationInterface : 'any1. 'any1 -> unit = fun (animationInterface_arg) ->
        let animationInterface_arg = Obj.repr animationInterface_arg in
        begin
        animationInterface <- Obj.repr ((Obj.magic animationInterface_arg))
        end [@@warning "-20"]
    

    method getXOffset () : int =
        begin
        xOffset
        end
    

    method setXOffset ((totalStringWidth : int)) : unit =
        begin
        xOffset <- totalStringWidth
        end
    

    method getTotalString () : char array =
        begin
        totalString
        end
    

    method getCountedPickedUpLayerInterfaceFactory () : CountedPickedUpLayerInterfaceFactory.countedPickedUpLayerInterfaceFactory =
        begin
        (countedPickedUpLayerInterfaceFactory :> CountedPickedUpLayerInterfaceFactory.countedPickedUpLayerInterfaceFactory)
        end
    

    method setCountedPickedUpLayerInterfaceFactory : 'any1. 'any1 -> unit = fun (countedPickedUpLayerInterfaceFactory_arg) ->
        let countedPickedUpLayerInterfaceFactory_arg = Obj.repr countedPickedUpLayerInterfaceFactory_arg in
        begin
        countedPickedUpLayerInterfaceFactory <- (Obj.magic countedPickedUpLayerInterfaceFactory_arg)
        end [@@warning "-20"]

    initializer
      begin
        updateMyFontProcessor <- ((new UpdateMyFontProcessor.updateMyFontProcessor (self)) :> MyFontProcessor.myFontProcessor);
        myFontProcessor <- (updateMyFontProcessor :> MyFontProcessor.myFontProcessor);
        animationInterface <- (Obj.repr ((NullAnimationFactory.getFactoryInstance ())#getInstance (0)));
        total <- 0;
        totalString <- (NullUtil.getInstance ())#nULL_CHAR_ARRAY;
        xOffset <- 0;
        countedPickedUpLayerInterfaceFactory <- ((CountedPickedUpLayerInterfaceFactory.get_nULL_COUNTED_PICKUP_LAYER_FACTORY ()) :> CountedPickedUpLayerInterfaceFactory.countedPickedUpLayerInterfaceFactory);
        ();
        ();
        primitiveLongUtil <- (PrimitiveLongUtil.createPowerOfTen (1000));
        (self#init (total_arg, countedPickedUpLayerInterfaceFactory_arg))
      end
  end [@@warning "-20"]
let () = java_register_constructor "CountedLayerInterfaceFactoryPart" (fun arguments -> Obj.repr (new countedLayerInterfaceFactoryPart (Obj.obj arguments)))

let nULL_COUNTED_LAYER_INTERFACE_FACTORY = (new countedLayerInterfaceFactoryPart (0, (CountedPickedUpLayerInterfaceFactory.get_nULL_COUNTED_PICKUP_LAYER_FACTORY ())))
let get_nULL_COUNTED_LAYER_INTERFACE_FACTORY () = nULL_COUNTED_LAYER_INTERFACE_FACTORY
let () = java_register_static "CountedLayerInterfaceFactoryPart.get_nULL_COUNTED_LAYER_INTERFACE_FACTORY" (fun _ -> Obj.repr (get_nULL_COUNTED_LAYER_INTERFACE_FACTORY ()))


