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
(* package org.allbinary.graphics.form.item.validation *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.graphics.form.item.ABTextFieldItem *)
(* import org.allbinary.logic.control.validate.ValidatorBase *)
(* import org.allbinary.logic.java.bool.BooleanFactory *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class textFieldItemValidator (textFieldItem_arg, (min_arg : int), (max_arg : int), (allowOnEmpty_arg : bool)) =
  object
    inherit ValidatorBase.validatorBase ()
    val mutable textFieldItem : Obj.t = Obj.repr 0
    method textFieldItem : 'r. 'r = Obj.magic textFieldItem
    method set_textFieldItem : 'v. 'v -> unit = fun value' -> textFieldItem <- Obj.repr value'
    val mutable min : int = 0
    method min = min
    method set_min value' = min <- value'
    val mutable max : int = 0
    method max = max
    method set_max value' = max <- value'
    val mutable allowOnEmpty : bool = false
    method allowOnEmpty = allowOnEmpty
    method set_allowOnEmpty value' = allowOnEmpty <- value'
    
    

    method isValid () : bool =
        begin
        let booleanFactory : BooleanFactory.booleanFactory ref = ref (((BooleanFactory.getInstance ()) :> BooleanFactory.booleanFactory)) in ();
        let result : bool ref = ref (!booleanFactory#tRUE) in ();
        let string : string ref = ref (((Obj.magic textFieldItem)#getString ())) in ();
        let textLength : int ref = ref ((String.length !string)) in ();
        if ((((!textLength = 0) && allowOnEmpty)) || ((!textLength > min) && (!textLength < max))) then begin
            ()
        end else begin
            if (!textLength < min) then begin
                result := !booleanFactory#fALSE
            end else if (!textLength > max) then begin
                result := !booleanFactory#fALSE
            end
        end;
        !result
        end [@@warning "-7"]
    

    method toList () : BasicArrayList.basicArrayList =
        begin
        let list : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        let string : string ref = ref (((Obj.magic textFieldItem)#getString ())) in ();
        let textLength : int ref = ref ((String.length !string)) in ();
        if ((!textLength > min) && (!textLength < max)) then begin
            ()
        end else begin
            let label : string ref = ref (((Obj.magic textFieldItem)#getLabel ())) in ();
            let name : string ref = ref ((String.sub !label (0) ((((String.length !label) - 2)) - (0)))) in ();
            if (!textLength < min) then begin
                ignore (!list#add ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (!name))#append (" is to short"))))))
            end else if (!textLength > max) then begin
                ignore (!list#add ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (!name))#append (" is to long"))))))
            end
        end;
        (!list :> BasicArrayList.basicArrayList)
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        ();
        ();
        ();
        textFieldItem <- Obj.repr (textFieldItem_arg);
        min <- min_arg;
        max <- max_arg;
        allowOnEmpty <- allowOnEmpty_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "TextFieldItemValidator" (fun arguments -> Obj.repr (new textFieldItemValidator (Obj.obj arguments)))


