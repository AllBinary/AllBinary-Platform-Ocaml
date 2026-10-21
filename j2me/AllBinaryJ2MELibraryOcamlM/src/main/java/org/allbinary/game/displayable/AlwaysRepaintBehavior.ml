(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.displayable *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.thread.ARunnable *)
(* import javax.microedition.lcdui.Canvas *)
(* import org.allbinary.game.configuration.feature.Features *)
(* import org.allbinary.graphics.displayable.DisplayInfoSingleton *)
(* import org.allbinary.graphics.opengles.OpenGLFeatureFactory *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.thread.NullRunnable *)

class alwaysRepaintBehavior () =
  object (self)
    inherit RepaintBehavior.repaintBehavior ()
    val mutable nAME : string = ""
    method nAME = nAME
    method set_nAME value' = nAME <- value'
    

    method repaint : 'any1. 'any1 -> unit = fun (canvas) ->
        let canvas = Obj.repr canvas in
        begin
        let features : Features.features ref = ref (((Features.getInstance ()) :> Features.features)) in ();
        let openGLFeatureFactory : OpenGLFeatureFactory.openGLFeatureFactory ref = ref (((OpenGLFeatureFactory.getInstance ()) :> OpenGLFeatureFactory.openGLFeatureFactory)) in ();
        if (!features#isFeature (!openGLFeatureFactory#oPENGL)) then begin
            ignore ((DisplayInfoSingleton.getInstance ())#process ())
        end else begin
            let thread : java_thread ref = ref (((Obj.obj (java_new "Thread" (Obj.repr ((object (self)
                inherit ARunnable.aRunnable () as super
                

                method run () : unit =
                    begin
                    (try
                        ignore (!canvas#repaint ());
                        ignore ((DisplayInfoSingleton.getInstance ())#process ())
                    with e -> begin
                        let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
                        let logUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
                        ignore ((Obj.magic !logUtil)#put (!commonStrings#eXCEPTION, self, !commonStrings#rUN, e))
                    end)
                    end
            end), nAME)))) :> java_thread)) in ();
            ignore (!thread#start ())
        end
        end [@@warning "-7-20"]
    

    method onChangeRepaint : 'any1. 'any1 -> unit = fun (_canvas) ->
        begin
        ()
        end [@@warning "-7-20"]

    initializer
      begin
        nAME <- "AlwaysRepaintBehavior";
        ()
      end
  end
let () = java_register_constructor "AlwaysRepaintBehavior" (fun arguments -> Obj.repr (new alwaysRepaintBehavior (Obj.obj arguments)))

let instanceC = (new alwaysRepaintBehavior ())
let get_instanceC () = instanceC
let () = java_register_static "AlwaysRepaintBehavior.get_instanceC" (fun _ -> Obj.repr (get_instanceC ()))

let getInstance () =
        begin
        instanceC
        end
let () = java_register_static "AlwaysRepaintBehavior.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


