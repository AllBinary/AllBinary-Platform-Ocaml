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
(* package org.allbinary.game.configuration *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.TextField *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.util.ABHashtable *)

let hashtable : Obj.t ref = ref ((Obj.repr ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashtable ())))
let get_hashtable () = Obj.magic !hashtable
let set_hashtable value' = hashtable := Obj.repr value'
let () = java_register_static "GameConfigurationTextInput.get_hashtable" (fun _ -> Obj.repr (get_hashtable ()))

let update : 'any1. 'any1 -> unit = fun (textField) ->
        let textField = Obj.repr textField in
        begin
        let anyType : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic textField)#getLabel ())))) in ();
        let gameConfigurationTextInput : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic !hashtable)#get (!anyType))))) in ();
        ignore ((Obj.magic !gameConfigurationTextInput)#setText (((Obj.magic textField)#getString ())))
        end [@@warning "-20"]

and getHashtable : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic !hashtable)))
        end

let () = java_register_static "GameConfigurationTextInput.update" (fun arguments -> Obj.repr (update (Obj.obj arguments)))
let () = java_register_static "GameConfigurationTextInput.getHashtable" (fun arguments -> Obj.repr (getHashtable (Obj.obj arguments)))
class gameConfigurationTextInput ((label_arg : string), (text_arg : string)) =
  object (self)
    val mutable label : string = ""
    method label = label
    method set_label value' = label <- value'
    val mutable text : string = ""
    method text = text
    method set_text value' = text <- value'
    
    

    method setText ((text_arg : string)) : unit =
        begin
        text <- text_arg
        end
    

    method getText () : string =
        begin
        text
        end
    

    method setLabel ((label_arg : string)) : unit =
        begin
        label <- label_arg
        end
    

    method getLabel () : string =
        begin
        label
        end

    initializer
      begin
        label <- (StringUtil.getInstance ())#eMPTY_STRING;
        text <- (StringUtil.getInstance ())#eMPTY_STRING;
        ();
        (self#setText (text_arg));
        (self#setLabel (label_arg));
        ignore ((Obj.magic !hashtable)#put ((self#getLabel ()), self))
      end
  end
let () = java_register_constructor "GameConfigurationTextInput" (fun arguments -> Obj.repr (new gameConfigurationTextInput (Obj.obj arguments)))

let sIMULATOR_IP = ref ((new gameConfigurationTextInput ("IP: ", "192.168.1.3")))
let get_sIMULATOR_IP () = !sIMULATOR_IP
let set_sIMULATOR_IP value' = sIMULATOR_IP := value'
let () = java_register_static "GameConfigurationTextInput.get_sIMULATOR_IP" (fun _ -> Obj.repr (get_sIMULATOR_IP ()))

let sIMULATOR_PORT = ref ((new gameConfigurationTextInput ("Port: ", "8010")))
let get_sIMULATOR_PORT () = !sIMULATOR_PORT
let set_sIMULATOR_PORT value' = sIMULATOR_PORT := value'
let () = java_register_static "GameConfigurationTextInput.get_sIMULATOR_PORT" (fun _ -> Obj.repr (get_sIMULATOR_PORT ()))


