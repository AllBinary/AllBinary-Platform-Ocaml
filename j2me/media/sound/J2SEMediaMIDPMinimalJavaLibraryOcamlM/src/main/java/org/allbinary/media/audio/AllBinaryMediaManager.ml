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
(* import java.io.BufferedInputStream *)
(* import java.io.ByteArrayInputStream *)
(* import java.io.IOException *)
(* import java.io.InputStream *)
(* import javax.microedition.media.Manager *)
(* import javax.microedition.media.MediaException *)
(* import javax.microedition.media.Player *)
(* import org.allbinary.TsUtil *)
(* import org.allbinary.audio.AudioContentTypeDataFactory *)
(* import org.allbinary.data.resource.ResourceUtil *)
(* import org.allbinary.game.configuration.feature.Features *)
(* import org.allbinary.game.configuration.feature.GameFeatureFactory *)
(* import org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)

let tHIS : string = "AllBinaryMediaManagerPC"
let get_tHIS () = tHIS
let () = java_register_static "AllBinaryMediaManager.get_tHIS" (fun _ -> Obj.repr (get_tHIS ()))
let cREATE_PLAYER : string = "createPlayer"
let get_cREATE_PLAYER () = cREATE_PLAYER
let () = java_register_static "AllBinaryMediaManager.get_cREATE_PLAYER" (fun _ -> Obj.repr (get_cREATE_PLAYER ()))

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

and isInitialized () : bool =
        begin
        true
        end

let () = java_register_static "AllBinaryMediaManager.isMuted" (fun arguments -> Obj.repr (isMuted (Obj.obj arguments)))
let () = java_register_static "AllBinaryMediaManager.setMuted" (fun arguments -> Obj.repr (setMuted (Obj.obj arguments)))
let () = java_register_static "AllBinaryMediaManager.update" (fun arguments -> Obj.repr (update (Obj.obj arguments)))
let () = java_register_static "AllBinaryMediaManager.init" (fun arguments -> Obj.repr (init (Obj.obj arguments)))
let () = java_register_static "AllBinaryMediaManager.shutdown" (fun arguments -> Obj.repr (shutdown (Obj.obj arguments)))
let () = java_register_static "AllBinaryMediaManager.isInitialized" (fun arguments -> Obj.repr (isInitialized (Obj.obj arguments)))
class allBinaryMediaManager () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "AllBinaryMediaManager" (fun arguments -> Obj.repr (new allBinaryMediaManager (Obj.obj arguments)))

let rec createPlayer : 'return. string -> 'return = fun ((resource : string)) ->
        try
        begin
        if (String.starts_with ~prefix:((Obj.magic (java_call_static "Manager.get_tONE_DEVICE_LOCATOR" (Obj.repr ())))) resource) then begin
            raise (Java_return (Obj.repr ((createPlayerFromInputStream ((new ByteArrayInputStream.byteArrayInputStream ((NullUtil.getInstance ())#nULL_BYTE_ARRAY)), ((AudioContentTypeDataFactory.getInstance ())#mIME_AUDIO_TONE#getName ()))))))
        end else if ((Features.getInstance ())#isFeature ((GameFeatureFactory.getInstance ())#sOUND)) then begin
            (try
                let inputStream : Obj.t ref = ref ((Obj.repr ((Obj.magic (java_call_static "ResourceUtil.getInstance" (Obj.repr ())))#getResourceAsStream (resource)))) in ();
                let bufferedInputStream : Obj.t ref = ref ((Obj.repr (new BufferedInputStream.bufferedInputStream ((Obj.magic !inputStream))))) in ();
                raise (Java_return (Obj.repr ((new PCClipWavPlayer.pCClipWavPlayer ((Obj.magic !bufferedInputStream))))))
            with e -> begin
                let logUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
                let commonString : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
                ignore ((Obj.magic !logUtil)#put (!commonString#eXCEPTION, tHIS, cREATE_PLAYER, e));
                raise (Java_return (Obj.repr ((NoPlayer.get_nO_PLAYER ()))))
            end)
        end else begin
            raise (Java_return (Obj.repr ((NoPlayer.get_nO_PLAYER ()))))
        end
        end
        with Java_return value -> Obj.obj value

and createPlayerFromInputStream : 'any1 'return. 'any1 * string -> 'return = fun (_stream, (_type_ : string)) ->
        begin
        raise (Obj.obj (java_new "MediaException" (Obj.repr ("No Impl"))))
        end [@@warning "-20"]

and playTone ((_frequency : int), (_time : int), (_volume : int)) : unit =
        begin
        raise (Obj.obj (java_new "MediaException" (Obj.repr ("No Impl"))))
        end
let () = java_register_static "AllBinaryMediaManager.createPlayer" (fun arguments -> Obj.repr (createPlayer (Obj.obj arguments)))
let () = java_register_static "AllBinaryMediaManager.createPlayerFromInputStream" (fun arguments -> Obj.repr (createPlayerFromInputStream (Obj.obj arguments)))
let () = java_register_static "AllBinaryMediaManager.playTone" (fun arguments -> Obj.repr (playTone (Obj.obj arguments)))


