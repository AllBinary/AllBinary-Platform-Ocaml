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
(* import javax.microedition.lcdui.NullCanvas *)
(* import org.allbinary.canvas.Processor *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)

class exitRunnable ((midlet_arg : AllBinaryMidlet.allBinaryMidlet), (processor_arg : Processor.processor), (isProgress_arg : bool)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable midlet : AllBinaryMidlet.allBinaryMidlet = (Obj.magic 0)
    method midlet = midlet
    method set_midlet value' = midlet <- value'
    val mutable processor : Processor.processor = (Obj.magic 0)
    method processor = processor
    method set_processor value' = processor <- value'
    val mutable isProgress : bool = false
    method isProgress = isProgress
    method set_isProgress value' = isProgress <- value'
    
    

    method run () : unit =
        begin
        (try
            ignore ((Obj.magic logUtil)#putF (commonStrings#sTART_RUNNABLE, self, commonStrings#rUN));
            ignore (midlet#destroyAppInRunnable (false, isProgress));
            ignore (midlet#setDisplay ((Obj.magic (java_call_static "NullCanvas.get_nULL_CANVAS" (Obj.repr ())))));
            ignore (midlet#notifyDestroyed ());
            ignore ((Obj.magic logUtil)#putF (commonStrings#eND_RUNNABLE, self, commonStrings#rUN));
            ignore (processor#process ())
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, commonStrings#rUN, e));
            (try
                ignore (processor#process ())
            with e2 -> begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, commonStrings#rUN, e))
            end)
        end)
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        ();
        ();
        ();
        midlet <- midlet_arg;
        isProgress <- isProgress_arg;
        processor <- processor_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "ExitRunnable" (fun arguments -> Obj.repr (new exitRunnable (Obj.obj arguments)))


