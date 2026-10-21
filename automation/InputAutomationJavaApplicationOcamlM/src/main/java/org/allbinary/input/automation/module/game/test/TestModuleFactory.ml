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
(* package org.allbinary.input.automation.module.game.test *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.swing *)
(* import org.allbinary.input.automation.module.AbstractInputAutomationFactory *)
(* import org.allbinary.input.automation.module.InputAutomationModuleData *)
(* import org.allbinary.input.automation.module.configuration.BlankModuleConfigurationJPanel *)
(* import org.allbinary.thread.RunnableInterface *)

let nAME : string ref = ref (("Test New Game" ^ java_string_of (Obj.repr ((InputAutomationModuleData.get_mODULE_NAME_END ())))))
let get_nAME () = !nAME
let set_nAME value' = nAME := value'
let () = java_register_static "TestModuleFactory.get_nAME" (fun _ -> Obj.repr (get_nAME ()))
class testModuleFactory () =
  object
    inherit AbstractInputAutomationFactory.abstractInputAutomationFactory (!nAME, (new BlankModuleConfigurationJPanel.blankModuleConfigurationJPanel ()))
    val mutable blankModuleConfigurationJPanel : BlankModuleConfigurationJPanel.blankModuleConfigurationJPanel = (Obj.magic 0)
    method blankModuleConfigurationJPanel = blankModuleConfigurationJPanel
    method set_blankModuleConfigurationJPanel value' = blankModuleConfigurationJPanel <- value'
    
    

    method getName () : string =
        begin
        !nAME
        end [@@warning "-7"]
    

    method getConfigurationJPanel : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (blankModuleConfigurationJPanel))
        end [@@warning "-7"]
    

    method getInstance : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic 0)))
        end [@@warning "-7"]

    initializer
      begin
        blankModuleConfigurationJPanel <- ((Obj.magic 0) :> BlankModuleConfigurationJPanel.blankModuleConfigurationJPanel);
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "TestModuleFactory" (fun arguments -> Obj.repr (new testModuleFactory (Obj.obj arguments)))


