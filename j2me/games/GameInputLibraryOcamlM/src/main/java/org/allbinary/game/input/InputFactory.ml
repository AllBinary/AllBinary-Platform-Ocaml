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
(* package org.allbinary.game.input *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.math.SmallIntegerSingletonFactory *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonStrings *)

let instance : Obj.t ref = ref ((Obj.repr (NullUtil.getInstance ())#nULL_OBJECT))
let get_instance () = !instance
let set_instance value' = instance := value'
let () = java_register_static "InputFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))
let () = java_register_static "InputFactory.set_instance" (fun value' -> set_instance (Obj.obj value'); Obj.repr ())
class inputFactory () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable kEY_CODE_LABEL : string = ""
    method kEY_CODE_LABEL = kEY_CODE_LABEL
    method set_kEY_CODE_LABEL value' = kEY_CODE_LABEL <- value'
    val mutable dEVICE_ID_LABEL : string = ""
    method dEVICE_ID_LABEL = dEVICE_ID_LABEL
    method set_dEVICE_ID_LABEL value' = dEVICE_ID_LABEL <- value'
    val mutable mAX : int = 0
    method mAX = mAX
    method set_mAX value' = mAX <- value'
    val mutable inputIntegerArray : Input.input array = (Obj.magic 0)
    method inputIntegerArray = inputIntegerArray
    method set_inputIntegerArray value' = inputIntegerArray <- value'
    val mutable nO_INPUT : Input.input = (Obj.magic 0)
    method nO_INPUT = nO_INPUT
    method set_nO_INPUT value' = nO_INPUT <- value'
    
    

    method add : 'any2. int * 'any2 -> unit = fun ((id : int), input) ->
        let input = Obj.repr input in
        begin
        inputIntegerArray.(id) <- ((Obj.magic input) :> Input.input)
        end [@@warning "-20"]
    

    method getInstanceById : 'return. int -> 'return = fun ((id : int)) ->
        let id = ref id in
        try
        begin
        if (!id < 0) then begin
            id := (- !id)
        end;
        if (!id > (Array.length inputIntegerArray)) then begin
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("Warning id: "))#appendint (!id)))), (Obj.magic self), commonStrings#gET_INSTANCE));
            raise (Java_return (Obj.repr (nO_INPUT)))
        end;
        (Obj.magic (inputIntegerArray.(!id)))
        end
        with Java_return value -> Obj.obj value

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        kEY_CODE_LABEL <- "KeyCode: ";
        dEVICE_ID_LABEL <- "DeviceId: ";
        mAX <- ((SmallIntegerSingletonFactory.getInstance ())#getMin ());
        inputIntegerArray <- (Array.make (mAX) (Obj.magic 0));
        nO_INPUT <- ((new Input.input (0, commonStrings#uNKNOWN)) :> Input.input);
        ();
        let size : int ref = ref ((Array.length inputIntegerArray)) in ();
        for index = 0 to !size - 1 do
            inputIntegerArray.(index) <- (nO_INPUT :> Input.input)
        done
      end
  end [@@warning "-20"]
let () = java_register_constructor "InputFactory" (fun arguments -> Obj.repr (new inputFactory (Obj.obj arguments)))

let getInstance : 'return. unit -> 'return = fun () ->
        begin
        if ((Obj.repr !instance) == (Obj.repr (NullUtil.getInstance ())#nULL_OBJECT)) then begin
            instance := (Obj.repr ((new inputFactory ())))
        end;
        (Obj.magic ((Obj.magic !instance)))
        end
let () = java_register_static "InputFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


