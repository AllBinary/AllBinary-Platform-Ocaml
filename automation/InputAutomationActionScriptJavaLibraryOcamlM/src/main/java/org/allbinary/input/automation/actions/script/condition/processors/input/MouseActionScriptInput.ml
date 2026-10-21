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
(* package org.allbinary.input.automation.actions.script.condition.processors.input *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.awt *)
(* import java.awt.event.InputEvent *)
(* import java.util.HashMap *)
(* import org.allbinary.data.tree.dom.DomNodeHelper *)
(* import org.allbinary.data.tree.dom.DomSearchHelper *)
(* import org.allbinary.data.tree.dom.ModDomHelper *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.java.bool.BooleanFactory *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)
(* import org.w3c.dom.NodeList *)

let nAME : string = "Mouse"
let get_nAME () = nAME
let () = java_register_static "MouseActionScriptInput.get_nAME" (fun _ -> Obj.repr (get_nAME ()))
class mouseActionScriptInput () =
  object (self)
    inherit BasicProfileActionScriptInput.basicProfileActionScriptInput (nAME) as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable point : Obj.t = Obj.repr 0
    method point : 'r. 'r = Obj.magic point
    method set_point : 'v. 'v -> unit = fun value' -> point <- Obj.repr value'
    val mutable buttons : int = 0
    method buttons = buttons
    method set_buttons value' = buttons <- value'
    val mutable mouseActionScriptInputJPanel : Obj.t = Obj.repr 0
    method mouseActionScriptInputJPanel : 'r. 'r = Obj.magic mouseActionScriptInputJPanel
    method set_mouseActionScriptInputJPanel : 'v. 'v -> unit = fun value' -> mouseActionScriptInputJPanel <- Obj.repr value'
    
    
    

    method setPoint : 'any1. 'any1 -> unit = fun (point_arg) ->
        let point_arg = Obj.repr point_arg in
        begin
        point <- Obj.repr ((Obj.magic point_arg))
        end [@@warning "-7-20"]
    

    method getPoint : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic point)))
        end [@@warning "-7"]
    

    method getButtonClicks () : int =
        begin
        buttons
        end [@@warning "-7"]
    

    method setButtonClicks ((buttons_arg : int)) : unit =
        begin
        buttons <- buttons_arg
        end [@@warning "-7"]
    

    method showDialog () : unit =
        begin
        ignore (((Obj.magic mouseActionScriptInputJPanel)#getMouseActionJDialog ())#setVisible (true))
        end [@@warning "-7"]
    

    method toHashMap () : java_hash_map =
        begin
        let hashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        ignore (!hashMap#put ((MouseActionScriptInputData.get_bUTTONS ()), (string_of_int ((self#getButtonClicks ())))));
        ignore ((Obj.magic logUtil)#putF (("HashMap: " ^ (java_string_of (Obj.repr !hashMap))), self, "toHashMap()"));
        (!hashMap :> java_hash_map)
        end [@@warning "-7"]
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        let node : Obj.t ref = ref ((Obj.repr (super#toXmlNode ((Obj.magic document))))) in ();
        let mouseNode : Obj.t ref = ref ((Obj.repr (ModDomHelper.createNodeWithValueNodes ((Obj.magic document), (MouseActionScriptInputData.get_nAME ()), (self#toHashMap ()))))) in ();
        ignore ((Obj.magic !node)#appendChild ((Obj.magic !mouseNode)));
        let hashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        ignore (!hashMap#put ((MouseActionScriptInputData.get_mOVE_X ()), (string_of_int ((self#getPoint ())#x))));
        ignore (!hashMap#put ((MouseActionScriptInputData.get_mOVE_Y ()), (string_of_int ((self#getPoint ())#y))));
        ignore ((Obj.magic !mouseNode)#appendChild ((ModDomHelper.createNodeWithValueNodes ((Obj.magic document), (MouseActionScriptInputData.get_mOVE ()), !hashMap))));
        (Obj.magic ((Obj.magic !node)))
        end [@@warning "-7-20"]
    

    method process ((_frame : int)) : unit =
        begin
        ignore (MouseInputAutomationProcessor.process (self))
        end [@@warning "-7"]
    

    method log () : unit =
        begin
        let buttonStringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!buttonStringBuffer#append ("1: "));
        let booleanFactory : BooleanFactory.booleanFactory ref = ref (((BooleanFactory.getInstance ()) :> BooleanFactory.booleanFactory)) in ();
        if ((((self#getButtonClicks ()) land (InputEvent.get_bUTTON1_MASK ()))) != 0) then begin
            ignore (!buttonStringBuffer#append (!booleanFactory#tRUE_STRING))
        end else begin
            ignore (!buttonStringBuffer#append (!booleanFactory#fALSE_STRING))
        end;
        ignore (!buttonStringBuffer#append (" 2: "));
        if ((((self#getButtonClicks ()) land (InputEvent.get_bUTTON2_MASK ()))) != 0) then begin
            ignore (!buttonStringBuffer#append (!booleanFactory#tRUE_STRING))
        end else begin
            ignore (!buttonStringBuffer#append (!booleanFactory#fALSE_STRING))
        end;
        ignore (!buttonStringBuffer#append (" 3: "));
        if ((((self#getButtonClicks ()) land (InputEvent.get_bUTTON3_MASK ()))) != 0) then begin
            ignore (!buttonStringBuffer#append (!booleanFactory#tRUE_STRING))
        end else begin
            ignore (!buttonStringBuffer#append (!booleanFactory#fALSE_STRING))
        end;
        ignore ((Obj.magic logUtil)#putF (((((("Input Type: " ^ ((self#getInputRobotInterface ())#getName ())) ^ " Point: ") ^ java_string_of (Obj.repr ((self#getPoint ())))) ^ " Buttons Clicked: ") ^ (java_string_of (Obj.repr !buttonStringBuffer))), self, "log"))
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        buttons <- 0;
        ();
        ();
        (* super(...) is the inherit clause *) ();
        point <- Obj.repr ((Obj.obj (java_new "Point" (Obj.repr ()))));
        ignore (self#setAllowsChildren (false));
        mouseActionScriptInputJPanel <- Obj.repr ((new MouseActionScriptInputJPanel.mouseActionScriptInputJPanel (self)))
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "MouseActionScriptInput" (fun arguments -> Obj.repr (new mouseActionScriptInput (Obj.obj arguments)))


