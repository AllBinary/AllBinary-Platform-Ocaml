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
(* package org.allbinary.input.automation.module *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.help.HelpSet *)
(* import javax.swing *)
(* import org.allbinary.thread.RunnableInterface *)

class inputAutomationModuleFactoryInterface () =
  object
    

    method getName () : string =
        begin
        (Obj.magic 0)
        end
    

    method getConfigurationJPanel : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic 0)))
        end
    

    method getHelpSet : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic 0)))
        end
    

    method getInstance : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic 0)))
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "InputAutomationModuleFactoryInterface" (fun arguments -> Obj.repr (new inputAutomationModuleFactoryInterface (Obj.obj arguments)))


