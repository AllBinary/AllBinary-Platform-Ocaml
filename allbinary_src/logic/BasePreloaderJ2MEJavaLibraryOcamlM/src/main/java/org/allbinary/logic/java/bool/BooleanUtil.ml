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
(* package org.allbinary.logic.java.bool *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.TsUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringValidationUtil *)

class booleanUtil () =
  object
    val mutable tsUtil : Obj.t = Obj.repr 0
    method tsUtil : 'r. 'r = Obj.magic tsUtil
    method set_tsUtil : 'v. 'v -> unit = fun value' -> tsUtil <- Obj.repr value'
    
    

    method getFromString ((booleanString : string)) : bool =
        try
        begin
        let stringValidationUtil : StringValidationUtil.stringValidationUtil ref = ref (((StringValidationUtil.getInstance ()) :> StringValidationUtil.stringValidationUtil)) in ();
        let booleanFactory : BooleanFactory.booleanFactory ref = ref (((BooleanFactory.getInstance ()) :> BooleanFactory.booleanFactory)) in ();
        if (!stringValidationUtil#isEmpty (booleanString)) then begin
            raise (Java_return (Obj.repr (false)))
        end;
        let booleanStringLowerCase : string ref = ref ((String.lowercase_ascii booleanString)) in ();
        if (((Obj.magic tsUtil)#compareTo (!booleanStringLowerCase, !booleanFactory#tRUE_STRING)) == 0) then begin
            raise (Java_return (Obj.repr (true)))
        end else if (((Obj.magic tsUtil)#compareTo (!booleanStringLowerCase, !booleanFactory#fALSE_STRING)) == 0) then begin
            raise (Java_return (Obj.repr (false)))
        end else begin
            raise (Failure ("Invalid booleanString - Must be true or false"))
        end
        end
        with Java_return value -> Obj.obj value
    

    method isStringBoolean ((booleanString : string)) : bool =
        try
        begin
        let booleanFactory : BooleanFactory.booleanFactory ref = ref (((BooleanFactory.getInstance ()) :> BooleanFactory.booleanFactory)) in ();
        let booleanStringLowerCase : string ref = ref ((String.lowercase_ascii booleanString)) in ();
        if (((String.compare !booleanStringLowerCase (!booleanFactory#tRUE_STRING)) == 0) || ((String.compare !booleanStringLowerCase (!booleanFactory#fALSE_STRING)) == 0)) then begin
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value
    

    method toStringFromBooleanArray ((booleanArray : bool array)) : string =
        begin
        let stringMaker : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let size : int ref = ref ((Array.length booleanArray)) in ();
        for index = 0 to !size - 1 do
            ignore (!stringMaker#appendboolean (booleanArray.(index)))
        done;
        (java_string_of (Obj.repr !stringMaker))
        end

    initializer
      begin
        tsUtil <- (Obj.repr (Obj.magic (java_call_static "TsUtil.getInstance" (Obj.repr ()))));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "BooleanUtil" (fun arguments -> Obj.repr (new booleanUtil (Obj.obj arguments)))

let instance = (new booleanUtil ())
let get_instance () = instance
let () = java_register_static "BooleanUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "BooleanUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


