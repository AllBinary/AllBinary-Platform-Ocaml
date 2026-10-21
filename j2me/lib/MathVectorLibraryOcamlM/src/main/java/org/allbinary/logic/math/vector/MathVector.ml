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

class mathVector ((magnitudeBasicDecimal_arg : BasicDecimal.basicDecimal), (direction_arg : int)) =
  object
    val mutable magnitudeBasicDecimal : BasicDecimal.basicDecimal = (Obj.magic 0)
    method magnitudeBasicDecimal = magnitudeBasicDecimal
    method set_magnitudeBasicDecimal value' = magnitudeBasicDecimal <- value'
    val mutable direction : int = 0
    method direction = direction
    method set_direction value' = direction <- value'
    val mutable resultBasicDecimal : BasicDecimal.basicDecimal = (Obj.magic 0)
    method resultBasicDecimal = resultBasicDecimal
    method set_resultBasicDecimal value' = resultBasicDecimal <- value'
    
    

    method getMagnitude () : BasicDecimal.basicDecimal =
        begin
        (magnitudeBasicDecimal :> BasicDecimal.basicDecimal)
        end
    

    method getDirection () : int =
        begin
        direction
        end
    

    method getResult () : BasicDecimal.basicDecimal =
        begin
        (resultBasicDecimal :> BasicDecimal.basicDecimal)
        end

    initializer
      begin
        ();
        ();
        resultBasicDecimal <- ((Obj.magic 0) :> BasicDecimal.basicDecimal);
        ();
        magnitudeBasicDecimal <- magnitudeBasicDecimal_arg;
        direction <- direction_arg
      end
  end
let () = java_register_constructor "MathVector" (fun arguments -> Obj.repr (new mathVector (Obj.obj arguments)))


