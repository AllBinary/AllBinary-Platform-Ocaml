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
(* package org.allbinary.logic.math.vector *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.math.BasicDecimal *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.math.PositionStrings *)
(* import org.allbinary.string.CommonSeps *)

class vertex () =
  object
    val mutable x : BasicDecimal.basicDecimal = (Obj.magic 0)
    method x = x
    method set_x value' = x <- value'
    val mutable y : BasicDecimal.basicDecimal = (Obj.magic 0)
    method y = y
    method set_y value' = y <- value'
    val mutable z : BasicDecimal.basicDecimal = (Obj.magic 0)
    method z = z
    method set_z value' = z <- value'
    
    

    method toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let positionStrings : PositionStrings.positionStrings ref = ref (((PositionStrings.getInstance ()) :> PositionStrings.positionStrings)) in ();
        ignore (!stringBuffer#append (!positionStrings#x_LABEL));
        ignore (!stringBuffer#append ((java_string_of (Obj.repr x))));
        ignore (!stringBuffer#append ((CommonSeps.getInstance ())#sPACE));
        ignore (!stringBuffer#append (!positionStrings#y_LABEL));
        ignore (!stringBuffer#append ((java_string_of (Obj.repr y))));
        ignore (!stringBuffer#append ((CommonSeps.getInstance ())#sPACE));
        ignore (!stringBuffer#append (!positionStrings#z_LABEL));
        ignore (!stringBuffer#append ((java_string_of (Obj.repr z))));
        (java_string_of (Obj.repr !stringBuffer))
        end

    initializer
      begin
        x <- ((new BasicDecimal.basicDecimal (0)) :> BasicDecimal.basicDecimal);
        y <- ((new BasicDecimal.basicDecimal (0)) :> BasicDecimal.basicDecimal);
        z <- ((new BasicDecimal.basicDecimal (0)) :> BasicDecimal.basicDecimal);
        ();
        ()
      end
  end
let () = java_register_constructor "Vertex" (fun arguments -> Obj.repr (new vertex (Obj.obj arguments)))


