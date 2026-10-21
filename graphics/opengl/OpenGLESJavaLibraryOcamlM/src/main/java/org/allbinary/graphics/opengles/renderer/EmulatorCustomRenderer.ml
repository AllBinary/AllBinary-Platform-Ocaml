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
(* package org.allbinary.graphics.opengles.renderer *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.khronos.egl.EGLConfig *)
(* import javax.microedition.khronos.opengles.GL10 *)
(* import org.allbinary.emulator.InitEmulatorFactory *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)

class emulatorCustomRenderer () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable renderStrings : RendererStrings.rendererStrings = (Obj.magic 0)
    method renderStrings = renderStrings
    method set_renderStrings value' = renderStrings <- value'
    

    method onSurfaceCreated : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_gl, _eglConfig) ->
        begin
        ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, renderStrings#oN_SURFACE_CREATED));
        let initEmulatorFactory : InitEmulatorFactory.initEmulatorFactory ref = ref (((InitEmulatorFactory.getInstance ()) :> InitEmulatorFactory.initEmulatorFactory)) in ();
        if (not (!initEmulatorFactory#isInitEmulator ())) then begin
            (try
                let wAIT_FOR_EMULATOR : string ref = ref ("Waiting on Emulator Initialization") in ();
                while (not (!initEmulatorFactory#isInitEmulator ())) do
                    ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr (!wAIT_FOR_EMULATOR, self, renderStrings#oN_SURFACE_CREATED))));
                    ignore (Unix.sleepf (Float.of_int (180) /. 1000.0))
                done
            with e -> begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, renderStrings#oN_SURFACE_CREATED, e))
            end)
        end
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        renderStrings <- ((RendererStrings.getInstance ()) :> RendererStrings.rendererStrings);
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "EmulatorCustomRenderer" (fun arguments -> Obj.repr (new emulatorCustomRenderer (Obj.obj arguments)))


