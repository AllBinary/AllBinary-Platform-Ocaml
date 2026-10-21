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
(* package org.allbinary.input.automation.module.actions.script.condition.processors.output *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.data.tree.dom.DomSearchHelper *)
(* import org.w3c.dom.Node *)


let getInstance : 'any1. 'any1 -> ProfileActionScriptOutputInterface.profileActionScriptOutputInterface = fun (node) ->
        let node = Obj.repr node in
        begin
        let profileActionScriptOutputInterface : ProfileActionScriptOutputInterface.profileActionScriptOutputInterface ref = ref (((Obj.magic 0) :> ProfileActionScriptOutputInterface.profileActionScriptOutputInterface)) in ();
        if ((DomSearchHelper.getNodeNoThrow ((ImageActionScriptOutputData.get_nAME ()), ((Obj.magic node)#getChildNodes ()))) != (Obj.magic 0)) then begin
            profileActionScriptOutputInterface := (new ImageActionScriptOutput.imageActionScriptOutput ((Obj.magic node)))
        end else begin
            raise (Failure ("No Such ActionScript Output"))
        end;
        (!profileActionScriptOutputInterface :> ProfileActionScriptOutputInterface.profileActionScriptOutputInterface)
        end [@@warning "-20"]

let () = java_register_static "ProfileActionScriptOutputFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class profileActionScriptOutputFactory () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "ProfileActionScriptOutputFactory" (fun arguments -> Obj.repr (new profileActionScriptOutputFactory (Obj.obj arguments)))


