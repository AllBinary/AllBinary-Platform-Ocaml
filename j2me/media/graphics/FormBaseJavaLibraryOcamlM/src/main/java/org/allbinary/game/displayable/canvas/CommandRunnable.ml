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
(* package org.allbinary.game.displayable.canvas *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Command *)
(* import javax.microedition.lcdui.CommandListener *)
(* import org.allbinary.graphics.displayable.MyCanvas *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)

class commandRunnable (commandFormInputProcessor_arg, command_arg) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable commandFormInputProcessor : Obj.t = Obj.repr 0
    method commandFormInputProcessor : 'r. 'r = Obj.magic commandFormInputProcessor
    method set_commandFormInputProcessor : 'v. 'v -> unit = fun value' -> commandFormInputProcessor <- Obj.repr value'
    val mutable command : Obj.t = Obj.repr 0
    method command : 'r. 'r = Obj.magic command
    method set_command : 'v. 'v -> unit = fun value' -> command <- Obj.repr value'
    
    

    method run () : unit =
        begin
        (try
            ignore ((Obj.magic logUtil)#putF (commonStrings#sTART_RUNNABLE, self, commonStrings#rUN));
            let canvas : MyCanvas.myCanvas ref = ref ((((Obj.magic commandFormInputProcessor)#getCanvas ()) :> MyCanvas.myCanvas)) in ();
            let commandListener : Obj.t ref = ref ((Obj.repr (!canvas#getCustomCommandListener ()))) in ();
            ignore ((Obj.magic !commandListener)#commandAction ((Obj.magic command), !canvas));
            ignore ((Obj.magic logUtil)#putF (commonStrings#eND_RUNNABLE, self, commonStrings#rUN))
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, commonStrings#rUN, e))
        end)
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        ();
        ();
        commandFormInputProcessor <- Obj.repr (commandFormInputProcessor_arg);
        command <- Obj.repr (command_arg)
      end
  end [@@warning "-20"]
let () = java_register_constructor "CommandRunnable" (fun arguments -> Obj.repr (new commandRunnable (Obj.obj arguments)))


