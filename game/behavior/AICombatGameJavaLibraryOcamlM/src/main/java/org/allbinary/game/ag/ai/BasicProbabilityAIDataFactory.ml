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
(* package org.allbinary.game.ag.ai *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Canvas *)
(* import org.allbinary.logic.math.SmallIntegerSingletonFactory *)
(* import org.allbinary.time.NoTimeDelayHelper *)
(* import org.allbinary.util.ABHashtable *)

class basicProbabilityAIDataFactory () =
  object
    

    method getInstance : 'return. unit -> 'return = fun () ->
        begin
        let likelyhoodIntegerArray : int array array ref = ref ((Array.make_matrix (((Obj.magic (java_call_static "Canvas.get_kEY_NUM9" (Obj.repr ()))) + 1)) (2) (Obj.magic 0))) in ();
        let smallIntegerSingletonFactory : SmallIntegerSingletonFactory.smallIntegerSingletonFactory ref = ref (((SmallIntegerSingletonFactory.getInstance ()) :> SmallIntegerSingletonFactory.smallIntegerSingletonFactory)) in ();
        !likelyhoodIntegerArray.((Obj.magic (java_call_static "Canvas.get_uP" (Obj.repr ())))).(0) <- (!smallIntegerSingletonFactory#getAt (0));
        !likelyhoodIntegerArray.((Obj.magic (java_call_static "Canvas.get_uP" (Obj.repr ())))).(1) <- (!smallIntegerSingletonFactory#getAt (10));
        !likelyhoodIntegerArray.((Obj.magic (java_call_static "Canvas.get_dOWN" (Obj.repr ())))).(0) <- (!smallIntegerSingletonFactory#getAt (10));
        !likelyhoodIntegerArray.((Obj.magic (java_call_static "Canvas.get_dOWN" (Obj.repr ())))).(1) <- (!smallIntegerSingletonFactory#getAt (14));
        !likelyhoodIntegerArray.((Obj.magic (java_call_static "Canvas.get_lEFT" (Obj.repr ())))).(0) <- (!smallIntegerSingletonFactory#getAt (14));
        !likelyhoodIntegerArray.((Obj.magic (java_call_static "Canvas.get_lEFT" (Obj.repr ())))).(1) <- (!smallIntegerSingletonFactory#getAt (18));
        !likelyhoodIntegerArray.((Obj.magic (java_call_static "Canvas.get_rIGHT" (Obj.repr ())))).(0) <- (!smallIntegerSingletonFactory#getAt (18));
        !likelyhoodIntegerArray.((Obj.magic (java_call_static "Canvas.get_rIGHT" (Obj.repr ())))).(1) <- (!smallIntegerSingletonFactory#getAt (22));
        !likelyhoodIntegerArray.((Obj.magic (java_call_static "Canvas.get_kEY_NUM7" (Obj.repr ())))).(0) <- (!smallIntegerSingletonFactory#getAt (22));
        !likelyhoodIntegerArray.((Obj.magic (java_call_static "Canvas.get_kEY_NUM7" (Obj.repr ())))).(1) <- (!smallIntegerSingletonFactory#getAt (26));
        !likelyhoodIntegerArray.((Obj.magic (java_call_static "Canvas.get_kEY_NUM9" (Obj.repr ())))).(0) <- (!smallIntegerSingletonFactory#getAt (26));
        !likelyhoodIntegerArray.((Obj.magic (java_call_static "Canvas.get_kEY_NUM9" (Obj.repr ())))).(1) <- (!smallIntegerSingletonFactory#getAt (30));
        !likelyhoodIntegerArray.((Obj.magic (java_call_static "Canvas.get_kEY_NUM1" (Obj.repr ())))).(0) <- (!smallIntegerSingletonFactory#getAt (30));
        !likelyhoodIntegerArray.((Obj.magic (java_call_static "Canvas.get_kEY_NUM1" (Obj.repr ())))).(1) <- (!smallIntegerSingletonFactory#getAt (40));
        let repeatLikelyhoodIntegerArray : int array ref = ref ((Array.make (((Obj.magic (java_call_static "Canvas.get_kEY_NUM9" (Obj.repr ()))) + 1)) (Obj.magic 0))) in ();
        !repeatLikelyhoodIntegerArray.((Obj.magic (java_call_static "Canvas.get_uP" (Obj.repr ())))) <- (!smallIntegerSingletonFactory#getAt (0));
        !repeatLikelyhoodIntegerArray.((Obj.magic (java_call_static "Canvas.get_dOWN" (Obj.repr ())))) <- (!smallIntegerSingletonFactory#getAt (0));
        !repeatLikelyhoodIntegerArray.((Obj.magic (java_call_static "Canvas.get_lEFT" (Obj.repr ())))) <- (!smallIntegerSingletonFactory#getAt (0));
        !repeatLikelyhoodIntegerArray.((Obj.magic (java_call_static "Canvas.get_rIGHT" (Obj.repr ())))) <- (!smallIntegerSingletonFactory#getAt (0));
        !repeatLikelyhoodIntegerArray.((Obj.magic (java_call_static "Canvas.get_kEY_NUM7" (Obj.repr ())))) <- (!smallIntegerSingletonFactory#getAt (0));
        !repeatLikelyhoodIntegerArray.((Obj.magic (java_call_static "Canvas.get_kEY_NUM9" (Obj.repr ())))) <- (!smallIntegerSingletonFactory#getAt (0));
        !repeatLikelyhoodIntegerArray.((Obj.magic (java_call_static "Canvas.get_kEY_NUM1" (Obj.repr ())))) <- (!smallIntegerSingletonFactory#getAt (10));
        let inputProbability : InputProbability.inputProbability ref = ref (((new InputProbability.inputProbability (!likelyhoodIntegerArray, !repeatLikelyhoodIntegerArray, 42, (NoTimeDelayHelper.get_sINGLETON ()))) :> InputProbability.inputProbability)) in ();
        (Obj.magic ((!inputProbability#toHashtable ())))
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "BasicProbabilityAIDataFactory" (fun arguments -> Obj.repr (new basicProbabilityAIDataFactory (Obj.obj arguments)))


