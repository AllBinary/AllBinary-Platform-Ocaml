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
(* package org.allbinary.midlet *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.canvas.Processor *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.logic.system.security.licensing.ClientInformationFactory *)
(* import org.allbinary.thread.PrimaryThreadPool *)
(* import org.allbinary.thread.ThreadPool *)

class progressMidlet ((clientInformationFactory : ClientInformationFactory.clientInformationFactory)) =
  object (self)
    inherit AllBinaryMidlet.allBinaryMidlet ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable abeClientInformation : AbeClientInformationInterface.abeClientInformationInterface = (Obj.magic 0)
    method abeClientInformation = abeClientInformation
    method set_abeClientInformation value' = abeClientInformation <- value'
    
    

    method preInit () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method exitProgress ((isProgress : bool)) : unit =
        begin
        let processor : Processor.processor ref = ref ((((MidletExitProcessorFactory.getInstance ())#getExitInstance (self)) :> Processor.processor)) in ();
        (try
            let primaryThreadPool : Obj.t ref = ref ((Obj.repr (PrimaryThreadPool.getInstance ()))) in ();
            let runnable : java_runnable ref = ref (((new ExitRunnable.exitRunnable (self, !processor, isProgress)) :> java_runnable)) in ();
            ignore ((Obj.magic !primaryThreadPool)#runTask (!runnable))
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "exit", e));
            (try
                ignore (!processor#process ())
            with e2 -> begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "exit", e))
            end)
        end)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        (self#preInit ());
        abeClientInformation <- (clientInformationFactory#getInstance ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "ProgressMidlet" (fun arguments -> Obj.repr (new progressMidlet (Obj.obj arguments)))


