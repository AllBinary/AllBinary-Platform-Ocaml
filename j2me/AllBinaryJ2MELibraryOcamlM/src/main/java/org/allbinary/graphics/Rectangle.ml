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
(* package org.allbinary.graphics *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonLabels *)
(* import org.allbinary.string.CommonSeps *)

class rectangle ((point_arg : GPoint.gPoint), (width_arg : int), (height_arg : int)) =
  object (self)
    val mutable point : GPoint.gPoint = (Obj.magic 0)
    method point = point
    method set_point value' = point <- value'
    val mutable width : int = 0
    method width = width
    method set_width value' = width <- value'
    val mutable height : int = 0
    method height = height
    method set_height value' = height <- value'
    
    

    method getPoint () : GPoint.gPoint =
        begin
        (point :> GPoint.gPoint)
        end
    

    method setPoint : 'any1. 'any1 -> unit = fun (point_arg) ->
        let point_arg = Obj.repr point_arg in
        begin
        point <- (Obj.magic point_arg)
        end [@@warning "-20"]
    

    method getMaxX () : int =
        begin
        ((point#getX ()) + width)
        end
    

    method getMaxY () : int =
        begin
        ((point#getY ()) + height)
        end
    

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
    

    method toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ((java_string_of (Obj.repr (self#getPoint ())))));
        ignore (!stringBuffer#append ((CommonSeps.getInstance ())#sPACE));
        ignore (!stringBuffer#append ((CommonLabels.getInstance ())#wIDTH_LABEL));
        ignore (!stringBuffer#appendint ((self#getWidth ())));
        ignore (!stringBuffer#append ((CommonSeps.getInstance ())#sPACE));
        ignore (!stringBuffer#append ((CommonLabels.getInstance ())#hEIGHT_LABEL));
        ignore (!stringBuffer#appendint ((self#getHeight ())));
        ignore (!stringBuffer#append (" MaxX: "));
        ignore (!stringBuffer#appendint ((self#getMaxX ())));
        ignore (!stringBuffer#append (" MaxY: "));
        ignore (!stringBuffer#appendint ((self#getMaxY ())));
        (java_string_of (Obj.repr !stringBuffer))
        end

    initializer
      begin
        ();
        ();
        ();
        ();
        point <- point_arg;
        width <- width_arg;
        height <- height_arg
      end
  end
let () = java_register_constructor "Rectangle" (fun arguments -> Obj.repr (new rectangle (Obj.obj arguments)))


