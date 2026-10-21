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
(* package org.allbinary.media.image.comparison.pixel *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.graphics.GPoint *)
(* import org.allbinary.TsUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.util.cache.CacheableInterface *)
(* import org.allbinary.media.image.comparison.color.ColorDelta *)
(* import org.allbinary.string.CommonSeps *)


(* Java overload getKey(GPoint, ColorDelta) is not converted: OCaml has one method per name *)
class pixelDelta ((point_arg : GPoint.gPoint), (colorDelta_arg : ColorDelta.colorDelta)) =
  object (self)
    val mutable point : GPoint.gPoint = (Obj.magic 0)
    method point = point
    method set_point value' = point <- value'
    val mutable colorDelta : ColorDelta.colorDelta = (Obj.magic 0)
    method colorDelta = colorDelta
    method set_colorDelta value' = colorDelta <- value'
    val mutable key : Obj.t = (Obj.magic 0)
    method key = key
    method set_key value' = key <- value'
    
    

    method getKey () : Obj.t =
        begin
        (Obj.repr (key))
        end
    

    method getPoint () : GPoint.gPoint =
        begin
        (point :> GPoint.gPoint)
        end
    

    method setPoint : 'any1. 'any1 -> unit = fun (point_arg) ->
        let point_arg = Obj.repr point_arg in
        begin
        point <- (Obj.magic point_arg)
        end [@@warning "-20"]
    

    method getColorDelta () : ColorDelta.colorDelta =
        begin
        (colorDelta :> ColorDelta.colorDelta)
        end
    

    method setColorDelta : 'any1. 'any1 -> unit = fun (colorDelta_arg) ->
        let colorDelta_arg = Obj.repr colorDelta_arg in
        begin
        colorDelta <- (Obj.magic colorDelta_arg)
        end [@@warning "-20"]
    

    method toString () : string =
        begin
        (java_string_of (Obj.repr (((((new StringMaker.stringMaker ())#append ("PixelDelta: Point: "))#append ((java_string_of (Obj.repr point))))#append ((CommonSeps.getInstance ())#sPACE))#append ((java_string_of (Obj.repr colorDelta))))))
        end

    initializer
      begin
        point <- ((Obj.magic 0) :> GPoint.gPoint);
        colorDelta <- ((Obj.magic 0) :> ColorDelta.colorDelta);
        ();
        ();
        (self#setPoint (point_arg));
        (self#setColorDelta (colorDelta_arg));
        key <- (getKey ((self#getPoint ()), (self#getColorDelta ())))
      end
  end
let () = java_register_constructor "PixelDelta" (fun arguments -> Obj.repr (new pixelDelta (Obj.obj arguments)))


