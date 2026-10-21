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
(* package org.allbinary.input.automation.actions.script.condition.processors *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.awt.event.ActionEvent *)
(* import org.allbinary.input.automation.actions.script.JTreeInterfaceFactory *)
(* import org.allbinary.input.automation.actions.script.ProfileActionScriptItem *)
(* import org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class basicProfileActionScriptProcessor ((label : string)) =
  object (self)
    inherit ProfileActionScriptItem.profileActionScriptItem (label) as super
    
    
    

    method actionPerformed : 'any1. 'any1 -> unit = fun (actionEvent) ->
        let actionEvent = Obj.repr actionEvent in
        begin
        ignore (super#actionPerformed ((Obj.magic actionEvent)));
        if ((((Obj.magic actionEvent)#getActionCommand ())#compareTo (dELETE)) == 0) then begin
            if (java_instanceof (Obj.repr (self#getParent ())) "ProfileActionScriptConditionInterface") then begin
                let profileActionScriptConditionInterface : ProfileActionScriptConditionInterface.profileActionScriptConditionInterface ref = ref (((Obj.magic (self#getParent ())) :> ProfileActionScriptConditionInterface.profileActionScriptConditionInterface)) in ();
                ignore (!profileActionScriptConditionInterface#removeProcessor ((Obj.magic self)));
                ignore (((JTreeInterfaceFactory.getInstance ())#getJTreeInterface ())#updateJTree ())
            end
        end
        end [@@warning "-7-20"]
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        let node : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createElement ((GenericProfileActionScriptProcessorData.get_nAME ()))))) in ();
        (Obj.magic ((Obj.magic !node)))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "BasicProfileActionScriptProcessor" (fun arguments -> Obj.repr (new basicProfileActionScriptProcessor (Obj.obj arguments)))


