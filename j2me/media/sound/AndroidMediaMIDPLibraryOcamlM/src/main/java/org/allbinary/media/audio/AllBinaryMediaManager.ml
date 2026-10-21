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
(* import java.io.IOException *)
(* import java.io.InputStream *)
(* import javax.microedition.media.MediaException *)
(* import javax.microedition.media.Player *)
(* import org.allbinary.TsUtil *)
(* import org.allbinary.game.configuration.feature.Features *)
(* import org.allbinary.game.configuration.feature.GameFeatureFactory *)
(* import org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory *)
(* import org.allbinary.logic.ABSystemWrapper *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonLabels *)
(* import org.allbinary.string.CommonStrings *)

let tHIS : string = "AllBinaryMediaManagerAndroid"
let get_tHIS () = tHIS
let () = java_register_static "AllBinaryMediaManager.get_tHIS" (fun _ -> Obj.repr (get_tHIS ()))
let mostUsedTotal : int ref = ref (0)
let get_mostUsedTotal () = !mostUsedTotal
let set_mostUsedTotal value' = mostUsedTotal := value'
let () = java_register_static "AllBinaryMediaManager.get_mostUsedTotal" (fun _ -> Obj.repr (get_mostUsedTotal ()))

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

and shutdown : 'any1. 'any1 -> unit = fun (soundsFactoryInterface) ->
        let soundsFactoryInterface = Obj.repr soundsFactoryInterface in
        begin
        let logUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
        let commonString : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        ignore ((Obj.magic !logUtil)#putF (!commonString#sTART, tHIS, "shutdown"));
        if ((Obj.magic soundsFactoryInterface)#isInitialized ()) then begin
            ignore ((new Sounds.sounds ((Obj.magic soundsFactoryInterface)))#stopAll ());
            let soundInterfaceArray : Obj.t ref = ref ((Obj.repr ((Obj.magic soundsFactoryInterface)#getSoundInterfaceArray ()))) in ();
            let player : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
            let player2 : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
            let androidMediaPlayerWrapper : AndroidMediaPlayerWrapper.androidMediaPlayerWrapper ref = ref (((Obj.magic 0) :> AndroidMediaPlayerWrapper.androidMediaPlayerWrapper)) in ();
            for i = 0 to (Array.length (Obj.magic !soundInterfaceArray)) - 1 do
                if ((Obj.magic !soundInterfaceArray).(i) != (Obj.magic 0)) then begin
                    player := Obj.repr (((Obj.magic !soundInterfaceArray).(i)#getPlayerP ()));
                    if ((Obj.magic !player) != (Obj.magic 0)) then begin
                        player2 := Obj.repr ((((Obj.magic (Obj.magic !player)))#getPlayerP ()));
                        if (java_instanceof (Obj.repr (Obj.magic !player2)) "AndroidMediaPlayerWrapper") then begin
                            androidMediaPlayerWrapper := (Obj.magic (Obj.magic !player2));
                            ignore ((MediaPlayerUtil.getInstance ())#waitForMediaPlayer ((!androidMediaPlayerWrapper#getMediaPlayer ())))
                        end else begin
                            raise (Failure (("Unknown Property Player: " ^ (java_get_class (Obj.repr (Obj.magic !player))))))
                        end
                    end
                end
            done;
            ignore ((new Sounds.sounds ((Obj.magic soundsFactoryInterface)))#closeAll ());
            ignore ((Obj.magic (java_call_static "TsUtil.getInstance" (Obj.repr ())))#gc ());
            ignore ((Obj.magic soundsFactoryInterface)#setInitialized (false));
            mostUsedTotal := 0
        end;
        ignore ((Obj.magic !logUtil)#putF (!commonString#sTART, tHIS, "shutdown"))
        end [@@warning "-20"]

and createPlayer : 'return. string -> 'return = fun ((resource : string)) ->
        try
        begin
        mostUsedTotal := !mostUsedTotal + 1;
        let logUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
        if ((Features.getInstance ())#isFeature ((GameFeatureFactory.getInstance ())#sOUND)) then begin
            (try
                raise (Java_return (Obj.repr ((new AndroidMediaPlayerWrapper.androidMediaPlayerWrapper (resource)))))
            with e -> begin
                ignore ((Obj.magic !logUtil)#put ((("Could not create AndroidMediaPlayerWrapper using NoPlayer at " ^ java_string_of (Obj.repr ((CommonLabels.getInstance ())#tOTAL_LABEL))) ^ java_string_of (Obj.repr (!mostUsedTotal))), tHIS, "createPlayer", e));
                raise (Java_return (Obj.repr ((NoPlayer.get_nO_PLAYER ()))))
            end)
        end else begin
            raise (Java_return (Obj.repr ((NoPlayer.get_nO_PLAYER ()))))
        end
        end
        with Java_return value -> Obj.obj value

and isInitialized () : bool =
        begin
        true
        end

let () = java_register_static "AllBinaryMediaManager.isMuted" (fun arguments -> Obj.repr (isMuted (Obj.obj arguments)))
let () = java_register_static "AllBinaryMediaManager.setMuted" (fun arguments -> Obj.repr (setMuted (Obj.obj arguments)))
let () = java_register_static "AllBinaryMediaManager.update" (fun arguments -> Obj.repr (update (Obj.obj arguments)))
let () = java_register_static "AllBinaryMediaManager.shutdown" (fun arguments -> Obj.repr (shutdown (Obj.obj arguments)))
let () = java_register_static "AllBinaryMediaManager.createPlayer" (fun arguments -> Obj.repr (createPlayer (Obj.obj arguments)))
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

let init : 'any1. 'any1 -> unit = fun (soundsFactoryInterface) ->
        let soundsFactoryInterface = Obj.repr soundsFactoryInterface in
        begin
        let logUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
        let commonString : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        ignore ((Obj.magic !logUtil)#putF (!commonString#sTART, tHIS, !commonString#iNIT));
        ignore (shutdown ((Obj.magic soundsFactoryInterface)));
        ignore ((ProgressCanvasFactory.getInstance ())#addNormalPortion (50, "Media Manager"));
        ignore ((Obj.magic (java_call_static "TsUtil.getInstance" (Obj.repr ())))#gc ());
        ignore ((new Sounds.sounds ((Obj.magic soundsFactoryInterface)))#init ());
        ignore ((Obj.magic !logUtil)#putF (!commonString#eND, tHIS, !commonString#iNIT))
        end [@@warning "-20"]

and createPlayerFromInputStream : 'any1 'return. 'any1 * string -> 'return = fun (_stream, (_type_ : string)) ->
        begin
        raise (Obj.obj (java_new "MediaException" (Obj.repr ("No Input Stream Player"))))
        end [@@warning "-20"]

and playTone ((_frequency : int), (_time : int), (_volume : int)) : unit =
        begin
        raise (Obj.obj (java_new "MediaException" (Obj.repr ("No Tone Player"))))
        end
let () = java_register_static "AllBinaryMediaManager.init" (fun arguments -> Obj.repr (init (Obj.obj arguments)))
let () = java_register_static "AllBinaryMediaManager.createPlayerFromInputStream" (fun arguments -> Obj.repr (createPlayerFromInputStream (Obj.obj arguments)))
let () = java_register_static "AllBinaryMediaManager.playTone" (fun arguments -> Obj.repr (playTone (Obj.obj arguments)))


