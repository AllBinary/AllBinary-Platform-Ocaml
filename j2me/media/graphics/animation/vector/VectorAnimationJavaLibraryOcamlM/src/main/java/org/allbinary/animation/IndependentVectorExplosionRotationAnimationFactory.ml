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
(* package org.allbinary.animation *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.vector.VectorInfo *)

class independentVectorExplosionRotationAnimationFactory ((vectorInfo_arg : VectorInfo.vectorInfo), (basicColor_arg : BasicColor.basicColor), (vectorAnimationFactoryInterface_arg : VectorAnimationFactoryInterface.vectorAnimationFactoryInterface)) =
  object (self)
    val mutable framePoints : int array array array = (Obj.magic 0)
    method framePoints = framePoints
    method set_framePoints value' = framePoints <- value'
    val mutable vectorInfo : VectorInfo.vectorInfo = (Obj.magic 0)
    method vectorInfo = vectorInfo
    method set_vectorInfo value' = vectorInfo <- value'
    val mutable basicColor : BasicColor.basicColor = (Obj.magic 0)
    method basicColor = basicColor
    method set_basicColor value' = basicColor <- value'
    val mutable vectorAnimationFactoryInterface : VectorAnimationFactoryInterface.vectorAnimationFactoryInterface = (Obj.magic 0)
    method vectorAnimationFactoryInterface = vectorAnimationFactoryInterface
    method set_vectorAnimationFactoryInterface value' = vectorAnimationFactoryInterface <- value'
    val mutable vectorExplosionGenerator : VectorExplosionGenerator.vectorExplosionGenerator = (Obj.magic 0)
    method vectorExplosionGenerator = vectorExplosionGenerator
    method set_vectorExplosionGenerator value' = vectorExplosionGenerator <- value'
    
    

    method init () : unit =
        begin
        framePoints <- ((VectorRotationGenerator.getInstance ())#getInstance (vectorInfo))
        end
    

    method getInstanceAnimation : 'any1 'return. 'any1 -> 'return = fun (animationInterface) ->
        let animationInterface = Obj.repr animationInterface in
        begin
        let frame : int ref = ref (0) in ();
        if ((Obj.magic animationInterface) != (Obj.magic 0)) then begin
            let rotationAnimationInterface : IndexedAnimation.indexedAnimation ref = ref (((Obj.magic (Obj.magic animationInterface)) :> IndexedAnimation.indexedAnimation)) in ();
            frame := (!rotationAnimationInterface#getFrame ())
        end;
        let points : int array array array ref = ref ((vectorExplosionGenerator#getInstance (framePoints.(!frame), 6, vectorExplosionGenerator#rOTATION))) in ();
        (Obj.magic ((vectorAnimationFactoryInterface#getInstance (!points, basicColor))))
        end [@@warning "-20"]

    initializer
      begin
        framePoints <- (NullUtil.getInstance ())#nULL_INT_ARRAY_ARRAY_ARRAY;
        ();
        ();
        ();
        vectorExplosionGenerator <- ((VectorExplosionGenerator.getInstance ()) :> VectorExplosionGenerator.vectorExplosionGenerator);
        ();
        vectorInfo <- vectorInfo_arg;
        basicColor <- basicColor_arg;
        vectorAnimationFactoryInterface <- vectorAnimationFactoryInterface_arg;
        (self#init ())
      end
  end
let () = java_register_constructor "IndependentVectorExplosionRotationAnimationFactory" (fun arguments -> Obj.repr (new independentVectorExplosionRotationAnimationFactory (Obj.obj arguments)))


