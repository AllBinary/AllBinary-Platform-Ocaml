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
(* package org.allbinary.input.automation.module.generic *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.input.automation.module.AbstractInputAutomationFactory *)
(* import org.allbinary.input.automation.module.InputAutomationActionInterface *)
(* import org.allbinary.input.automation.module.InputAutomationModuleData *)
(* import org.allbinary.input.automation.module.generic.configuration.GenericModuleConfigurationJPanel *)
(* import org.allbinary.input.automation.module.generic.configuration.profile.GenericProfile *)
(* import org.allbinary.input.automation.module.generic.constraints.NoImageComparatorConstraints *)
(* import org.allbinary.input.automation.module.generic.constraints.NoMotionRectangleConstraints *)
(* import org.allbinary.thread.RunnableInterface *)

let nAME : string ref = ref (("Generic" ^ java_string_of (Obj.repr ((InputAutomationModuleData.get_mODULE_NAME_END ())))))
let get_nAME () = !nAME
let set_nAME value' = nAME := value'
let () = java_register_static "GenericModuleFactory.get_nAME" (fun _ -> Obj.repr (get_nAME ()))
class genericModuleFactory () =
  object (self)
    inherit AbstractInputAutomationFactory.abstractInputAutomationFactory (!nAME, (new GenericModuleConfigurationJPanel.genericModuleConfigurationJPanel ()))
    
    

    method getInstance : 'return. unit -> 'return = fun () ->
        begin
        let genericProfile : GenericProfile.genericProfile ref = ref (((((Obj.magic (self#getConfigurationJPanel ())))#getSelectedGenericProfile ()) :> GenericProfile.genericProfile)) in ();
        let inputAutomationActionInterface : InputAutomationActionInterface.inputAutomationActionInterface ref = ref (((Obj.magic (new GenericInputAutomationAction.genericInputAutomationAction ())) :> InputAutomationActionInterface.inputAutomationActionInterface)) in ();
        (Obj.magic ((Obj.magic (new GenericInputAutomationWorker.genericInputAutomationWorker (!inputAutomationActionInterface, !genericProfile, (new NoMotionRectangleConstraints.noMotionRectangleConstraints ()), (new NoImageComparatorConstraints.noImageComparatorConstraints ()))))))
        end [@@warning "-7"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "GenericModuleFactory" (fun arguments -> Obj.repr (new genericModuleFactory (Obj.obj arguments)))


