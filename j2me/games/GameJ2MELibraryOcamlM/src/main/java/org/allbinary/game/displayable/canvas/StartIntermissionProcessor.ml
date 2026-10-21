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
(* import org.allbinary.canvas.Processor *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)

class startIntermissionProcessor (gameCanvas_arg) =
  object (self)
    inherit Processor.processor ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable gameCanvas : Obj.t = Obj.repr 0
    method gameCanvas : 'r. 'r = Obj.magic gameCanvas
    method set_gameCanvas : 'v. 'v -> unit = fun value' -> gameCanvas <- Obj.repr value'
    val mutable wAIT : int = 0
    method wAIT = wAIT
    method set_wAIT value' = wAIT <- value'
    
    

    method process () : unit =
        begin
        if ((((Obj.magic gameCanvas)#getStartIntermissionInterface ())#getTimeDelayHelper ())#isElapsedTNT (wAIT)) then begin
            ignore ((Obj.magic logUtil)#putF ("Intermission End", self, commonStrings#pROCESS));
            ignore (((Obj.magic gameCanvas)#getStartIntermissionInterface ())#setEnabled (false))
        end
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        wAIT <- 5000;
        ();
        gameCanvas <- Obj.repr (gameCanvas_arg)
      end
  end [@@warning "-20"]
let () = java_register_constructor "StartIntermissionProcessor" (fun arguments -> Obj.repr (new startIntermissionProcessor (Obj.obj arguments)))


