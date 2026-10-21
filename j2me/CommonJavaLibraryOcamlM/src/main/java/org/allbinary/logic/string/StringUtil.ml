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
(* import jsinterop.annotations.JsType *)
(* import jsinterop.annotations.JsMethod *)
(* import jsinterop.annotations.JsConstructor *)
(* import jsinterop.annotations.JsProperty *)

class stringUtil () =
  object
    val mutable iNIT_STRING : string = ""
    method iNIT_STRING = iNIT_STRING
    method set_iNIT_STRING value' = iNIT_STRING <- value'
    val mutable nULL_STRING : string = ""
    method nULL_STRING = nULL_STRING
    method set_nULL_STRING value' = nULL_STRING <- value'
    val mutable eMPTY_STRING : string = ""
    method eMPTY_STRING = eMPTY_STRING
    method set_eMPTY_STRING value' = eMPTY_STRING <- value'
    val mutable oNE_EMPTY_STRING_ARRAY : string array = (Obj.magic 0)
    method oNE_EMPTY_STRING_ARRAY = oNE_EMPTY_STRING_ARRAY
    method set_oNE_EMPTY_STRING_ARRAY value' = oNE_EMPTY_STRING_ARRAY <- value'
    val mutable stringArray : string array = (Obj.magic 0)
    method stringArray = stringArray
    method set_stringArray value' = stringArray <- value'
    
    

    method getNonNull ((string : string)) : string =
        try
        begin
        if (string = (Obj.magic 0)) then begin
            raise (Java_return (Obj.repr (eMPTY_STRING)))
        end else begin
            raise (Java_return (Obj.repr (string)))
        end
        end
        with Java_return value -> Obj.obj value
    

    method getArrayInstance () : string array =
        begin
        stringArray
        end
    

    method count ((string : string), (aChar : char)) : int =
        begin
        let count : int ref = ref (0) in ();
        let size : int ref = ref ((String.length string)) in ();
        for index = 0 to !size - 1 do
            if ((String.get string (index)) == aChar) then begin
                count := !count + 1
            end
        done;
        !count
        end
    

    method toString : 'any1. 'any1 -> string = fun (anyType) ->
        let anyType = Obj.repr anyType in
        try
        begin
        if (anyType != (Obj.magic 0)) then begin
            raise (Java_return (Obj.repr ((java_string_of (Obj.repr anyType)))))
        end else begin
            raise (Java_return (Obj.repr (nULL_STRING)))
        end
        end
        with Java_return value -> Obj.obj value

    initializer
      begin
        iNIT_STRING <- (Obj.obj (java_new "String" (Obj.repr (""))));
        nULL_STRING <- "null";
        eMPTY_STRING <- "";
        oNE_EMPTY_STRING_ARRAY <- [| eMPTY_STRING |];
        stringArray <- (Array.make (0) (Obj.magic 0));
        ();
        ()
      end
  end
let () = java_register_constructor "StringUtil" (fun arguments -> Obj.repr (new stringUtil (Obj.obj arguments)))

let instance = (new stringUtil ())
let get_instance () = instance
let () = java_register_static "StringUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "StringUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


