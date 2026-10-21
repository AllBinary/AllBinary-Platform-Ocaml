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
(* import org.allbinary.data.tree.dom.DomSearchHelper *)
(* import org.w3c.dom.Node *)


let getInstance : 'any1. 'any1 -> ProfileActionScriptInputInterface.profileActionScriptInputInterface = fun (node) ->
        let node = Obj.repr node in
        begin
        let profileActionScriptInputInterface : ProfileActionScriptInputInterface.profileActionScriptInputInterface ref = ref (((Obj.magic 0) :> ProfileActionScriptInputInterface.profileActionScriptInputInterface)) in ();
        if ((DomSearchHelper.getNodeNoThrow ((KeyboardActionScriptInputData.get_nAME ()), ((Obj.magic node)#getChildNodes ()))) != (Obj.magic 0)) then begin
            profileActionScriptInputInterface := (new KeyboardActionScriptInput.keyboardActionScriptInput ((Obj.magic node)))
        end else if ((DomSearchHelper.getNodeNoThrow ((MouseActionScriptInputData.get_nAME ()), ((Obj.magic node)#getChildNodes ()))) != (Obj.magic 0)) then begin
            profileActionScriptInputInterface := (new MouseActionScriptInput.mouseActionScriptInput ((Obj.magic node)))
        end else begin
            raise (Failure ("No Such ActionScript Input"))
        end;
        (!profileActionScriptInputInterface :> ProfileActionScriptInputInterface.profileActionScriptInputInterface)
        end [@@warning "-20"]

let () = java_register_static "ProfileActionScriptInputFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class profileActionScriptInputFactory () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "ProfileActionScriptInputFactory" (fun arguments -> Obj.repr (new profileActionScriptInputFactory (Obj.obj arguments)))


