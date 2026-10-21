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
(* package org.allbinary.logic.math *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class basicDecimal ((units_arg : int)) =
  object (self)
    val mutable units : int = 0
    method units = units
    method set_units value' = units <- value'
    val mutable scaled : int = 0
    method scaled = scaled
    method set_scaled value' = scaled <- value'
    val mutable factor : int = 0
    method factor = factor
    method set_factor value' = factor <- value'
    val mutable factorValue : int = 0
    method factorValue = factorValue
    method set_factorValue value' = factorValue <- value'
    
    

    method setint ((value : int)) : unit =
        begin
        units <- value;
        (self#updateScaled ())
        end
    

    method setlong ((value : int)) : unit =
        begin
        units <- value;
        (self#updateScaled ())
        end
    

    method set : 'any1. 'any1 -> unit = fun (bigDecimal) ->
        let bigDecimal = Obj.repr bigDecimal in
        begin
        units <- ((Obj.magic bigDecimal)#getUnscaled ());
        (self#updateScaled ())
        end [@@warning "-20"]
    

    method addint ((value : int)) : unit =
        begin
        units <- (units + value);
        (self#updateScaled ())
        end
    

    method addlong ((value : int)) : unit =
        begin
        units <- (units + value);
        (self#updateScaled ())
        end
    

    method add : 'any1. 'any1 -> unit = fun (bigDecimal) ->
        let bigDecimal = Obj.repr bigDecimal in
        begin
        units <- (units + ((Obj.magic bigDecimal)#getUnscaled ()));
        (self#updateScaled ())
        end [@@warning "-20"]
    

    method subtractint ((value : int)) : unit =
        begin
        units <- (units - value);
        (self#updateScaled ())
        end
    

    method subtractlong ((value : int)) : unit =
        begin
        units <- (units - value);
        (self#updateScaled ())
        end
    

    method subtract : 'any1. 'any1 -> unit = fun (bigDecimal) ->
        let bigDecimal = Obj.repr bigDecimal in
        begin
        units <- (units - ((Obj.magic bigDecimal)#getUnscaled ()));
        (self#updateScaled ())
        end [@@warning "-20"]
    

    method multiplyint ((value : int)) : unit =
        begin
        units <- (units * value);
        (self#updateScaled ())
        end
    

    method multiplylong ((value : int)) : unit =
        begin
        units <- (units * value);
        (self#updateScaled ())
        end
    

    method multiply : 'any1. 'any1 -> unit = fun (bigDecimal) ->
        let bigDecimal = Obj.repr bigDecimal in
        begin
        units <- (units * ((Obj.magic bigDecimal)#getUnscaled ()));
        (self#updateScaled ())
        end [@@warning "-20"]
    

    method divideint ((value : int)) : unit =
        begin
        units <- (units / value);
        (self#updateScaled ())
        end
    

    method dividelong ((value : int)) : unit =
        begin
        units <- (units / value);
        (self#updateScaled ())
        end
    

    method divide : 'any1. 'any1 -> unit = fun (bigDecimal) ->
        let bigDecimal = Obj.repr bigDecimal in
        begin
        units <- (units / ((Obj.magic bigDecimal)#getUnscaled ()));
        (self#updateScaled ())
        end [@@warning "-20"]
    

    method getUnscaled () : int =
        begin
        units
        end
    

    method updateScaled () : unit =
        begin
        scaled <- ((units / factorValue))
        end
    

    method getScaled () : int =
        begin
        scaled
        end
    

    method toString () : string =
        begin
        (string_of_int (units))
        end
    

    method getScaledFactor () : int =
        begin
        factor
        end
    

    method getScaledFactorValue () : int =
        begin
        factorValue
        end

    initializer
      begin
        ();
        scaled <- 0;
        factor <- (ScaleFactorFactory.getInstance ())#dEFAULT_SCALE_FACTOR;
        factorValue <- (ScaleFactorFactory.getInstance ())#dEFAULT_SCALE_VALUE;
        ();
        units <- units_arg;
        (self#updateScaled ())
      end
  end
let () = java_register_constructor "BasicDecimal" (fun arguments -> Obj.repr (new basicDecimal (Obj.obj arguments)))

let zERO_BIGDECIMAL = (new basicDecimal (0))
let get_zERO_BIGDECIMAL () = zERO_BIGDECIMAL
let () = java_register_static "BasicDecimal.get_zERO_BIGDECIMAL" (fun _ -> Obj.repr (get_zERO_BIGDECIMAL ()))

let createBigDecimal : 'any1. 'any1 -> _ = fun (bigDecimal) ->
        let bigDecimal = Obj.repr bigDecimal in
        begin
        (new basicDecimal (((Obj.magic bigDecimal)#getUnscaled ())))
        end [@@warning "-20"]
let () = java_register_static "BasicDecimal.createBigDecimal" (fun arguments -> Obj.repr (createBigDecimal (Obj.obj arguments)))


