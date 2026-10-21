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
(* package org.allbinary.graphics.j2me.workarea.tools *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.graphics.GPoint *)
(* import org.allbinary.graphics.PointFactory *)
(* import org.allbinary.graphics.j2me.workarea.WorkAreaJPanel *)
(* import org.allbinary.graphics.j2me.workarea.canvas.CanvasDom *)
(* import org.allbinary.math.PositionStrings *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.w3c.dom.Node *)

class pointsDomUtil () =
  object (self)
    val mutable lINES : string = ""
    method lINES = lINES
    method set_lINES value' = lINES <- value'
    val mutable pOINTONE : string = ""
    method pOINTONE = pOINTONE
    method set_pOINTONE value' = pOINTONE <- value'
    val mutable pOINTTWO : string = ""
    method pOINTTWO = pOINTTWO
    method set_pOINTTWO value' = pOINTTWO <- value'
    val mutable rOTATEDPOINTONE : string = ""
    method rOTATEDPOINTONE = rOTATEDPOINTONE
    method set_rOTATEDPOINTONE value' = rOTATEDPOINTONE <- value'
    val mutable rOTATEDPOINTTWO : string = ""
    method rOTATEDPOINTTWO = rOTATEDPOINTTWO
    method set_rOTATEDPOINTTWO value' = rOTATEDPOINTTWO <- value'
    val mutable lINE : string = ""
    method lINE = lINE
    method set_lINE value' = lINE <- value'
    

    method toDom : 'any1 'any2 'return. 'any1 * 'any2 -> 'return = fun (canvasDom, pointVector) ->
        let canvasDom = Obj.repr canvasDom in
        let pointVector = Obj.repr pointVector in
        begin
        let tempPointVector : BasicArrayList.basicArrayList ref = ref ((((Obj.magic (java_call_static "PointsUtil.getInstance" (Obj.repr ())))#doTransforms ((Obj.magic pointVector), ((Obj.magic canvasDom)#getAngle ()), ((Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ())))#createXY ((((Obj.magic canvasDom)#getDimension ())#getWidth ()), (((Obj.magic canvasDom)#getDimension ())#getHeight ()))))) :> BasicArrayList.basicArrayList)) in ();
        let document : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "WorkAreaJPanel.getDocument" (Obj.repr ()))))) in ();
        let linesNode : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic !document)#createElement (lINES))))) in ();
        let size2 : int ref = ref ((!tempPointVector#size ())) in ();
        let size : int ref = ref (((Obj.magic pointVector)#size ())) in ();
        let firstPoint : GPoint.gPoint ref = ref (((Obj.magic 0) :> GPoint.gPoint)) in ();
        let rotatedFirstPoint : GPoint.gPoint ref = ref (((Obj.magic 0) :> GPoint.gPoint)) in ();
        let index : int ref = ref (0) in ();
        if ((!index < !size) && (!index < !size2)) then begin
            rotatedFirstPoint := (Obj.magic (!tempPointVector#get (!index)));
            firstPoint := (Obj.magic ((Obj.magic pointVector)#get (!index)));
            index := !index + 1
        end;
        while ((!index < !size) && (!index < !size2)) do
            let lineNode : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic !document)#createElement (lINE))))) in ();
            let rotatedSecondPoint : GPoint.gPoint ref = ref (((Obj.magic (!tempPointVector#get (!index))) :> GPoint.gPoint)) in ();
            let secondPoint : GPoint.gPoint ref = ref (((Obj.magic ((Obj.magic pointVector)#get (!index))) :> GPoint.gPoint)) in ();
            let pointOneNode : Obj.t ref = ref ((Obj.repr (self#getPointNode (!firstPoint, pOINTONE)))) in ();
            let pointTwoNode : Obj.t ref = ref ((Obj.repr (self#getPointNode (!secondPoint, pOINTTWO)))) in ();
            let rotatedPointOneNode : Obj.t ref = ref ((Obj.repr (self#getPointNode (!rotatedFirstPoint, rOTATEDPOINTONE)))) in ();
            let rotatedPointTwoNode : Obj.t ref = ref ((Obj.repr (self#getPointNode (!rotatedSecondPoint, rOTATEDPOINTTWO)))) in ();
            ignore ((Obj.magic !lineNode)#appendChild ((Obj.magic !pointOneNode)));
            ignore ((Obj.magic !lineNode)#appendChild ((Obj.magic !pointTwoNode)));
            ignore ((Obj.magic !lineNode)#appendChild ((Obj.magic !rotatedPointOneNode)));
            ignore ((Obj.magic !lineNode)#appendChild ((Obj.magic !rotatedPointTwoNode)));
            firstPoint := !secondPoint;
            rotatedFirstPoint := !rotatedSecondPoint;
            ignore ((Obj.magic !linesNode)#appendChild ((Obj.magic !lineNode)));
            index := !index + 1
        done;
        (Obj.magic ((Obj.magic !linesNode)))
        end [@@warning "-20"]
    

    method getPointNode : 'any1 'return. 'any1 * string -> 'return = fun (point, (pointName : string)) ->
        let point = Obj.repr point in
        begin
        let document : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "WorkAreaJPanel.getDocument" (Obj.repr ()))))) in ();
        let pointNode : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic !document)#createElement (pointName))))) in ();
        let xNode : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic !document)#createElement ((PositionStrings.getInstance ())#x))))) in ();
        let xTextNode : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic !document)#createTextNode ((string_of_int (((Obj.magic point)#getX ())))))))) in ();
        ignore ((Obj.magic !xNode)#appendChild ((Obj.magic !xTextNode)));
        let yNode : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic !document)#createElement ((PositionStrings.getInstance ())#y))))) in ();
        let yTextNode : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic !document)#createTextNode ((string_of_int (((Obj.magic point)#getY ())))))))) in ();
        ignore ((Obj.magic !yNode)#appendChild ((Obj.magic !yTextNode)));
        ignore ((Obj.magic !pointNode)#appendChild ((Obj.magic !xNode)));
        ignore ((Obj.magic !pointNode)#appendChild ((Obj.magic !yNode)));
        (Obj.magic ((Obj.magic !pointNode)))
        end [@@warning "-20"]

    initializer
      begin
        lINES <- "lines";
        pOINTONE <- "pointOne";
        pOINTTWO <- "pointTwo";
        rOTATEDPOINTONE <- "rotatedPointOne";
        rOTATEDPOINTTWO <- "rotatedPointTwo";
        lINE <- "line";
        ()
      end
  end
let () = java_register_constructor "PointsDomUtil" (fun arguments -> Obj.repr (new pointsDomUtil (Obj.obj arguments)))

let instance = (new pointsDomUtil ())
let get_instance () = instance
let () = java_register_static "PointsDomUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "PointsDomUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


