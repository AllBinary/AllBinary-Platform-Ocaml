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
(* import java.util.HashMap *)
(* import java.util.Iterator *)
(* import java.util.Set *)
(* import org.allbinary.data.tree.dom.DomNodeHelper *)
(* import org.allbinary.data.tree.dom.DomSearchHelper *)
(* import org.allbinary.data.tree.dom.ModDomHelper *)
(* import org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessor *)
(* import org.allbinary.input.automation.robot.InputRobotFactory *)
(* import org.allbinary.input.automation.robot.InputRobotInterface *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.util.ABHashtable *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class basicProfileActionScriptInput ((label : string)) =
  object (self)
    inherit BasicProfileActionScriptProcessor.basicProfileActionScriptProcessor (label) as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable inputRobotInterface : InputRobotInterface.inputRobotInterface = (Obj.magic 0)
    method inputRobotInterface = inputRobotInterface
    method set_inputRobotInterface value' = inputRobotInterface <- value'
    val mutable time : int = 0
    method time = time
    method set_time value' = time <- value'
    
    
    

    method getTime () : int =
        begin
        time
        end [@@warning "-7"]
    

    method setTime ((time_arg : int)) : unit =
        begin
        time <- time_arg
        end [@@warning "-7"]
    

    method basicProfileActionScriptInput_toHashMap () : java_hash_map =
        begin
        let hashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        ignore (!hashMap#put ((GenericProfileActionScriptInputData.get_tYPE ()), ((self#getInputRobotInterface ())#getName ())));
        ignore (!hashMap#put ((GenericProfileActionScriptInputData.get_dELAY ()), (string_of_int ((self#getTime ())))));
        ignore ((Obj.magic logUtil)#putF (("HashMap: " ^ (java_string_of (Obj.repr !hashMap))), self, "toHashMap()"));
        (!hashMap :> java_hash_map)
        end [@@warning "-7"]
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        let node : Obj.t ref = ref ((Obj.repr (ModDomHelper.createNodeWithValueNodes ((Obj.magic document), (GenericProfileActionScriptInputData.get_nAME ()), (self#basicProfileActionScriptInput_toHashMap ()))))) in ();
        (Obj.magic ((Obj.magic !node)))
        end [@@warning "-7-20"]
    

    method setInputRobotInterface : 'any1. 'any1 -> unit = fun (inputRobotInterface_arg) ->
        let inputRobotInterface_arg = Obj.repr inputRobotInterface_arg in
        begin
        inputRobotInterface <- (Obj.magic inputRobotInterface_arg)
        end [@@warning "-7-20"]
    

    method getInputRobotInterface () : InputRobotInterface.inputRobotInterface =
        begin
        (inputRobotInterface :> InputRobotInterface.inputRobotInterface)
        end [@@warning "-7"]
    

    method toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ((super#toString ())));
        ignore (!stringBuffer#append (" Input Type: "));
        if ((self#getInputRobotInterface ()) != (Obj.magic 0)) then begin
            ignore (!stringBuffer#append (((self#getInputRobotInterface ())#getName ())))
        end else begin
            ignore (!stringBuffer#append ((StringUtil.getInstance ())#nULL_STRING))
        end;
        ignore (!stringBuffer#append (" Time: "));
        ignore (!stringBuffer#appendlong ((self#getTime ())));
        (java_string_of (Obj.repr !stringBuffer))
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        inputRobotInterface <- ((Obj.magic 0) :> InputRobotInterface.inputRobotInterface);
        time <- 0;
        ();
        (* super(...) is the inherit clause *) ();
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr ((self#commonStrings)#sTART)) ^ label), self, (self#commonStrings)#cONSTRUCTOR));
        let inputRobotFactory : InputRobotFactory.inputRobotFactory ref = ref (((InputRobotFactory.getInstance ()) :> InputRobotFactory.inputRobotFactory)) in ();
        let hashtable : Obj.t ref = ref ((Obj.repr (Obj.magic (!inputRobotFactory#get ())))) in ();
        let set : Obj.t ref = ref ((Obj.repr ((Obj.magic !hashtable)#keySet ()))) in ();
        let iterator : Obj.t ref = ref ((Obj.repr ((Obj.magic !set)#iterator ()))) in ();
        (self#setInputRobotInterface ((!inputRobotFactory#get ((Obj.magic ((Obj.magic !iterator)#next ()))))));
        (self#setTime (0))
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "BasicProfileActionScriptInput" (fun arguments -> Obj.repr (new basicProfileActionScriptInput (Obj.obj arguments)))


