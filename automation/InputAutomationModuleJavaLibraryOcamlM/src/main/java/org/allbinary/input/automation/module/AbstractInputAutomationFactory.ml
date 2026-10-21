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
(* import java.net.URL *)
(* import javax.help.HelpSet *)
(* import javax.swing *)
(* import org.allbinary.logic.java.help.JavaHelpUtil *)

class abstractInputAutomationFactory ((name_arg : string), jPanel_arg) =
  object (self)
    inherit InputAutomationModuleFactoryInterface.inputAutomationModuleFactoryInterface ()
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    val mutable jPanel : Obj.t = Obj.repr 0
    method jPanel : 'r. 'r = Obj.magic jPanel
    method set_jPanel : 'v. 'v -> unit = fun value' -> jPanel <- Obj.repr value'
    val mutable helpSet : Obj.t = Obj.repr 0
    method helpSet : 'r. 'r = Obj.magic helpSet
    method set_helpSet : 'v. 'v -> unit = fun value' -> helpSet <- Obj.repr value'
    
    
    

    method getName () : string =
        begin
        name
        end [@@warning "-7"]
    

    method getConfigurationJPanel : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic jPanel)))
        end [@@warning "-7"]
    

    method getHelpSet : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic helpSet)))
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        ();
        ();
        name <- name_arg;
        jPanel <- Obj.repr (jPanel_arg);
        let url : Obj.t ref = ref ((Obj.repr ((java_get_class (Obj.repr self))#getResource ("/help/Help.hs")))) in ();
        helpSet <- Obj.repr (((JavaHelpUtil.getInstance ())#getHelpSet ((Obj.magic !url))))
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "AbstractInputAutomationFactory" (fun arguments -> Obj.repr (new abstractInputAutomationFactory (Obj.obj arguments)))


