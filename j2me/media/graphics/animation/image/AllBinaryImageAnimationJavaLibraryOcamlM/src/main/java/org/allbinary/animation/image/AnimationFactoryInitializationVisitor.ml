(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.animation.image *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.math.PositionStrings *)
(* import org.allbinary.string.CommonLabels *)
(* import org.allbinary.string.CommonSeps *)

class animationFactoryInitializationVisitor () =
  object
    val mutable width : int = 0
    method width = width
    method set_width value' = width <- value'
    val mutable height : int = 0
    method height = height
    method set_height value' = height <- value'
    val mutable dx : int = 0
    method dx = dx
    method set_dx value' = dx <- value'
    val mutable dy : int = 0
    method dy = dy
    method set_dy value' = dy <- value'
    val mutable originalDx : int = 0
    method originalDx = originalDx
    method set_originalDx value' = originalDx <- value'
    val mutable originalDy : int = 0
    method originalDy = originalDy
    method set_originalDy value' = originalDy <- value'
    

    method visit () : unit =
        begin
        ()
        end
    

    method toString () : string =
        begin
        let commonSeps : CommonSeps.commonSeps ref = ref (((CommonSeps.getInstance ()) :> CommonSeps.commonSeps)) in ();
        let commonLabels : CommonLabels.commonLabels ref = ref (((CommonLabels.getInstance ()) :> CommonLabels.commonLabels)) in ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore ((!stringBuffer#append ((PositionStrings.getInstance ())#dX_LABEL))#appendfloat ((float_of_int (dx))));
        ignore ((!stringBuffer#append ((PositionStrings.getInstance ())#dY_LABEL))#appendfloat ((float_of_int (dy))));
        ignore (!stringBuffer#append (!commonLabels#wIDTH_LABEL));
        ignore (!stringBuffer#appendint (width));
        ignore (!stringBuffer#append (!commonSeps#sPACE));
        ignore (!stringBuffer#append (!commonLabels#hEIGHT_LABEL));
        ignore (!stringBuffer#appendint (height));
        (java_string_of (Obj.repr !stringBuffer))
        end

    initializer
      begin
        width <- 0;
        height <- 0;
        dx <- 0;
        dy <- 0;
        originalDx <- 0;
        originalDy <- 0;
        ()
      end
  end
let () = java_register_constructor "AnimationFactoryInitializationVisitor" (fun arguments -> Obj.repr (new animationFactoryInitializationVisitor (Obj.obj arguments)))


