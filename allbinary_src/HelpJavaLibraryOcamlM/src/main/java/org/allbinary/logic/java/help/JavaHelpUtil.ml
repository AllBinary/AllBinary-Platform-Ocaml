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
(* package org.allbinary.logic.java.help *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.awt *)
(* import java.awt.event.ActionEvent *)
(* import java.io.File *)
(* import java.net.URI *)
(* import java.net.URL *)
(* import javax.help.CSH *)
(* import javax.help.HelpBroker *)
(* import javax.help.HelpSet *)
(* import javax.swing *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)

class javaHelpUtil () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable point : Obj.t = Obj.repr 0
    method point : 'r. 'r = Obj.magic point
    method set_point : 'v. 'v -> unit = fun value' -> point <- Obj.repr value'
    val mutable dimension : Obj.t = Obj.repr 0
    method dimension : 'r. 'r = Obj.magic dimension
    method set_dimension : 'v. 'v -> unit = fun value' -> dimension <- Obj.repr value'
    val mutable contextSensitiveHelpActionEvent : Obj.t = Obj.repr 0
    method contextSensitiveHelpActionEvent : 'r. 'r = Obj.magic contextSensitiveHelpActionEvent
    method set_contextSensitiveHelpActionEvent : 'v. 'v -> unit = fun value' -> contextSensitiveHelpActionEvent <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    
    

    method getHelpSet : 'return. string -> 'return = fun ((filePath : string)) ->
        begin
        (try
            let helpSetURI : Obj.t ref = ref ((Obj.repr ((new File.file (filePath))#toURI ()))) in ();
            let helpSetURL : Obj.t ref = ref ((Obj.repr ((Obj.magic !helpSetURI)#toURL ()))) in ();
            (Obj.magic ((self#getHelpSet ((Obj.magic !helpSetURL)))))
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, (getInstance ()), "set", e));
            (Obj.magic ((Obj.magic 0)))
        end)
        end
    

    (* Java overload getHelpSet(URL) is not converted: OCaml has one method per name *)
    

    method show : 'any1. 'any1 -> unit = fun (helpSet) ->
        let helpSet = Obj.repr helpSet in
        begin
        (try
            let helpBroker : Obj.t ref = ref ((Obj.repr ((Obj.magic helpSet)#createHelpBroker ()))) in ();
            ignore ((Obj.magic !helpBroker)#setLocation ((Obj.magic point)));
            ignore ((Obj.magic !helpBroker)#setSize ((Obj.magic dimension)));
            ignore ((new DisplayHelpFromSource.displayHelpFromSource ((Obj.magic !helpBroker)))#actionPerformed ((Obj.magic contextSensitiveHelpActionEvent)));
            ignore ((Obj.magic logUtil)#putF ("CSH Action", (getInstance ()), "show"))
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, (getInstance ()), "show", e))
        end)
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        point <- (Obj.repr (Obj.obj (java_new "Point" (Obj.repr (0, 0)))));
        dimension <- (Obj.repr (new Dimension.dimension (640, 480)));
        contextSensitiveHelpActionEvent <- (Obj.repr (new ActionEvent.actionEvent ((new JLabel.jLabel ()), (ActionEvent.get_aCTION_FIRST ()), (Obj.magic 0))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "JavaHelpUtil" (fun arguments -> Obj.repr (new javaHelpUtil (Obj.obj arguments)))

let instance = (new javaHelpUtil ())
let get_instance () = instance
let () = java_register_static "JavaHelpUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let rec getInstance () =
        begin
        instance
        end

and main ((_args : string array)) : unit =
        begin
        (try
            let javaHelpUtil : Obj.t ref = ref ((Obj.repr (getInstance ()))) in ();
            ignore ((Obj.magic !javaHelpUtil)#show (((Obj.magic !javaHelpUtil)#getHelpSet ("G:/mnt/bc/mydev/working/automation/InputAutomationJavaApplication/AllBinaryInputAutomationHelp/AllBinaryInputAutomation.hs"))))
        with e -> begin
            ()
        end)
        end
let () = java_register_static "JavaHelpUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
let () = java_register_static "JavaHelpUtil.main" (fun arguments -> Obj.repr (main (Obj.obj arguments)))


