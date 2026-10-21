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
(* import org.allbinary.data.tree.dom.DomSearchHelper *)
(* import org.w3c.dom.Node *)

class profileActionScriptConditionFactory () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "ProfileActionScriptConditionFactory" (fun arguments -> Obj.repr (new profileActionScriptConditionFactory (Obj.obj arguments)))

let getInstance : 'any1. 'any1 -> ProfileActionScriptConditionInterface.profileActionScriptConditionInterface = fun (node) ->
        let node = Obj.repr node in
        begin
        let profileActionScriptConditionInterface : ProfileActionScriptConditionInterface.profileActionScriptConditionInterface ref = ref (((Obj.magic 0) :> ProfileActionScriptConditionInterface.profileActionScriptConditionInterface)) in ();
        if ((DomSearchHelper.getNodeNoThrow ((ColorAtActionScriptConditionData.get_nAME ()), ((Obj.magic node)#getChildNodes ()))) != (Obj.magic 0)) then begin
            profileActionScriptConditionInterface := (Obj.obj (java_new "ColorAtActionScriptCondition" (Obj.repr ((Obj.magic node)))))
        end else if ((DomSearchHelper.getNodeNoThrow ((TimeIntervalActionScriptConditionData.get_nAME ()), ((Obj.magic node)#getChildNodes ()))) != (Obj.magic 0)) then begin
            profileActionScriptConditionInterface := (Obj.obj (java_new "TimeIntervalActionScriptCondition" (Obj.repr ((Obj.magic node)))))
        end else if ((DomSearchHelper.getNodeNoThrow ((AlwaysActionScriptConditionData.get_nAME ()), ((Obj.magic node)#getChildNodes ()))) != (Obj.magic 0)) then begin
            profileActionScriptConditionInterface := (Obj.obj (java_new "AlwaysActionScriptCondition" (Obj.repr ((Obj.magic node)))))
        end;
        (!profileActionScriptConditionInterface :> ProfileActionScriptConditionInterface.profileActionScriptConditionInterface)
        end [@@warning "-20"]
let () = java_register_static "ProfileActionScriptConditionFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


