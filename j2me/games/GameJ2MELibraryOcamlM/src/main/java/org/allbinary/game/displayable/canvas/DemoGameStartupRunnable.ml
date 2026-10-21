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
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.thread.ABRunnable *)

let tYPE : int = 4
let get_tYPE () = tYPE
let () = java_register_static "DemoGameStartupRunnable.get_tYPE" (fun _ -> Obj.repr (get_tYPE ()))
class demoGameStartupRunnable (demoCanvas_arg) =
  object (self)
    inherit ABRunnable.aBRunnable ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable demoCanvas : Obj.t = Obj.repr 0
    method demoCanvas : 'r. 'r = Obj.magic demoCanvas
    method set_demoCanvas : 'v. 'v -> unit = fun value' -> demoCanvas <- Obj.repr value'
    
    

    method run () : unit =
        begin
        (try
            ignore (self#setRunning (true));
            ignore ((Obj.magic demoCanvas)#stopGameDemo ());
            ignore ((Obj.magic demoCanvas)#create ());
            ignore ((Obj.magic demoCanvas)#start ());
            ignore (self#setRunning (false))
        with e -> begin
            ignore (self#setRunning (false));
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, !commonStrings#rUN, e))
        end)
        end [@@warning "-7"]
    

    method getType () : int =
        begin
        tYPE
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        demoCanvas <- Obj.repr (demoCanvas_arg)
      end
  end [@@warning "-20"]
let () = java_register_constructor "DemoGameStartupRunnable" (fun arguments -> Obj.repr (new demoGameStartupRunnable (Obj.obj arguments)))


