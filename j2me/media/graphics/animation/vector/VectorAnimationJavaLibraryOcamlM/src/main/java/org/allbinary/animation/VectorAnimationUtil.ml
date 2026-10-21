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
(* import org.allbinary.graphics.GPoint *)
(* import org.allbinary.util.BasicArrayList *)

class vectorAnimationUtil () =
  object (self)
    
    

    method toAnimationArrayFromListOfPointListWithPointsPerFrame : 'any1. 'any1 * int -> int array array array = fun (vector, (pointsPerFrame : int)) ->
        let vector = Obj.repr vector in
        begin
        let size : int ref = ref (((Obj.magic vector)#size ())) in ();
        let points : int array array array ref = ref ((Array.init (!size) (fun _ -> Array.make_matrix (pointsPerFrame) (2) 0))) in ();
        let nextBasicArrayList : BasicArrayList.basicArrayList ref = ref (((Obj.magic 0) :> BasicArrayList.basicArrayList)) in ();
        let framePoints : int array array ref = ref ((Obj.magic 0)) in ();
        for index = 0 to !size - 1 do
            nextBasicArrayList := (Obj.magic (Obj.magic vector)#objectArray.(index));
            framePoints := (self#toFrameArrayFromPointBasicArrayList (!nextBasicArrayList));
            for pointIndex = 0 to (Array.length !framePoints) - 1 do
                !points.(index).(pointIndex).(0) <- !framePoints.(pointIndex).(0);
                !points.(index).(pointIndex).(1) <- !framePoints.(pointIndex).(1)
            done
        done;
        !points
        end [@@warning "-20"]
    

    method toAnimationArrayFromListOfPointList : 'any1. 'any1 -> int array array array = fun (vector) ->
        let vector = Obj.repr vector in
        begin
        let size : int ref = ref (((Obj.magic vector)#size ())) in ();
        let points : int array array array ref = ref ((Array.init (!size) (fun _ -> Array.make_matrix (0) (0) 0))) in ();
        let nextBasicArrayList : BasicArrayList.basicArrayList ref = ref (((Obj.magic 0) :> BasicArrayList.basicArrayList)) in ();
        let framePoints : int array array ref = ref ((Obj.magic 0)) in ();
        for index = 0 to !size - 1 do
            nextBasicArrayList := (Obj.magic (Obj.magic vector)#objectArray.(index));
            framePoints := (self#toFrameArrayFromPointBasicArrayList (!nextBasicArrayList));
            !points.(index) <- (Array.make_matrix ((Array.length !framePoints)) (2) 0);
            for pointIndex = 0 to (Array.length !framePoints) - 1 do
                !points.(index).(pointIndex).(0) <- !framePoints.(pointIndex).(0);
                !points.(index).(pointIndex).(1) <- !framePoints.(pointIndex).(1)
            done
        done;
        !points
        end [@@warning "-20"]
    

    method toFrameArrayFromPointBasicArrayList : 'any1. 'any1 -> int array array = fun (list) ->
        let list = Obj.repr list in
        begin
        let points : int array array ref = ref ((Array.make_matrix (((Obj.magic list)#size ())) (2) 0)) in ();
        let size : int ref = ref (((Obj.magic list)#size ())) in ();
        for index = 0 to !size - 1 do
            let nextPoint : GPoint.gPoint ref = ref (((Obj.magic (Obj.magic list)#objectArray.(index)) :> GPoint.gPoint)) in ();
            !points.(index).(0) <- (!nextPoint#getX ());
            !points.(index).(1) <- (!nextPoint#getY ())
        done;
        !points
        end [@@warning "-20"]

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "VectorAnimationUtil" (fun arguments -> Obj.repr (new vectorAnimationUtil (Obj.obj arguments)))

let instance = (new vectorAnimationUtil ())
let get_instance () = instance
let () = java_register_static "VectorAnimationUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "VectorAnimationUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


