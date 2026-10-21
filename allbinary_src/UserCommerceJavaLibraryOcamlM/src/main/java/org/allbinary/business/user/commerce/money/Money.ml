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
(* package org.allbinary.business.user.commerce.money *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.io.path.AbPathData *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.string.StringValidationUtil *)
(* import org.allbinary.string.CommonPhoneStrings *)

class money () =
  object (self)
    val mutable units : int = (Obj.magic 0)
    method units = units
    method set_units value' = units <- value'
    val mutable dEFAULT_CURRENCY : string = ""
    method dEFAULT_CURRENCY = dEFAULT_CURRENCY
    method set_dEFAULT_CURRENCY value' = dEFAULT_CURRENCY <- value'
    
    
    
    
    

    method isValid () : bool =
        try
        begin
        if (((units != (Obj.magic 0)) && (units > 0)) && (units < max_int)) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value
    

    method add : 'any1. 'any1 -> unit = fun (moreMoney) ->
        let moreMoney = Obj.repr moreMoney in
        begin
        (self#add ((java_string_of (Obj.repr (Obj.magic moreMoney)))))
        end [@@warning "-20"]
    

    (* Java overload add(String) is not converted: OCaml has one method per name *)
    

    method subtract ((usDollarStr : string)) : unit =
        begin
        units <- (Obj.obj (java_new "Long" (Obj.repr ((units - (self#convertUsdToUnits (usDollarStr)))))))
        end
    

    method multiply ((multiplier : float)) : unit =
        begin
        units <- (Obj.obj (java_new "Long" (Obj.repr (((units * multiplier)#longValue ())))))
        end
    

    (* Java overload multiply(INT) is not converted: OCaml has one method per name *)
    

    method convertUnitsTo ((currency : string)) : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        if ((String.compare currency (dEFAULT_CURRENCY)) == 0) then begin
            let dollar : int ref = ref ((units / 100)) in ();
            let cents : int ref = ref ((units - ((!dollar * 100)))) in ();
            ignore (!stringBuffer#append ((java_string_of (Obj.repr (Obj.obj (java_new "Long" (Obj.repr (!dollar))))))));
            ignore (!stringBuffer#append ((Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#eXTENSION_SEP));
            if (!cents < 10) then begin
                ignore (!stringBuffer#append ((CommonPhoneStrings.getInstance ())#zERO))
            end;
            ignore (!stringBuffer#append ((java_string_of (Obj.repr (Obj.obj (java_new "Long" (Obj.repr (!cents))))))))
        end;
        (java_string_of (Obj.repr !stringBuffer))
        end
    

    method convertUsdToUnits ((usDollarStr : string)) : int =
        begin
        let localUnit : int ref = ref (0) in ();
        let index : int ref = ref ((java_string_index_of usDollarStr (Obj.repr ((Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#eXTENSION_SEP)))) in ();
        let stringUtil : StringUtil.stringUtil ref = ref (((StringUtil.getInstance ()) :> StringUtil.stringUtil)) in ();
        let dollarStr : string ref = ref (!stringUtil#eMPTY_STRING) in ();
        let centsStr : string ref = ref (!stringUtil#eMPTY_STRING) in ();
        if (!index < 1) then begin
            dollarStr := (Obj.obj (java_new "String" (Obj.repr (usDollarStr))));
            centsStr := "00"
        end else begin
            dollarStr := (Obj.obj (java_new "String" (Obj.repr ((String.sub usDollarStr (0) ((!index) - (0)))))));
            centsStr := (Obj.obj (java_new "String" (Obj.repr ((String.sub usDollarStr ((!index + 1)) (String.length usDollarStr - ((!index + 1))))))))
        end;
        localUnit := ((Obj.obj (java_new "Long" (Obj.repr ((((Obj.obj (java_new "Long" (Obj.repr (!dollarStr))))#longValue ()) * 100)))))#longValue ());
        localUnit := (!localUnit + ((Obj.obj (java_new "Long" (Obj.repr (!centsStr))))#longValue ()));
        !localUnit
        end
    

    method getUnits () : int =
        begin
        units
        end
    

    method getUnitsLong () : int =
        begin
        units
        end
    

    method toString () : string =
        begin
        (Obj.obj (java_new "String" (Obj.repr ((self#convertUnitsTo (dEFAULT_CURRENCY))))))
        end

    initializer
      begin
        ();
        dEFAULT_CURRENCY <- "USD";
        ();
        units <- (Obj.obj (java_new "Long" (Obj.repr (0))))
      end
  end
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "Money" (fun arguments -> Obj.repr (new money (Obj.obj arguments)))


