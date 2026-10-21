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
(* package org.allbinary.input.automation.actions.script.condition *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.data.tree.dom.DomNodeHelper *)
(* import org.allbinary.data.tree.dom.DomSearchHelper *)
(* import org.allbinary.data.tree.dom.ModDomHelper *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)
(* import org.w3c.dom.NodeList *)

let nAME : string = "Always On/Off"
let get_nAME () = nAME
let () = java_register_static "AlwaysActionScriptCondition.get_nAME" (fun _ -> Obj.repr (get_nAME ()))
class alwaysActionScriptCondition () =
  object (self)
    inherit BasicProfileActionScriptCondition.basicProfileActionScriptCondition (nAME) as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable alwaysActionScriptConditionJPanel : AlwaysActionScriptConditionJPanel.alwaysActionScriptConditionJPanel = (Obj.magic 0)
    method alwaysActionScriptConditionJPanel = alwaysActionScriptConditionJPanel
    method set_alwaysActionScriptConditionJPanel value' = alwaysActionScriptConditionJPanel <- value'
    val mutable isOn : bool = false
    method isOn = isOn
    method set_isOn value' = isOn <- value'
    
    
    

    method init () : unit =
        begin
        alwaysActionScriptConditionJPanel <- (new AlwaysActionScriptConditionJPanel.alwaysActionScriptConditionJPanel (self))
        end [@@warning "-7"]
    

    method isIsOn () : bool =
        begin
        isOn
        end [@@warning "-7"]
    

    method setIsOn ((isOn_arg : bool)) : unit =
        begin
        isOn <- isOn_arg
        end [@@warning "-7"]
    

    method showDialog () : unit =
        begin
        ignore ((alwaysActionScriptConditionJPanel#getAlwaysActionJDialog ())#setVisible (true))
        end [@@warning "-7"]
    

    method toHashMap () : java_hash_map =
        begin
        let hashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        ignore (!hashMap#put ((AlwaysActionScriptConditionData.get_iS_ON ()), (string_of_bool ((self#isIsOn ())))));
        ignore ((Obj.magic logUtil)#putF (("HashMap: " ^ (java_string_of (Obj.repr !hashMap))), self, "toHashMap()"));
        (!hashMap :> java_hash_map)
        end [@@warning "-7"]
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        let node : Obj.t ref = ref ((Obj.repr (super#toXmlNode ((Obj.magic document))))) in ();
        ignore ((Obj.magic !node)#appendChild ((ModDomHelper.createNodeWithValueNodes ((Obj.magic document), (AlwaysActionScriptConditionData.get_nAME ()), (self#toHashMap ())))));
        (Obj.magic ((Obj.magic !node)))
        end [@@warning "-7-20"]
    

    method shouldProcess ((frame : int)) : bool =
        try
        begin
        if (self#isIsOn ()) then begin
            raise (Java_return (Obj.repr ((super#shouldProcess (frame)))))
        end;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method log () : unit =
        begin
        ignore ((Obj.magic logUtil)#putF (("Is On: " ^ java_string_of (Obj.repr ((self#isIsOn ())))), self, "log"))
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        alwaysActionScriptConditionJPanel <- ((Obj.magic 0) :> AlwaysActionScriptConditionJPanel.alwaysActionScriptConditionJPanel);
        isOn <- false;
        ();
        (* super(...) is the inherit clause *) ();
        (self#init ())
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "AlwaysActionScriptCondition" (fun arguments -> Obj.repr (new alwaysActionScriptCondition (Obj.obj arguments)))


