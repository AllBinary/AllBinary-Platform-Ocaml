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
(* package org.allbinary.animation.vector *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.graphics.GPoint *)
(* import org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface *)
(* import org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItem *)
(* import org.allbinary.graphics.j2me.workarea.tools.Points *)
(* import org.allbinary.graphics.pipeline.BasicGraphicsPipeline *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonLabels *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.BasicArrayList *)


let translate : 'any1. 'any1 * int * int -> BasicArrayList.basicArrayList = fun (list, (x : int), (y : int)) ->
        let list = Obj.repr list in
        begin
        let graphicsPipe : BasicGraphicsPipeline.basicGraphicsPipeline ref = ref (((new BasicGraphicsPipeline.basicGraphicsPipeline ((Obj.magic list))) :> BasicGraphicsPipeline.basicGraphicsPipeline)) in ();
        ignore (!graphicsPipe#createMatrix ());
        ignore (!graphicsPipe#translate (x, y));
        ((!graphicsPipe#getMatrix ()) :> BasicArrayList.basicArrayList)
        end [@@warning "-20"]

let () = java_register_static "VectorCenterGenerator.translate" (fun arguments -> Obj.repr (translate (Obj.obj arguments)))
class vectorCenterGenerator () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable minX : int = 0
    method minX = minX
    method set_minX value' = minX <- value'
    val mutable minY : int = 0
    method minY = minY
    method set_minY value' = minY <- value'
    val mutable maxX : int = 0
    method maxX = maxX
    method set_maxX value' = maxX <- value'
    val mutable maxY : int = 0
    method maxY = maxY
    method set_maxY value' = maxY <- value'
    val mutable dx : int = 0
    method dx = dx
    method set_dx value' = dx <- value'
    val mutable dy : int = 0
    method dy = dy
    method set_dy value' = dy <- value'
    val mutable width : int = 0
    method width = width
    method set_width value' = width <- value'
    val mutable height : int = 0
    method height = height
    method set_height value' = height <- value'
    
    

    method calculate ((hashMap : java_hash_map)) : unit =
        begin
        let graphicItemArray : Obj.t array ref = ref (((hashMap#keySet ())#toArray ())) in ();
        let size : int ref = ref ((Array.length !graphicItemArray)) in ();
        for index = 0 to !size - 1 do
            let item : Obj.t ref = ref ((Obj.repr (Obj.magic (hashMap#get (!graphicItemArray.(index)))))) in ();
            if (((Obj.magic !item)#getName ()) = (Obj.magic (java_call_static "LinesGraphicItem.getStaticName" (Obj.repr ())))) then begin
                (self#getInstance ((((Obj.magic !item)#getPointsInterface ())#getPoints ())))
            end
        done;
        ignore ((Obj.magic logUtil)#putF (((((((("minX: " ^ java_string_of (Obj.repr (minX))) ^ " minY: ") ^ java_string_of (Obj.repr (minY))) ^ " maxX: ") ^ java_string_of (Obj.repr (maxX))) ^ " maxY: ") ^ java_string_of (Obj.repr (maxY))), self, commonStrings#gET_INSTANCE));
        (self#setWidth ((maxX - minX)));
        (self#setHeight ((maxY - minY)));
        let max : int ref = ref ((self#getWidth ())) in ();
        if ((self#getHeight ()) > !max) then begin
            max := (self#getHeight ())
        end;
        let middle : int ref = ref ((!max / 2)) in ();
        let commonLabels : CommonLabels.commonLabels ref = ref (((CommonLabels.getInstance ()) :> CommonLabels.commonLabels)) in ();
        let s : string ref = ref ((java_string_of (Obj.repr (((((((((new StringMaker.stringMaker ())#append (!commonLabels#wIDTH_LABEL))#appendint ((self#getWidth ())))#append (!commonLabels#hEIGHT_LABEL))#appendint ((self#getHeight ())))#append (" max: "))#appendint (!max))#append (" middle: "))#appendint (!middle))))) in ();
        ignore ((Obj.magic logUtil)#putF (!s, self, commonStrings#gET_INSTANCE));
        let currentMiddleX : int ref = ref ((minX + ((self#getWidth ()) / 2))) in ();
        let currentMiddleY : int ref = ref ((minY + ((self#getHeight ()) / 2))) in ();
        dx <- (!middle - !currentMiddleX);
        dy <- (!middle - !currentMiddleY)
        end
    

    method transform ((hashMap : java_hash_map)) : unit =
        begin
        (self#calculate (hashMap));
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((((new StringMaker.stringMaker ())#append (" dx: "))#appendint (dx))#append (" dy: "))#appendint (dy)))), self, commonStrings#gET_INSTANCE));
        let graphicItemArray : Obj.t array ref = ref (((hashMap#keySet ())#toArray ())) in ();
        let size : int ref = ref ((Array.length !graphicItemArray)) in ();
        for index = 0 to !size - 1 do
            let item : Obj.t ref = ref ((Obj.repr (Obj.magic (hashMap#get (!graphicItemArray.(index)))))) in ();
            let list : BasicArrayList.basicArrayList ref = ref (((translate ((((Obj.magic !item)#getPointsInterface ())#getPoints ()), dx, dy)) :> BasicArrayList.basicArrayList)) in ();
            let newPoints : Points.points ref = ref (((new Points.points ()) :> Points.points)) in ();
            ignore (!newPoints#addPoints (!list));
            ignore ((Obj.magic !item)#setPointsInterface (!newPoints))
        done
        end
    

    method getInstance : 'any1. 'any1 -> unit = fun (pointVector) ->
        let pointVector = Obj.repr pointVector in
        begin
        (try
            let size : int ref = ref (((Obj.magic pointVector)#size ())) in ();
            for index = 0 to !size - 1 do
                let point : GPoint.gPoint ref = ref (((Obj.magic ((Obj.magic pointVector)#get (index))) :> GPoint.gPoint)) in ();
                if ((!point#getX ()) < minX) then begin
                    minX <- (!point#getX ())
                end;
                if ((!point#getX ()) > maxX) then begin
                    maxX <- (!point#getX ())
                end;
                if ((!point#getY ()) < minY) then begin
                    minY <- (!point#getY ())
                end;
                if ((!point#getY ()) > maxY) then begin
                    maxY <- (!point#getY ())
                end
            done
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, commonStrings#gET_INSTANCE, e));
            raise e
        end)
        end [@@warning "-20"]
    

    method getWidth () : int =
        begin
        width
        end
    

    method setWidth ((width_arg : int)) : unit =
        begin
        width <- width_arg
        end
    

    method getHeight () : int =
        begin
        height
        end
    

    method setHeight ((height_arg : int)) : unit =
        begin
        height <- height_arg
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        minX <- 2147483647;
        minY <- 2147483647;
        maxX <- (-2147483648);
        maxY <- (-2147483648);
        dx <- 0;
        dy <- 0;
        width <- 0;
        height <- 0;
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "VectorCenterGenerator" (fun arguments -> Obj.repr (new vectorCenterGenerator (Obj.obj arguments)))


