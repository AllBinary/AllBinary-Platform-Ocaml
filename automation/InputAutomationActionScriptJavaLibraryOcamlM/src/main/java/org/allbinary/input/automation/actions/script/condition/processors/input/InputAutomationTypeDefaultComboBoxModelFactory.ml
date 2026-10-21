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
(* import java.util.Set *)
(* import javax.swing *)
(* import org.allbinary.input.automation.robot.InputRobotFactory *)


let getInstance : 'return. unit -> 'return = fun () ->
        begin
        let defaultComboBoxModel : Obj.t ref = ref ((Obj.repr (new DefaultComboBoxModel.defaultComboBoxModel ()))) in ();
        let set : Obj.t ref = ref ((Obj.repr (((InputRobotFactory.getInstance ())#get ())#keySet ()))) in ();
        let nameArray : Obj.t array ref = ref (((Obj.magic !set)#toArray ())) in ();
        let size : int ref = ref ((Array.length !nameArray)) in ();
        for index = 0 to !size - 1 do
            ignore ((Obj.magic !defaultComboBoxModel)#addElement ((Obj.magic !nameArray.(index))))
        done;
        (Obj.magic ((Obj.magic !defaultComboBoxModel)))
        end

let () = java_register_static "InputAutomationTypeDefaultComboBoxModelFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class inputAutomationTypeDefaultComboBoxModelFactory () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "InputAutomationTypeDefaultComboBoxModelFactory" (fun arguments -> Obj.repr (new inputAutomationTypeDefaultComboBoxModelFactory (Obj.obj arguments)))


