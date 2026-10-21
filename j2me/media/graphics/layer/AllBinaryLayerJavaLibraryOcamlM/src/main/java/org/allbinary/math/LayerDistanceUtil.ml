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
(* package org.allbinary.math *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.graphics.GPoint *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.logic.math.MathUtil *)

class layerDistanceUtil () =
  object
    val mutable mathUtil : MathUtil.mathUtil = (Obj.magic 0)
    method mathUtil = mathUtil
    method set_mathUtil value' = mathUtil <- value'
    

    method getDistance : 'any1 'any2. 'any1 * 'any2 -> int = fun (layerInterface, layerInterface2) ->
        let layerInterface = Obj.repr layerInterface in
        let layerInterface2 = Obj.repr layerInterface2 in
        begin
        let dx : int ref = ref ((((((Obj.magic layerInterface)#getXP ()) + ((Obj.magic layerInterface)#getHalfWidth ()))) - ((((Obj.magic layerInterface2)#getXP ()) + ((Obj.magic layerInterface2)#getHalfWidth ()))))) in ();
        let dy : int ref = ref ((((((Obj.magic layerInterface)#getYP ()) + ((Obj.magic layerInterface)#getHalfHeight ()))) - ((((Obj.magic layerInterface2)#getYP ()) + ((Obj.magic layerInterface2)#getHalfHeight ()))))) in ();
        (java_to_int (Obj.repr ((mathUtil#sqrt ((((!dx * !dx)) + ((!dy * !dy))))))))
        end [@@warning "-20"]
    

    method getDistance3D : 'any1 'any2. 'any1 * 'any2 -> int = fun (layerInterface, layerInterface2) ->
        let layerInterface = Obj.repr layerInterface in
        let layerInterface2 = Obj.repr layerInterface2 in
        begin
        let dx : int ref = ref ((((((Obj.magic layerInterface)#getXP ()) + ((Obj.magic layerInterface)#getHalfWidth ()))) - ((((Obj.magic layerInterface2)#getXP ()) + ((Obj.magic layerInterface2)#getHalfWidth ()))))) in ();
        let dy : int ref = ref ((((((Obj.magic layerInterface)#getYP ()) + ((Obj.magic layerInterface)#getHalfHeight ()))) - ((((Obj.magic layerInterface2)#getYP ()) + ((Obj.magic layerInterface2)#getHalfHeight ()))))) in ();
        let dz : int ref = ref ((((((Obj.magic layerInterface)#getZP ()) + ((Obj.magic layerInterface)#getHalfDepth ()))) - ((((Obj.magic layerInterface2)#getZP ()) + ((Obj.magic layerInterface2)#getHalfDepth ()))))) in ();
        (java_to_int (Obj.repr ((mathUtil#sqrt (((((!dx * !dx)) + ((!dy * !dy))) + ((!dz * !dz))))))))
        end [@@warning "-20"]
    

    method getDistanceAt : 'any1 'any2. 'any1 * 'any2 -> int = fun (layerInterface, point) ->
        let layerInterface = Obj.repr layerInterface in
        let point = Obj.repr point in
        begin
        let dx : int ref = ref ((((Obj.magic layerInterface)#getXP ()) - ((Obj.magic point)#getX ()))) in ();
        let dy : int ref = ref ((((Obj.magic layerInterface)#getYP ()) - ((Obj.magic point)#getY ()))) in ();
        (java_to_int (Obj.repr ((mathUtil#sqrt ((((!dx * !dx)) + ((!dy * !dy))))))))
        end [@@warning "-20"]

    initializer
      begin
        mathUtil <- ((MathUtil.getInstance ()) :> MathUtil.mathUtil);
        ()
      end
  end
let () = java_register_constructor "LayerDistanceUtil" (fun arguments -> Obj.repr (new layerDistanceUtil (Obj.obj arguments)))

let instance = (new layerDistanceUtil ())
let get_instance () = instance
let () = java_register_static "LayerDistanceUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "LayerDistanceUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


