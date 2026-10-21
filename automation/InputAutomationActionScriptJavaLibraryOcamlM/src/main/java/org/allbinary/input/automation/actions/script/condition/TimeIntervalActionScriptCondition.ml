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
(* import org.allbinary.time.TimeDelayHelper *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)
(* import org.w3c.dom.NodeList *)

let nAME : string = "Time Interval"
let get_nAME () = nAME
let () = java_register_static "TimeIntervalActionScriptCondition.get_nAME" (fun _ -> Obj.repr (get_nAME ()))
class timeIntervalActionScriptCondition () =
  object (self)
    inherit BasicProfileActionScriptCondition.basicProfileActionScriptCondition (nAME) as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable timeIntervalActionScriptConditionJPanel : TimeIntervalActionScriptConditionJPanel.timeIntervalActionScriptConditionJPanel = (Obj.magic 0)
    method timeIntervalActionScriptConditionJPanel = timeIntervalActionScriptConditionJPanel
    method set_timeIntervalActionScriptConditionJPanel value' = timeIntervalActionScriptConditionJPanel <- value'
    val mutable timeHelper : TimeDelayHelper.timeDelayHelper = (Obj.magic 0)
    method timeHelper = timeHelper
    method set_timeHelper value' = timeHelper <- value'
    
    
    

    method init () : unit =
        begin
        timeIntervalActionScriptConditionJPanel <- (new TimeIntervalActionScriptConditionJPanel.timeIntervalActionScriptConditionJPanel (self))
        end [@@warning "-7"]
    

    method showDialog () : unit =
        begin
        ignore ((timeIntervalActionScriptConditionJPanel#getTimeIntervalActionJDialog ())#setVisible (true))
        end [@@warning "-7"]
    

    method toHashMap () : java_hash_map =
        begin
        let hashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        ignore (!hashMap#put ((TimeIntervalActionScriptConditionData.get_tIME ()), (string_of_int (timeHelper#delay))));
        ignore ((Obj.magic logUtil)#putF (("HashMap: " ^ (java_string_of (Obj.repr !hashMap))), self, "toHashMap()"));
        (!hashMap :> java_hash_map)
        end [@@warning "-7"]
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        let node : Obj.t ref = ref ((Obj.repr (super#toXmlNode ((Obj.magic document))))) in ();
        ignore ((Obj.magic !node)#appendChild ((ModDomHelper.createNodeWithValueNodes ((Obj.magic document), (TimeIntervalActionScriptConditionData.get_nAME ()), (self#toHashMap ())))));
        (Obj.magic ((Obj.magic !node)))
        end [@@warning "-7-20"]
    

    method log () : unit =
        begin
        ignore ((Obj.magic logUtil)#putF (("Time Interval: " ^ java_string_of (Obj.repr (timeHelper#delay))), self, "log"))
        end [@@warning "-7"]
    

    method getTimeDelayHelper () : TimeDelayHelper.timeDelayHelper =
        begin
        (timeHelper :> TimeDelayHelper.timeDelayHelper)
        end [@@warning "-7"]
    

    method setTimeDelayHelper : 'any1. 'any1 -> unit = fun (timeHelper_arg) ->
        let timeHelper_arg = Obj.repr timeHelper_arg in
        begin
        timeHelper <- (Obj.magic timeHelper_arg)
        end [@@warning "-7-20"]
    

    method shouldProcess ((frame : int)) : bool =
        try
        begin
        let timeHelper_arg : TimeDelayHelper.timeDelayHelper ref = ref (((self#getTimeDelayHelper ()) :> TimeDelayHelper.timeDelayHelper)) in ();
        if (!timeHelper_arg#isTimeTNT ()) then begin
            ignore (!timeHelper_arg#setStartTimeTNT ());
            raise (Java_return (Obj.repr ((super#shouldProcess (frame)))))
        end;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        timeIntervalActionScriptConditionJPanel <- ((Obj.magic 0) :> TimeIntervalActionScriptConditionJPanel.timeIntervalActionScriptConditionJPanel);
        timeHelper <- ((Obj.magic 0) :> TimeDelayHelper.timeDelayHelper);
        ();
        (* super(...) is the inherit clause *) ();
        (self#setTimeDelayHelper ((new TimeDelayHelper.timeDelayHelper (0))));
        (self#init ())
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "TimeIntervalActionScriptCondition" (fun arguments -> Obj.repr (new timeIntervalActionScriptCondition (Obj.obj arguments)))


