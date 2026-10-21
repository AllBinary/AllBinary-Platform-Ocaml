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
(* package org.allbinary.logic.string *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.TsUtil *)

class stringValidationUtil () =
  object (self)
    val mutable stringUtil : StringUtil.stringUtil = (Obj.magic 0)
    method stringUtil = stringUtil
    method set_stringUtil value' = stringUtil <- value'
    val mutable tsUtil : Obj.t = Obj.repr 0
    method tsUtil : 'r. 'r = Obj.magic tsUtil
    method set_tsUtil : 'v. 'v -> unit = fun value' -> tsUtil <- Obj.repr value'
    
    

    method containsSpaces ((value : string)) : bool =
        try
        begin
        if ((java_string_index_of value (Obj.repr (' '))) >= 0) then begin
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value
    

    method isNumber ((value : string)) : bool =
        try
        begin
        let numberOfDecimalPoints : int ref = ref (0) in ();
        for index = 0 to (String.length value) - 1 do
            let digit : char ref = ref ((String.get value (index))) in ();
            if ((not (self#isNumberFromChar (!digit))) && (!digit <> '.')) then begin
                raise (Java_return (Obj.repr (false)))
            end;
            if (!digit = '.') then begin
                numberOfDecimalPoints := !numberOfDecimalPoints + 1;
                if (!numberOfDecimalPoints > 1) then begin
                    raise (Java_return (Obj.repr (false)))
                end
            end
        done;
        true
        end
        with Java_return value -> Obj.obj value
    

    method isNumberFromChar ((digit : char)) : bool =
        try
        begin
        if ((((((((((digit <> '0') && (digit <> '1')) && (digit <> '2')) && (digit <> '3')) && (digit <> '4')) && (digit <> '5')) && (digit <> '6')) && (digit <> '7')) && (digit <> '8')) && (digit <> '9')) then begin
            raise (Java_return (Obj.repr (false)))
        end;
        true
        end
        with Java_return value -> Obj.obj value
    

    method isValidRequired ((value : string), (min : int), (max : int)) : bool =
        try
        begin
        if (((value = (Obj.magic 0)) || ((String.length value) < min)) || ((String.length value) > max)) then begin
            raise (Java_return (Obj.repr (false)))
        end;
        true
        end
        with Java_return value -> Obj.obj value
    

    method isValidRequiredNumber ((value : string), (min : int), (max : int)) : bool =
        try
        begin
        if (((self#isEmpty (value)) || ((String.length value) < min)) || ((String.length value) > max)) then begin
            raise (Java_return (Obj.repr (false)))
        end;
        if (not (self#isNumber (value))) then begin
            raise (Java_return (Obj.repr (false)))
        end;
        true
        end
        with Java_return value -> Obj.obj value
    

    method isValidNotRequired ((value : string), (min : int), (max : int)) : bool =
        try
        begin
        if (value <> (Obj.magic 0)) then begin
            if (((String.length value) < min) || ((String.length value) > max)) then begin
                raise (Java_return (Obj.repr (false)))
            end
        end;
        true
        end
        with Java_return value -> Obj.obj value
    

    method isValidNotRequiredNumber ((value : string), (min : int), (max : int)) : bool =
        try
        begin
        if (value <> (Obj.magic 0)) then begin
            if (((((Obj.magic tsUtil)#compareTo (value, stringUtil#nULL_STRING)) == 0) || ((String.length value) < min)) || ((String.length value) > max)) then begin
                raise (Java_return (Obj.repr (false)))
            end;
            if (not (self#isNumber (value))) then begin
                raise (Java_return (Obj.repr (false)))
            end
        end;
        true
        end
        with Java_return value -> Obj.obj value
    

    method isEmpty ((string : string)) : bool =
        try
        begin
        if (((string <> (Obj.magic 0)) && (((Obj.magic tsUtil)#compareTo (string, stringUtil#nULL_STRING)) != 0)) && (((Obj.magic tsUtil)#compareTo (string, stringUtil#eMPTY_STRING)) != 0)) then begin
            raise (Java_return (Obj.repr (false)))
        end else begin
            raise (Java_return (Obj.repr (true)))
        end
        end
        with Java_return value -> Obj.obj value

    initializer
      begin
        stringUtil <- ((StringUtil.getInstance ()) :> StringUtil.stringUtil);
        tsUtil <- (Obj.repr (Obj.magic (java_call_static "TsUtil.getInstance" (Obj.repr ()))));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "StringValidationUtil" (fun arguments -> Obj.repr (new stringValidationUtil (Obj.obj arguments)))

let instance = (new stringValidationUtil ())
let get_instance () = instance
let () = java_register_static "StringValidationUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "StringValidationUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


