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
(* package org.allbinary.game.combat.damage *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.game.rand.MyRandomFactory *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.color.BasicColorArrayIndexer *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.graphics.color.BasicColorSetUtil *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.logic.java.character.CharArrayFactory *)
(* import org.allbinary.logic.math.PrimitiveLongUtil *)
(* import org.allbinary.util.CircularIndexUtil *)
(* import org.allbinary.view.ViewPosition *)
(* import org.allbinary.view.ViewPositionBase *)

let basicColorArrayIndexer : BasicColorArrayIndexer.basicColorArrayIndexer = ((new BasicColorArrayIndexer.basicColorArrayIndexer ([| (BasicColorFactory.getInstance ())#wHITE; (BasicColorFactory.getInstance ())#rED; (BasicColorFactory.getInstance ())#yELLOW; (BasicColorFactory.getInstance ())#bLUE |])) :> BasicColorArrayIndexer.basicColorArrayIndexer)
let get_basicColorArrayIndexer () = basicColorArrayIndexer
let () = java_register_static "PtsDamageFloaters.get_basicColorArrayIndexer" (fun _ -> Obj.repr (get_basicColorArrayIndexer ()))
class ptsDamageFloaters ((layerInterface_arg : AllBinaryLayer.allBinaryLayer)) =
  object
    inherit DamageFloaters.damageFloaters ()
    val mutable basicSetColorUtil : BasicColorSetUtil.basicColorSetUtil = (Obj.magic 0)
    method basicSetColorUtil = basicSetColorUtil
    method set_basicSetColorUtil value' = basicSetColorUtil <- value'
    val mutable layerInterface : AllBinaryLayer.allBinaryLayer = (Obj.magic 0)
    method layerInterface = layerInterface
    method set_layerInterface value' = layerInterface <- value'
    val mutable lastDamage : int array = (Obj.magic 0)
    method lastDamage = lastDamage
    method set_lastDamage value' = lastDamage <- value'
    val mutable lastDamageString : char array array = (Obj.magic 0)
    method lastDamageString = lastDamageString
    method set_lastDamageString value' = lastDamageString <- value'
    val mutable lastDamageStringSizeArray : int array = (Obj.magic 0)
    method lastDamageStringSizeArray = lastDamageStringSizeArray
    method set_lastDamageStringSizeArray value' = lastDamageStringSizeArray <- value'
    val mutable circularIndexUtil : CircularIndexUtil.circularIndexUtil = (Obj.magic 0)
    method circularIndexUtil = circularIndexUtil
    method set_circularIndexUtil value' = circularIndexUtil <- value'
    val mutable primitiveLongUtil : PrimitiveLongUtil.primitiveLongUtil = (Obj.magic 0)
    method primitiveLongUtil = primitiveLongUtil
    method set_primitiveLongUtil value' = primitiveLongUtil <- value'
    val mutable myRandomFactory : MyRandomFactory.myRandomFactory = (Obj.magic 0)
    method myRandomFactory = myRandomFactory
    method set_myRandomFactory value' = myRandomFactory <- value'
    
    

    method add ((damage : int)) : unit =
        begin
        let index : int ref = ref ((circularIndexUtil#getIndex ())) in ();
        lastDamage.(!index) <- damage;
        lastDamageString.(!index) <- (primitiveLongUtil#getCharArray (lastDamage.(!index)));
        lastDamageStringSizeArray.(!index) <- (primitiveLongUtil#getCurrentTotalDigits ());
        ignore (circularIndexUtil#next ())
        end [@@warning "-7"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        let viewPosition : ViewPositionBase.viewPositionBase ref = ref (((layerInterface#getViewPosition ()) :> ViewPositionBase.viewPositionBase)) in ();
        let x : int ref = ref ((!viewPosition#getX ())) in ();
        let y : int ref = ref ((!viewPosition#getY ())) in ();
        for index = ((Array.length lastDamage) - 1) downto 0 do
            if (lastDamage.(index) <> 0) then begin
                let delta : int ref = ref ((10 * ((index + 2)))) in ();
                ignore (basicSetColorUtil#setBasicColorP ((Obj.magic graphics), (basicColorArrayIndexer#get ())));
                ignore ((Obj.magic graphics)#drawChars (lastDamageString.(index), 0, lastDamageStringSizeArray.(index), (!x - (myRandomFactory#getNextInt (!delta))), (!y - !delta), 0));
                ignore (basicColorArrayIndexer#next ())
            end;
            lastDamage.(index) <- 0
        done
        end [@@warning "-7-20"]

    initializer
      begin
        basicSetColorUtil <- ((BasicColorSetUtil.getInstance ()) :> BasicColorSetUtil.basicColorSetUtil);
        ();
        lastDamage <- (Array.make (5) 0);
        lastDamageString <- (Array.make_matrix (5) (0) '\000');
        lastDamageStringSizeArray <- (Array.make (5) 0);
        circularIndexUtil <- ((CircularIndexUtil.createInstance (5)) :> CircularIndexUtil.circularIndexUtil);
        ();
        myRandomFactory <- ((MyRandomFactory.getInstance ()) :> MyRandomFactory.myRandomFactory);
        ();
        primitiveLongUtil <- (PrimitiveLongUtil.createPowerOfTen (100000));
        layerInterface <- layerInterface_arg;
        let cHAR_ARRAY : char array ref = ref (((CharArrayFactory.getInstance ())#getZeroCharArray ())) in ();
        for index = ((Array.length lastDamageString) - 1) downto 0 do
            lastDamageString.(index) <- !cHAR_ARRAY
        done
      end
  end
let () = java_register_constructor "PtsDamageFloaters" (fun arguments -> Obj.repr (new ptsDamageFloaters (Obj.obj arguments)))


