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
(* package org.allbinary.thread *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.J2MEUtil *)
(* import org.allbinary.canvas.RunnableCanvas *)
(* import org.allbinary.game.displayable.canvas.AllBinaryGameCanvas *)
(* import org.allbinary.game.displayable.canvas.DemoCanvas *)
(* import org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface *)
(* import org.allbinary.game.displayable.canvas.RunnableCanvasSingleThreadStartRunnable *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.string.CommonStrings *)

class threadFactoryUtil () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    

    method getInstanceGameCanvasRunnable : 'any1. 'any1 -> java_thread = fun (runnable) ->
        let runnable = Obj.repr runnable in
        begin
        ((self#getInstanceType ((Obj.magic runnable), ((Obj.magic runnable)#getType ()))) :> java_thread)
        end [@@warning "-20"]
    

    method getInstanceForRunnable : 'any1. 'any1 -> java_thread = fun (runnable) ->
        let runnable = Obj.repr runnable in
        begin
        ((self#getInstanceType ((Obj.magic runnable), ((Obj.magic runnable)#getType ()))) :> java_thread)
        end [@@warning "-20"]
    

    method getInstanceType ((runnable : java_runnable), (type_ : int)) : java_thread =
        begin
        let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        if (J2MEUtil.isHTML ()) then begin
            if ((type_ = (Obj.magic (java_call_static "DemoCanvas.get_tYPE" (Obj.repr ())))) || (type_ = (Obj.magic (java_call_static "AllBinaryGameCanvas.get_tYPE" (Obj.repr ()))))) then begin
                let demoGameSingleThreadStartRunnable : RunnableCanvasSingleThreadStartRunnable.runnableCanvasSingleThreadStartRunnable ref = ref (((new RunnableCanvasSingleThreadStartRunnable.runnableCanvasSingleThreadStartRunnable ((Obj.magic runnable))) :> RunnableCanvasSingleThreadStartRunnable.runnableCanvasSingleThreadStartRunnable)) in ();
                ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("Using Pseudo Thread for DemoCanvas/AllBinaryGameCanvas under PlayN/HTML5: "))#append (((StringUtil.getInstance ())#toString (runnable)))))), self, !commonStrings#cONSTRUCTOR))));
                let primaryThreadPool : Obj.t ref = ref ((Obj.repr (PrimaryThreadPool.getInstance ()))) in ();
                ignore ((Obj.magic !primaryThreadPool)#runTask (!demoGameSingleThreadStartRunnable))
            end else begin
                ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("Using Pseudo Thread for Runnable under PlayN/HTML5: "))#append (((StringUtil.getInstance ())#toString (runnable)))))), self, !commonStrings#cONSTRUCTOR))));
                let primaryThreadPool : Obj.t ref = ref ((Obj.repr (PrimaryThreadPool.getInstance ()))) in ();
                ignore ((Obj.magic !primaryThreadPool)#runTask (runnable))
            end
        end;
        let thread : java_thread ref = ref (((Obj.obj (java_new "Thread" (Obj.repr (runnable, (java_string_of (Obj.repr runnable)))))) :> java_thread)) in ();
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !thread)), self, !commonStrings#cONSTRUCTOR));
        (!thread :> java_thread)
        end
    

    method start ((thread : java_thread)) : unit =
        begin
        ignore (thread#start ())
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "ThreadFactoryUtil" (fun arguments -> Obj.repr (new threadFactoryUtil (Obj.obj arguments)))

let instance = (new threadFactoryUtil ())
let get_instance () = instance
let () = java_register_static "ThreadFactoryUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ThreadFactoryUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


