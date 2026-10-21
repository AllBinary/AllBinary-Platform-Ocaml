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
(* import org.allbinary.logic.math.BasicDecimal *)

class xAxisMathVector ((magnitudeBasicDecimal : BasicDecimal.basicDecimal), (direction : int)) =
  object (self)
    inherit MathVector.mathVector (magnitudeBasicDecimal, direction)
    
    

    method calculate () : unit =
        begin
        let result : int ref = ref ((YAxisMathVectorUtil.calculate (((self#getMagnitude ())#getUnscaled ()), (self#getDirection ())))) in ();
        resultBasicDecimal <- (new BasicDecimal.basicDecimal (!result))
        end [@@warning "-7"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ();
        (self#calculate ())
      end
  end
let () = java_register_constructor "XAxisMathVector" (fun arguments -> Obj.repr (new xAxisMathVector (Obj.obj arguments)))


