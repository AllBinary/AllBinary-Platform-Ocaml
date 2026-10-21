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
(* import org.allbinary.graphics.PointFactory *)
(* import org.allbinary.graphics.pipeline.RandomRotationFactory *)
(* import org.allbinary.graphics.pipeline.RandomTranslation *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.util.BasicArrayListS *)

class vectorExplosionGenerator () =
  object (self)
    val mutable rANDOM : VectorExplosionType.vectorExplosionType = (Obj.magic 0)
    method rANDOM = rANDOM
    method set_rANDOM value' = rANDOM <- value'
    val mutable rOTATION : VectorExplosionType.vectorExplosionType = (Obj.magic 0)
    method rOTATION = rOTATION
    method set_rOTATION value' = rOTATION <- value'
    val mutable vectorAnimationUtil : VectorAnimationUtil.vectorAnimationUtil = (Obj.magic 0)
    method vectorAnimationUtil = vectorAnimationUtil
    method set_vectorAnimationUtil value' = vectorAnimationUtil <- value'
    val mutable randomRotationFactory : RandomRotationFactory.randomRotationFactory = (Obj.magic 0)
    method randomRotationFactory = randomRotationFactory
    method set_randomRotationFactory value' = randomRotationFactory <- value'
    
    

    method createList : 'any1 'any3. 'any1 * int * 'any3 -> BasicArrayList.basicArrayList = fun (list, (howMuch : int), type_) ->
        let list = Obj.repr list in
        let type_ = Obj.repr type_ in
        begin
        let point : GPoint.gPoint ref = ref (((Obj.magic 0) :> GPoint.gPoint)) in ();
        let size : int ref = ref (((Obj.magic list)#size ())) in ();
        let points : int array array ref = ref ((Array.make_matrix (!size) (2) 0)) in ();
        for index = 0 to !size - 1 do
            point := (Obj.magic (Obj.magic list)#objectArray.(index));
            !points.(index).(0) <- (!point#getX ());
            !points.(index).(1) <- (!point#getY ())
        done;
        ((self#createListFromPoints ((Obj.magic list), !points, howMuch, (Obj.magic type_))) :> BasicArrayList.basicArrayList)
        end [@@warning "-20"]
    

    (* Java overload getInstance(ArrayType, INT, VectorExplosionType) is not converted: OCaml has one method per name *)
    

    method getInstanceStartFrame : 'any3. int array array * int * 'any3 * bool -> BasicArrayList.basicArrayList = fun ((points : int array array), (howMuch : int), type_, (startFrame : bool)) ->
        let type_ = Obj.repr type_ in
        begin
        (try
            let pointsBasicArrayList : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListS.basicArrayListS (howMuch)) :> BasicArrayList.basicArrayList)) in ();
            ignore (!pointsBasicArrayList#add ((self#createPointsBasicArrayList (points))));
            let frameIndex : int ref = ref (0) in ();
            let tempBasicArrayList : BasicArrayList.basicArrayList ref = ref (((Obj.magic 0) :> BasicArrayList.basicArrayList)) in ();
            let pointBasicArrayList : BasicArrayList.basicArrayList ref = ref (((Obj.magic 0) :> BasicArrayList.basicArrayList)) in ();
            while (!frameIndex < howMuch) do
                tempBasicArrayList := (Obj.magic !pointsBasicArrayList#objectArray.(!frameIndex));
                pointBasicArrayList := (self#createListFromPoints (!tempBasicArrayList, points, howMuch, (Obj.magic type_)));
                ignore (!pointsBasicArrayList#add (!pointBasicArrayList));
                frameIndex := !frameIndex + 1
            done;
            if (not startFrame) then begin
                ignore (!pointsBasicArrayList#removeAt (0))
            end;
            (!pointsBasicArrayList :> BasicArrayList.basicArrayList)
        with e -> begin
            raise e
        end)
        end [@@warning "-20"]
    

    method createListFromPoints : 'any1 'any4. 'any1 * int array array * int * 'any4 -> BasicArrayList.basicArrayList = fun (tempBasicArrayList, (points : int array array), (howMuch : int), type_) ->
        let tempBasicArrayList = Obj.repr tempBasicArrayList in
        let type_ = Obj.repr type_ in
        begin
        let index : int ref = ref (0) in ();
        let pointBasicArrayList : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        let sectionBasicArrayList : BasicArrayList.basicArrayList ref = ref (((Obj.magic 0) :> BasicArrayList.basicArrayList)) in ();
        while (!index < (Array.length points)) do
            sectionBasicArrayList := (new BasicArrayListD.basicArrayListD ());
            while (points.(!index).(0) != 1000) do
                ignore (!sectionBasicArrayList#add ((Obj.magic tempBasicArrayList)#objectArray.(!index)));
                index := !index + 1;
                if (!index >= (Array.length points)) then begin
                    raise Java_break
                end
            done;
            sectionBasicArrayList := (RandomTranslation.getInstance (!sectionBasicArrayList, howMuch));
            if ((Obj.repr (Obj.magic type_)) == (Obj.repr rOTATION)) then begin
                sectionBasicArrayList := (randomRotationFactory#getInstanceList (!sectionBasicArrayList, howMuch))
            end;
            let size : int ref = ref ((!sectionBasicArrayList#size ())) in ();
            for index2 = 0 to !size - 1 do
                ignore (!pointBasicArrayList#add (!sectionBasicArrayList#objectArray.(index2)))
            done;
            if (!index >= (Array.length points)) then begin
                raise Java_break
            end else if (points.(!index).(0) == 1000) then begin
                ignore (!pointBasicArrayList#add ((Obj.magic tempBasicArrayList)#objectArray.(!index)));
                index := !index + 1
            end
        done;
        (!pointBasicArrayList :> BasicArrayList.basicArrayList)
        end [@@warning "-20"]
    

    method createPointsBasicArrayList ((points : int array array)) : BasicArrayList.basicArrayList =
        begin
        if ((Array.length points) = 0) then begin
            raise (Failure ("Not Points Provided"))
        end;
        let firstPointBasicArrayList : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListS.basicArrayListS ((Array.length points))) :> BasicArrayList.basicArrayList)) in ();
        let pointFactory : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ()))))) in ();
        for index = 0 to (Array.length points) - 1 do
            ignore (!firstPointBasicArrayList#add (((Obj.magic !pointFactory)#createXY (points.(index).(0), points.(index).(1)))))
        done;
        (!firstPointBasicArrayList :> BasicArrayList.basicArrayList)
        end

    initializer
      begin
        rANDOM <- ((new VectorExplosionType.vectorExplosionType ()) :> VectorExplosionType.vectorExplosionType);
        rOTATION <- ((new VectorExplosionType.vectorExplosionType ()) :> VectorExplosionType.vectorExplosionType);
        vectorAnimationUtil <- ((VectorAnimationUtil.getInstance ()) :> VectorAnimationUtil.vectorAnimationUtil);
        randomRotationFactory <- ((RandomRotationFactory.getInstance ()) :> RandomRotationFactory.randomRotationFactory);
        ();
        ()
      end
  end
let () = java_register_constructor "VectorExplosionGenerator" (fun arguments -> Obj.repr (new vectorExplosionGenerator (Obj.obj arguments)))

let instance = (new vectorExplosionGenerator ())
let get_instance () = instance
let () = java_register_static "VectorExplosionGenerator.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "VectorExplosionGenerator.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


