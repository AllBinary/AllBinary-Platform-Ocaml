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
(* import java.awt.event.KeyEvent *)
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.data.tree.dom.DomNodeHelper *)
(* import org.allbinary.data.tree.dom.DomSearchHelper *)
(* import org.allbinary.data.tree.dom.ModDomHelper *)
(* import org.allbinary.input.KeySingletonFactory *)
(* import org.allbinary.input.KeyUtil *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonLabels *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)
(* import org.w3c.dom.NodeList *)

let nAME : string = "Keyboard"
let get_nAME () = nAME
let () = java_register_static "KeyboardActionScriptInput.get_nAME" (fun _ -> Obj.repr (get_nAME ()))

(* Java overload getText(ArrayType) is not converted: OCaml has one method per name *)
class keyboardActionScriptInput () =
  object (self)
    inherit BasicProfileActionScriptInput.basicProfileActionScriptInput (nAME) as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable keyArray : int array = (Obj.magic 0)
    method keyArray = keyArray
    method set_keyArray value' = keyArray <- value'
    val mutable keyboardActionScriptInputJPanel : KeyboardActionScriptInputJPanel.keyboardActionScriptInputJPanel = (Obj.magic 0)
    method keyboardActionScriptInputJPanel = keyboardActionScriptInputJPanel
    method set_keyboardActionScriptInputJPanel value' = keyboardActionScriptInputJPanel <- value'
    val mutable press : bool = false
    method press = press
    method set_press value' = press <- value'
    val mutable release : bool = false
    method release = release
    method set_release value' = release <- value'
    val mutable delayBetweenKeys : int = 0
    method delayBetweenKeys = delayBetweenKeys
    method set_delayBetweenKeys value' = delayBetweenKeys <- value'
    
    
    

    method getDelayBetweenKeys () : int =
        begin
        delayBetweenKeys
        end [@@warning "-7"]
    

    method setDelayBetweenKeys ((delayBetweenKeys_arg : int)) : unit =
        begin
        delayBetweenKeys <- delayBetweenKeys_arg
        end [@@warning "-7"]
    

    method isPress () : bool =
        begin
        press
        end [@@warning "-7"]
    

    method setPress ((press_arg : bool)) : unit =
        begin
        press <- press_arg
        end [@@warning "-7"]
    

    method isRelease () : bool =
        begin
        release
        end [@@warning "-7"]
    

    method setRelease ((release_arg : bool)) : unit =
        begin
        release <- release_arg
        end [@@warning "-7"]
    

    method isNormal () : bool =
        begin
        ((self#isRelease ()) && (self#isPress ()))
        end [@@warning "-7"]
    

    method setNormal () : unit =
        begin
        (self#setPress (true));
        (self#setRelease (true))
        end [@@warning "-7"]
    

    method getKeyArray () : int array =
        begin
        keyArray
        end [@@warning "-7"]
    

    method setKeyArray ((keyArray_arg : int array)) : unit =
        begin
        if (keyArray_arg != (Obj.magic 0)) then begin
            ignore ((Obj.magic logUtil)#putF (((CommonLabels.getInstance ())#sTART + (Array.length keyArray_arg)), self, "setKeyArray"))
        end;
        keyArray <- keyArray_arg
        end [@@warning "-7"]
    

    method showDialog () : unit =
        begin
        ignore ((keyboardActionScriptInputJPanel#getKeyActionJDialog ())#setVisible (true))
        end [@@warning "-7"]
    

    method getText () : string =
        begin
        (self#getText ((self#getKeyArray ())))
        end [@@warning "-7"]
    

    method setText ((text : string)) : unit =
        begin
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr ((CommonLabels.getInstance ())#sTART)) ^ text), self, "setText"));
        let integerArray : int array ref = ref ((self#integerArrayValue (text))) in ();
        (self#setKeyArray (!integerArray))
        end [@@warning "-7"]
    

    method integerArrayValue ((text : string)) : int array =
        begin
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr ((CommonLabels.getInstance ())#sTART)) ^ text), self, "integerArrayValue"));
        let vector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        let index : int ref = ref (0) in ();
        while (!index < (String.length text)) do
            (try
            let aChar : char ref = ref ((String.get text (!index))) in ();
            if (!aChar = '&') then begin
                if ((String.get text ((!index + 1))) == '#') then begin
                    let endIndex : int ref = ref ((java_string_index_of_from text (Obj.repr (';')) ((!index + 1)))) in ();
                    if (!endIndex <> (-1)) then begin
                        let nextCharString : string ref = ref ((String.sub text ((!index + 2)) ((!endIndex) - ((!index + 2))))) in ();
                        ignore ((Obj.magic logUtil)#putF (((java_string_of (Obj.repr ((CommonLabels.getInstance ())#nEXT)) ^ " Char String: ") ^ !nextCharString), self, "integerArrayValue"));
                        ignore (!vector#add ((string_of_int ((String.sub !nextCharString (!index) (((String.length !nextCharString)) - (!index)))))));
                        index := ((!index + (String.length !nextCharString)) + 3);
                        raise Java_continue
                    end
                end
            end;
            ignore (!vector#add (((KeySingletonFactory.getHashtable ())#get ((java_string_of (Obj.repr (!aChar)))))));
            index := !index + 1
            with Java_continue -> ())
        done;
        let integerArray : int array ref = ref ((Obj.magic (!vector#toArrayType ((Array.make ((!vector#size ())) (Obj.magic 0)))))) in ();
        !integerArray
        end [@@warning "-7"]
    

    method toHashMap () : java_hash_map =
        begin
        let hashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        for index = 0 to (Array.length (self#getKeyArray ())) - 1 do
            ignore (!hashMap#put (((KeyboardActionScriptInputData.get_kEY ()) + index), (string_of_int ((self#getKeyArray ()).(index)))))
        done;
        ignore (!hashMap#put ((KeyboardActionScriptInputData.get_dELAY_BETWEEN_KEYS ()), (string_of_int ((self#getDelayBetweenKeys ())))));
        ignore (!hashMap#put ((KeyboardActionScriptInputData.get_pRESS ()), (string_of_bool ((self#isPress ())))));
        ignore (!hashMap#put ((KeyboardActionScriptInputData.get_rELEASE ()), (string_of_bool ((self#isRelease ())))));
        ignore ((Obj.magic logUtil)#putF (("HashMap: " ^ (java_string_of (Obj.repr !hashMap))), self, "toHashMap()"));
        (!hashMap :> java_hash_map)
        end [@@warning "-7"]
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        let node : Obj.t ref = ref ((Obj.repr (super#toXmlNode ((Obj.magic document))))) in ();
        ignore ((Obj.magic !node)#appendChild ((ModDomHelper.createNodeWithValueNodes ((Obj.magic document), (KeyboardActionScriptInputData.get_nAME ()), (self#toHashMap ())))));
        (Obj.magic ((Obj.magic !node)))
        end [@@warning "-7-20"]
    

    method process ((_frame : int)) : unit =
        begin
        ignore (KeyboardInputAutomationProcessor.process (self))
        end [@@warning "-7"]
    

    method log () : unit =
        begin
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr self)), self, "log"))
        end [@@warning "-7"]
    

    method toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ((super#toString ())));
        ignore (!stringBuffer#append (" Text: "));
        ignore (!stringBuffer#append ((self#getText ())));
        ignore (!stringBuffer#append (" isPress: "));
        ignore (!stringBuffer#appendboolean ((self#isPress ())));
        ignore (!stringBuffer#append (" isRelease: "));
        ignore (!stringBuffer#appendboolean ((self#isRelease ())));
        ignore (!stringBuffer#append (" Between Key Delay: "));
        ignore (!stringBuffer#appendint ((self#getDelayBetweenKeys ())));
        (java_string_of (Obj.repr !stringBuffer))
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        keyArray <- [| (KeySingletonFactory.getInstance ((KeyEvent.get_vK_0 ()))) |];
        ();
        press <- false;
        release <- false;
        delayBetweenKeys <- 0;
        ();
        (* super(...) is the inherit clause *) ();
        if ((not (self#isPress ())) && (not (self#isRelease ()))) then begin
            (self#setNormal ())
        end;
        ignore (self#setAllowsChildren (false));
        ignore (self#setTime (120));
        keyboardActionScriptInputJPanel <- (new KeyboardActionScriptInputJPanel.keyboardActionScriptInputJPanel (self))
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "KeyboardActionScriptInput" (fun arguments -> Obj.repr (new keyboardActionScriptInput (Obj.obj arguments)))


