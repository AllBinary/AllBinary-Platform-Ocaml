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
(* package org.allbinary.media.audio *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.InputStream *)
(* import javax.microedition.media.Player *)
(* import org.allbinary.TsUtil *)
(* import org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.string.CommonStrings *)

let tHIS : string = "AllBinaryMediaManagerNoMediaMIDP1"
let get_tHIS () = tHIS
let () = java_register_static "AllBinaryMediaManager.get_tHIS" (fun _ -> Obj.repr (get_tHIS ()))

let isMuted () : bool =
        begin
        false
        end

and setMuted ((_aMuted : bool)) : unit =
        begin
        ()
        end

and update () : bool =
        begin
        true
        end

and init : 'any1. 'any1 -> unit = fun (soundsFactoryInterface) ->
        let soundsFactoryInterface = Obj.repr soundsFactoryInterface in
        begin
        let logUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
        let commonString : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        ignore ((Obj.magic !logUtil)#putF (!commonString#sTART, tHIS, !commonString#iNIT));
        ignore ((ProgressCanvasFactory.getInstance ())#addNormalPortion (50, "Media Manager"));
        ignore ((new Sounds.sounds ((Obj.magic soundsFactoryInterface)))#init ())
        end [@@warning "-20"]

and shutdown : 'any1. 'any1 -> unit = fun (soundsFactoryInterface) ->
        let soundsFactoryInterface = Obj.repr soundsFactoryInterface in
        begin
        ignore ((new Sounds.sounds ((Obj.magic soundsFactoryInterface)))#stopAll ());
        ignore ((new Sounds.sounds ((Obj.magic soundsFactoryInterface)))#closeAll ());
        ignore ((Obj.magic (java_call_static "TsUtil.getInstance" (Obj.repr ())))#gc ())
        end [@@warning "-20"]

and createPlayerFromInputStream : 'any1 'return. 'any1 * string -> 'return = fun (_stream, (_type_ : string)) ->
        begin
        let logUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
        let commonString : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        ignore ((Obj.magic !logUtil)#putF (!commonString#sTART, tHIS, "creatPlayer(InputStream)"));
        (Obj.magic ((Obj.magic (NoPlayer.get_nO_PLAYER ()))))
        end [@@warning "-20"]

and createPlayer : 'return. string -> 'return = fun ((_locator : string)) ->
        begin
        let logUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
        let commonString : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        ignore ((Obj.magic !logUtil)#putF (!commonString#sTART, tHIS, "creatPlayer(locator)"));
        (Obj.magic ((Obj.magic (NoPlayer.get_nO_PLAYER ()))))
        end

and playTone ((_frequency : int), (_time : int), (_volume : int)) : unit =
        begin
        ()
        end

and getSupportedContentTypes ((_protocol : string)) : string array =
        begin
        ((StringUtil.getInstance ())#getArrayInstance ())
        end

and getSupportedProtocols ((_content_type : string)) : string array =
        begin
        ((StringUtil.getInstance ())#getArrayInstance ())
        end

let () = java_register_static "AllBinaryMediaManager.isMuted" (fun arguments -> Obj.repr (isMuted (Obj.obj arguments)))
let () = java_register_static "AllBinaryMediaManager.setMuted" (fun arguments -> Obj.repr (setMuted (Obj.obj arguments)))
let () = java_register_static "AllBinaryMediaManager.update" (fun arguments -> Obj.repr (update (Obj.obj arguments)))
let () = java_register_static "AllBinaryMediaManager.init" (fun arguments -> Obj.repr (init (Obj.obj arguments)))
let () = java_register_static "AllBinaryMediaManager.shutdown" (fun arguments -> Obj.repr (shutdown (Obj.obj arguments)))
let () = java_register_static "AllBinaryMediaManager.createPlayerFromInputStream" (fun arguments -> Obj.repr (createPlayerFromInputStream (Obj.obj arguments)))
let () = java_register_static "AllBinaryMediaManager.createPlayer" (fun arguments -> Obj.repr (createPlayer (Obj.obj arguments)))
let () = java_register_static "AllBinaryMediaManager.playTone" (fun arguments -> Obj.repr (playTone (Obj.obj arguments)))
let () = java_register_static "AllBinaryMediaManager.getSupportedContentTypes" (fun arguments -> Obj.repr (getSupportedContentTypes (Obj.obj arguments)))
let () = java_register_static "AllBinaryMediaManager.getSupportedProtocols" (fun arguments -> Obj.repr (getSupportedProtocols (Obj.obj arguments)))
class allBinaryMediaManager () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "AllBinaryMediaManager" (fun arguments -> Obj.repr (new allBinaryMediaManager (Obj.obj arguments)))


