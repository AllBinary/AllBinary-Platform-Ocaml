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
(* import org.allbinary.graphics.PointFactory *)
(* import org.allbinary.graphics.pipeline.BasicGraphicsPipeline *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.math.Angle *)
(* import org.allbinary.math.AngleFactory *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListS *)
(* import org.allbinary.vector.VectorInfo *)

class vectorRotationGenerator () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable vectorAnimationUtil : VectorAnimationUtil.vectorAnimationUtil = (Obj.magic 0)
    method vectorAnimationUtil = vectorAnimationUtil
    method set_vectorAnimationUtil value' = vectorAnimationUtil <- value'
    val mutable angleFactory : AngleFactory.angleFactory = (Obj.magic 0)
    method angleFactory = angleFactory
    method set_angleFactory value' = angleFactory <- value'
    
    

    (* Java overload getInstance(VectorInfo) is not converted: OCaml has one method per name *)
    

    method getInstanceFrames ((width : int), (height : int), (points : int array array), (frames : int)) : int array array array =
        begin
        (try
            let totalAngle : int ref = ref (angleFactory#tOTAL_ANGLE) in ();
            let angleIncrement : int ref = ref ((!totalAngle / frames)) in ();
            let pointsBasicArrayList : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListS.basicArrayListS ((!totalAngle / !angleIncrement))) :> BasicArrayList.basicArrayList)) in ();
            let pointBasicArrayList : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListS.basicArrayListS ((Array.length points))) :> BasicArrayList.basicArrayList)) in ();
            let pointFactory : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ()))))) in ();
            let size : int ref = ref ((Array.length points)) in ();
            for index = 0 to !size - 1 do
                ignore (!pointBasicArrayList#add (((Obj.magic !pointFactory)#createXY (points.(index).(0), points.(index).(1)))))
            done;
            let index : int ref = ref (0) in ();
            while (!index < !totalAngle) do
                ignore (!pointsBasicArrayList#add ((self#getListAtAngle (width, height, !pointBasicArrayList, (angleFactory#getAt (!index))))));
                index := (!index + !angleIncrement)
            done;
            let newPoints : int array array array ref = ref ((vectorAnimationUtil#toAnimationArrayFromListOfPointListWithPointsPerFrame (!pointsBasicArrayList, (!pointBasicArrayList#size ())))) in ();
            !newPoints
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, !commonStrings#gET_INSTANCE, e));
            (NullUtil.getInstance ())#nULL_INT_ARRAY_ARRAY_ARRAY
        end)
        end
    

    method getListAtAngle : 'any3 'any4. int * int * 'any3 * 'any4 -> BasicArrayList.basicArrayList = fun ((width : int), (height : int), pointBasicArrayList, angle) ->
        let pointBasicArrayList = Obj.repr pointBasicArrayList in
        let angle = Obj.repr angle in
        begin
        let graphicsPipe : BasicGraphicsPipeline.basicGraphicsPipeline ref = ref (((new BasicGraphicsPipeline.basicGraphicsPipeline ((Obj.magic pointBasicArrayList))) :> BasicGraphicsPipeline.basicGraphicsPipeline)) in ();
        ignore (!graphicsPipe#createMatrix ());
        ignore (!graphicsPipe#translate ((-((width asr 1))), (-((height asr 1)))));
        ignore (!graphicsPipe#rotateToAngle ((Obj.magic angle)));
        ignore (!graphicsPipe#translate (((width asr 1)), ((height asr 1))));
        ((!graphicsPipe#getMatrix ()) :> BasicArrayList.basicArrayList)
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        vectorAnimationUtil <- ((VectorAnimationUtil.getInstance ()) :> VectorAnimationUtil.vectorAnimationUtil);
        angleFactory <- ((AngleFactory.getInstance ()) :> AngleFactory.angleFactory);
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "VectorRotationGenerator" (fun arguments -> Obj.repr (new vectorRotationGenerator (Obj.obj arguments)))

let instance = (new vectorRotationGenerator ())
let get_instance () = instance
let () = java_register_static "VectorRotationGenerator.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "VectorRotationGenerator.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


