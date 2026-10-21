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
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.math.SmallIntegerSingletonFactory *)
(* import org.allbinary.time.TimeDelayHelper *)
(* import org.allbinary.util.ABHashtable *)

let iNPUT_PROBABILITY : int ref = ref (((SmallIntegerSingletonFactory.getInstance ())#getAt (0)))
let get_iNPUT_PROBABILITY () = !iNPUT_PROBABILITY
let set_iNPUT_PROBABILITY value' = iNPUT_PROBABILITY := value'
let () = java_register_static "InputProbability.get_iNPUT_PROBABILITY" (fun _ -> Obj.repr (get_iNPUT_PROBABILITY ()))
class inputProbability ((likelyhoodIntegerArray_arg : int array array), (repeatLikelyhoodIntegerArray_arg : int array), (max_arg : int), (timeDelayHelper_arg : TimeDelayHelper.timeDelayHelper)) =
  object (self)
    val mutable likelyhoodIntegerArray : int array array = (Obj.magic 0)
    method likelyhoodIntegerArray = likelyhoodIntegerArray
    method set_likelyhoodIntegerArray value' = likelyhoodIntegerArray <- value'
    val mutable repeatLikelyhoodIntegerArray : int array = (Obj.magic 0)
    method repeatLikelyhoodIntegerArray = repeatLikelyhoodIntegerArray
    method set_repeatLikelyhoodIntegerArray value' = repeatLikelyhoodIntegerArray <- value'
    val mutable max : int = 0
    method max = max
    method set_max value' = max <- value'
    val mutable timeDelayHelper : TimeDelayHelper.timeDelayHelper = (Obj.magic 0)
    method timeDelayHelper = timeDelayHelper
    method set_timeDelayHelper value' = timeDelayHelper <- value'
    
    

    method getLikelyhoodIntegerArray () : int array array =
        begin
        likelyhoodIntegerArray
        end
    

    method getRepeatLikelyhoodIntegerArray () : int array =
        begin
        repeatLikelyhoodIntegerArray
        end
    

    method getMax () : int =
        begin
        max
        end
    

    method getTimeDelayHelper () : TimeDelayHelper.timeDelayHelper =
        begin
        (timeDelayHelper :> TimeDelayHelper.timeDelayHelper)
        end
    

    method toHashtable : 'return. unit -> 'return = fun () ->
        begin
        let hashtable : Obj.t ref = ref ((Obj.repr ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashtable ()))) in ();
        ignore ((Obj.magic !hashtable)#put (!iNPUT_PROBABILITY, self));
        (Obj.magic ((Obj.magic !hashtable)))
        end

    initializer
      begin
        ();
        ();
        ();
        ();
        ();
        likelyhoodIntegerArray <- likelyhoodIntegerArray_arg;
        repeatLikelyhoodIntegerArray <- repeatLikelyhoodIntegerArray_arg;
        max <- max_arg;
        timeDelayHelper <- timeDelayHelper_arg
      end
  end
let () = java_register_constructor "InputProbability" (fun arguments -> Obj.repr (new inputProbability (Obj.obj arguments)))


