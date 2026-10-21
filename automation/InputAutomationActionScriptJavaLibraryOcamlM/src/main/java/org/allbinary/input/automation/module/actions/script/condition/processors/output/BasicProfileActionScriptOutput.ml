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
(* import org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessor *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class basicProfileActionScriptOutput ((label : string)) =
  object
    inherit BasicProfileActionScriptProcessor.basicProfileActionScriptProcessor (label)
    
    
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        let node : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createElement ((GenericProfileActionScriptOutputData.get_nAME ()))))) in ();
        (Obj.magic ((Obj.magic !node)))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "BasicProfileActionScriptOutput" (fun arguments -> Obj.repr (new basicProfileActionScriptOutput (Obj.obj arguments)))


