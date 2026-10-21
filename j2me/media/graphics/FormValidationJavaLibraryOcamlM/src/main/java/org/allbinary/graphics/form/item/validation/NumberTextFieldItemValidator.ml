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
(* import org.allbinary.logic.math.SmallIntegerSingletonFactory *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class numberTextFieldItemValidator (textFieldItem_arg, (maxChars_arg : int), (min_arg : int), (max_arg : int)) =
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
    val mutable maxChars : int = 0
    method maxChars = maxChars
    method set_maxChars value' = maxChars <- value'
    
    

    method isNumberValid ((_value : int)) : bool =
        begin
        (BooleanFactory.getInstance ())#tRUE
        end [@@warning "-7"]
    

    method toNumberVector ((_value : int)) : BasicArrayList.basicArrayList =
        begin
        ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)
        end [@@warning "-7"]
    

    method isValid () : bool =
        begin
        let result : bool ref = ref ((BooleanFactory.getInstance ())#tRUE) in ();
        let string : string ref = ref (((Obj.magic textFieldItem)#getString ())) in ();
        let textLength : int ref = ref ((String.length !string)) in ();
        if ((!textLength > 0) && (!textLength < maxChars)) then begin
            (try
                ignore (int_of_string (((Obj.magic textFieldItem)#getString ())))
            with e -> begin
                result := (BooleanFactory.getInstance ())#fALSE
            end)
        end else begin
            if (!textLength < 1) then begin
                result := (BooleanFactory.getInstance ())#fALSE
            end else if (!textLength > maxChars) then begin
                result := (BooleanFactory.getInstance ())#fALSE
            end
        end;
        !result
        end [@@warning "-7"]
    

    method toList () : BasicArrayList.basicArrayList =
        begin
        let list : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        let string : string ref = ref (((Obj.magic textFieldItem)#getString ())) in ();
        let textLength : int ref = ref ((String.length !string)) in ();
        let label : string ref = ref (((Obj.magic textFieldItem)#getLabel ())) in ();
        let name : string ref = ref ((String.sub !label (0) ((((String.length !label) - 2)) - (0)))) in ();
        let smallIntegerSingletonFactory : SmallIntegerSingletonFactory.smallIntegerSingletonFactory ref = ref (((SmallIntegerSingletonFactory.getInstance ()) :> SmallIntegerSingletonFactory.smallIntegerSingletonFactory)) in ();
        let stringMaker : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        if ((!textLength > 0) && (!textLength < maxChars)) then begin
            (try
                let number : int ref = ref ((!smallIntegerSingletonFactory#createInstance ((int_of_string (((Obj.magic textFieldItem)#getString ())))))) in ();
                if (!number > min) then begin
                    ignore (!stringMaker#delete (0, (!stringMaker#length ())));
                    ignore (!list#add ((java_string_of (Obj.repr ((!stringMaker#append (!name))#append (" is to small"))))))
                end else if (!number > max) then begin
                    ignore (!stringMaker#delete (0, (!stringMaker#length ())));
                    ignore (!list#add ((java_string_of (Obj.repr ((!stringMaker#append (!name))#append (" is to large"))))))
                end
            with e -> begin
                ignore (!stringMaker#delete (0, (!stringMaker#length ())));
                ignore (!list#add ((java_string_of (Obj.repr ((!stringMaker#append (!name))#append (" is not a number"))))))
            end)
        end else begin
            if (!textLength < 1) then begin
                ignore (!stringMaker#delete (0, (!stringMaker#length ())));
                ignore (!list#add ((java_string_of (Obj.repr ((!stringMaker#append (!name))#append (" is to short"))))))
            end else if (!textLength > maxChars) then begin
                ignore (!stringMaker#delete (0, (!stringMaker#length ())));
                ignore (!list#add ((java_string_of (Obj.repr ((!stringMaker#append (!name))#append (" is to long"))))))
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
        maxChars <- maxChars_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "NumberTextFieldItemValidator" (fun arguments -> Obj.repr (new numberTextFieldItemValidator (Obj.obj arguments)))


