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
(* package org.allbinary.input.motion.button *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.graphics.GPoint *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.string.CommonSeps *)

class currentlyPressedTouchButtonSingletonDebug () =
  object (self)
    inherit CurrentlyPressedTouchButtonSingleton.currentlyPressedTouchButtonSingleton () as super
    val mutable string : string = ""
    method string = string
    method set_string value' = string <- value'
    val mutable listString : string = ""
    method listString = listString
    method set_listString value' = listString <- value'
    val mutable append : string = ""
    method append = append
    method set_append value' = append <- value'
    val mutable pRESSED_AND_FIRED : string = ""
    method pRESSED_AND_FIRED = pRESSED_AND_FIRED
    method set_pRESSED_AND_FIRED value' = pRESSED_AND_FIRED <- value'
    val mutable pRESSED_AND_NOT_FIRED : string = ""
    method pRESSED_AND_NOT_FIRED = pRESSED_AND_NOT_FIRED
    method set_pRESSED_AND_NOT_FIRED value' = pRESSED_AND_NOT_FIRED <- value'
    val mutable aSSOCIATED_RELEASED_AND_FIRED : string = ""
    method aSSOCIATED_RELEASED_AND_FIRED = aSSOCIATED_RELEASED_AND_FIRED
    method set_aSSOCIATED_RELEASED_AND_FIRED value' = aSSOCIATED_RELEASED_AND_FIRED <- value'
    val mutable rELEASED_AND_FIRED : string = ""
    method rELEASED_AND_FIRED = rELEASED_AND_FIRED
    method set_rELEASED_AND_FIRED value' = rELEASED_AND_FIRED <- value'
    val mutable rELEASED_AND_FIRED_2 : string = ""
    method rELEASED_AND_FIRED_2 = rELEASED_AND_FIRED_2
    method set_rELEASED_AND_FIRED_2 value' = rELEASED_AND_FIRED_2 <- value'
    val mutable rELEASED_AND_NOT_FIRED : string = ""
    method rELEASED_AND_NOT_FIRED = rELEASED_AND_NOT_FIRED
    method set_rELEASED_AND_NOT_FIRED value' = rELEASED_AND_NOT_FIRED <- value'
    

    method appendTouchButtonInput : 'any2. string * 'any2 -> unit = fun ((append_arg : string), touchButtonInput) ->
        let touchButtonInput = Obj.repr touchButtonInput in
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ((java_string_of (Obj.repr (Obj.magic touchButtonInput)))));
        ignore (!stringBuffer#append ((CommonSeps.getInstance ())#sPACE));
        ignore (!stringBuffer#append (append_arg));
        append <- (java_string_of (Obj.repr !stringBuffer));
        string <- (java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (listString))#append (append))))
        end [@@warning "-7-20"]
    

    method append ((append_arg : string)) : unit =
        begin
        append <- (java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (append))#append (append_arg))));
        string <- (java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (listString))#append (append))))
        end [@@warning "-7"]
    

    method clearLog ((x : int), (y : int)) : unit =
        begin
        append <- (java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ((GPoint.toStringStatic (x, y, 0))))#append ((CommonSeps.getInstance ())#sPACE))));
        string <- (java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (listString))#append (append))))
        end [@@warning "-7"]
    

    method releaseAndNotFired () : unit =
        begin
        (self#append (rELEASED_AND_NOT_FIRED))
        end [@@warning "-7"]
    

    method releaseAndFired : 'any1. 'any1 -> unit = fun (touchButtonInput) ->
        let touchButtonInput = Obj.repr touchButtonInput in
        begin
        (self#appendTouchButtonInput (rELEASED_AND_FIRED, (Obj.magic touchButtonInput)))
        end [@@warning "-7-20"]
    

    method releaseAndFired2 : 'any1. 'any1 -> unit = fun (touchButtonInput) ->
        let touchButtonInput = Obj.repr touchButtonInput in
        begin
        (self#appendTouchButtonInput (rELEASED_AND_FIRED_2, (Obj.magic touchButtonInput)))
        end [@@warning "-7-20"]
    

    method releaseAndFiredAssociated : 'any1. 'any1 -> unit = fun (touchButtonInput) ->
        let touchButtonInput = Obj.repr touchButtonInput in
        begin
        (self#appendTouchButtonInput (aSSOCIATED_RELEASED_AND_FIRED, (Obj.magic touchButtonInput)))
        end [@@warning "-7-20"]
    

    method pressedAndFired : 'any1. 'any1 -> unit = fun (touchButtonInput) ->
        let touchButtonInput = Obj.repr touchButtonInput in
        begin
        (self#appendTouchButtonInput (pRESSED_AND_FIRED, (Obj.magic touchButtonInput)))
        end [@@warning "-7-20"]
    

    method pressedAndNotFired : 'any1. 'any1 -> unit = fun (touchButtonInput) ->
        let touchButtonInput = Obj.repr touchButtonInput in
        begin
        (self#appendTouchButtonInput (pRESSED_AND_NOT_FIRED, (Obj.magic touchButtonInput)))
        end [@@warning "-7-20"]
    

    method removeAt ((index : int)) : TouchButtonInput.touchButtonInput =
        begin
        let touchButtonInput : TouchButtonInput.touchButtonInput ref = ref (((super#removeAt (index)) :> TouchButtonInput.touchButtonInput)) in ();
        listString <- (java_string_of (Obj.repr (self#list)));
        string <- (java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (listString))#append (append))));
        (!touchButtonInput :> TouchButtonInput.touchButtonInput)
        end [@@warning "-7"]
    

    method remove : 'any1. 'any1 -> bool = fun (touchButtonInput) ->
        let touchButtonInput = Obj.repr touchButtonInput in
        begin
        let isRemoved : bool ref = ref ((super#remove ((Obj.magic touchButtonInput)))) in ();
        listString <- (java_string_of (Obj.repr (self#list)));
        string <- (java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (listString))#append (append))));
        !isRemoved
        end [@@warning "-7-20"]
    

    method add : 'any1. 'any1 -> unit = fun (touchButtonInput) ->
        let touchButtonInput = Obj.repr touchButtonInput in
        begin
        ignore (super#add ((Obj.magic touchButtonInput)));
        listString <- (java_string_of (Obj.repr (self#list)));
        string <- (java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (listString))#append (append))))
        end [@@warning "-7-20"]
    

    method toString () : string =
        begin
        string
        end [@@warning "-7"]

    initializer
      begin
        string <- (StringUtil.getInstance ())#eMPTY_STRING;
        listString <- (StringUtil.getInstance ())#eMPTY_STRING;
        append <- (StringUtil.getInstance ())#eMPTY_STRING;
        pRESSED_AND_FIRED <- "pressed & fired";
        pRESSED_AND_NOT_FIRED <- "pressed in button but not fired";
        aSSOCIATED_RELEASED_AND_FIRED <- "assoc. rel & fired";
        rELEASED_AND_FIRED <- "rel & fired 1";
        rELEASED_AND_FIRED_2 <- "rel & fired 2";
        rELEASED_AND_NOT_FIRED <- "rel & not fired";
        ()
      end
  end
let () = java_register_constructor "CurrentlyPressedTouchButtonSingletonDebug" (fun arguments -> Obj.repr (new currentlyPressedTouchButtonSingletonDebug (Obj.obj arguments)))

let instanceC = (new currentlyPressedTouchButtonSingletonDebug ())
let get_instanceC () = instanceC
let () = java_register_static "CurrentlyPressedTouchButtonSingletonDebug.get_instanceC" (fun _ -> Obj.repr (get_instanceC ()))

let getInstance () : CurrentlyPressedTouchButtonSingleton.currentlyPressedTouchButtonSingleton =
        begin
        (instanceC :> CurrentlyPressedTouchButtonSingleton.currentlyPressedTouchButtonSingleton)
        end
let () = java_register_static "CurrentlyPressedTouchButtonSingletonDebug.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


