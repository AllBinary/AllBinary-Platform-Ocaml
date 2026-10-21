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
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)

class primitiveLongUtil ((powerOfTen_arg : int), (_unused : Obj.t)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable powerOfTen : int = 0
    method powerOfTen = powerOfTen
    method set_powerOfTen value' = powerOfTen <- value'
    val mutable maxValue : int = 0
    method maxValue = maxValue
    method set_maxValue value' = maxValue <- value'
    val mutable maxDigits : int = 0
    method maxDigits = maxDigits
    method set_maxDigits value' = maxDigits <- value'
    val mutable charArray : char array = (Obj.magic 0)
    method charArray = charArray
    method set_charArray value' = charArray <- value'
    val mutable currentTotalDigits : int = 0
    method currentTotalDigits = currentTotalDigits
    method set_currentTotalDigits value' = currentTotalDigits <- value'
    val mutable primitiveLongSingleton : PrimitiveLongSingleton.primitiveLongSingleton = (Obj.magic 0)
    method primitiveLongSingleton = primitiveLongSingleton
    method set_primitiveLongSingleton value' = primitiveLongSingleton <- value'
    
    

    method getCharArray ((value : int)) : char array =
        try
        begin
        if (value < 10) then begin
            (self#setCurrentTotalDigits (1));
            raise (Java_return (Obj.repr (primitiveLongSingleton#nUMBER_CHAR_ARRAYS.(value))))
        end;
        if (value > maxValue) then begin
            (self#setCurrentTotalDigits (3));
            raise (Java_return (Obj.repr (primitiveLongSingleton#uNK)))
        end;
        let index : int ref = ref (0) in ();
        let div : int ref = ref (powerOfTen) in ();
        let lastValue : int ref = ref (0) in ();
        while (!div >= 1) do
            let digit : int ref = ref ((((value - !lastValue)) / !div)) in ();
            if ((!digit >= 0) && (!digit < 10)) then begin
                if ((!digit = 0) && (!index = 0)) then begin
                    ()
                end else begin
                    charArray.((let value = !index in index := !index + 1; value)) <- primitiveLongSingleton#nUMBER_CHAR_ARRAY.(!digit)
                end;
                lastValue := (!lastValue + (!digit * !div))
            end;
            div := (!div / 10)
        done;
        (self#setCurrentTotalDigits (!index));
        charArray
        end
        with Java_return value -> Obj.obj value
    

    method setCurrentTotalDigits ((currentTotalDigits_arg : int)) : unit =
        begin
        currentTotalDigits <- currentTotalDigits_arg
        end
    

    method getCurrentTotalDigits () : int =
        begin
        currentTotalDigits
        end
    

    method getMaxDigits () : int =
        begin
        maxDigits
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        ();
        ();
        currentTotalDigits <- 0;
        primitiveLongSingleton <- ((PrimitiveLongSingleton.getInstance ()) :> PrimitiveLongSingleton.primitiveLongSingleton);
        ();
        maxDigits <- ((MathUtil.getInstance ())#getTotalDigits (powerOfTen_arg));
        powerOfTen <- powerOfTen_arg;
        maxValue <- (((powerOfTen_arg * 10)) - 1);
        charArray <- (Array.make (maxDigits) '\000')
      end
  end [@@warning "-20"]
let () = java_register_constructor "PrimitiveLongUtil" (fun arguments -> Obj.repr (new primitiveLongUtil (Obj.obj arguments)))

let createPowerOfTen ((powerOfTen_arg : int)) =
        begin
        let primitiveLongUtil : Obj.t ref = ref ((Obj.repr (new primitiveLongUtil (powerOfTen_arg, (NullUtil.getInstance ())#nULL_OBJECT)))) in ();
        if ((powerOfTen_arg mod 10) <> 0) then begin
            let logUtil_arg : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic !logUtil_arg)#put (!commonStrings#eXCEPTION, (Obj.magic !primitiveLongUtil), !commonStrings#cONSTRUCTOR, (Failure ("Max must be power of 10"))))
        end;
        (Obj.magic !primitiveLongUtil)
        end
let () = java_register_static "PrimitiveLongUtil.createPowerOfTen" (fun arguments -> Obj.repr (createPowerOfTen (Obj.obj arguments)))


