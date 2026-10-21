(* Generated Code Do Not Modify *)
(* package org.allbinary.media.audio.music *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.thread.ARunnable *)
(* import javax.microedition.media.Player *)
(* import javax.microedition.media.PlayerListener *)
(* import org.allbinary.AvianUtil *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.media.audio.NoSound *)
(* import org.allbinary.media.audio.PlayerStateUtil *)
(* import org.allbinary.media.audio.Sound *)
(* import org.allbinary.string.CommonLabels *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.time.GameTickTimeDelayHelper *)
(* import org.allbinary.time.GameTickTimeDelayHelperFactory *)
(* import org.allbinary.time.TimeDelayHelper *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListUtil *)

class musicManager ((_musicServiceClass : string), (songList_arg : BasicArrayList.basicArrayList)) =
  object (self)
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable commonSeps : CommonSeps.commonSeps = (Obj.magic 0)
    method commonSeps = commonSeps
    method set_commonSeps value' = commonSeps <- value'
    val mutable basicArrayListUtil : BasicArrayListUtil.basicArrayListUtil = (Obj.magic 0)
    method basicArrayListUtil = basicArrayListUtil
    method set_basicArrayListUtil value' = basicArrayListUtil <- value'
    val mutable gameTickTimeDelayHelper : GameTickTimeDelayHelper.gameTickTimeDelayHelper = (Obj.magic 0)
    method gameTickTimeDelayHelper = gameTickTimeDelayHelper
    method set_gameTickTimeDelayHelper value' = gameTickTimeDelayHelper <- value'
    val mutable playerStateUtil : PlayerStateUtil.playerStateUtil = (Obj.magic 0)
    method playerStateUtil = playerStateUtil
    method set_playerStateUtil value' = playerStateUtil <- value'
    val mutable timeDelayHelper : TimeDelayHelper.timeDelayHelper = (Obj.magic 0)
    method timeDelayHelper = timeDelayHelper
    method set_timeDelayHelper value' = timeDelayHelper <- value'
    val mutable playerListener : Obj.t = Obj.repr 0
    method playerListener : 'r. 'r = Obj.magic playerListener
    method set_playerListener : 'v. 'v -> unit = fun value' -> playerListener <- Obj.repr value'
    val mutable pLAY : string = ""
    method pLAY = pLAY
    method set_pLAY value' = pLAY <- value'
    val mutable sONG : string = ""
    method sONG = sONG
    method set_sONG value' = sONG <- value'
    val mutable nEXT_SONG : string = ""
    method nEXT_SONG = nEXT_SONG
    method set_nEXT_SONG value' = nEXT_SONG <- value'
    val mutable sTOPPING : string = ""
    method sTOPPING = sTOPPING
    method set_sTOPPING value' = sTOPPING <- value'
    val mutable eNDING : string = ""
    method eNDING = eNDING
    method set_eNDING value' = eNDING <- value'
    val mutable wAITING_FOR_MEDIA_TO_END : string = ""
    method wAITING_FOR_MEDIA_TO_END = wAITING_FOR_MEDIA_TO_END
    method set_wAITING_FOR_MEDIA_TO_END value' = wAITING_FOR_MEDIA_TO_END <- value'
    val mutable aLREADY_PLAYING : string = ""
    method aLREADY_PLAYING = aLREADY_PLAYING
    method set_aLREADY_PLAYING value' = aLREADY_PLAYING <- value'
    val mutable aLREADY_ENDED : string = ""
    method aLREADY_ENDED = aLREADY_ENDED
    method set_aLREADY_ENDED value' = aLREADY_ENDED <- value'
    val mutable songList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method songList = songList
    method set_songList value' = songList <- value'
    val mutable currentSongSound : Obj.t = Obj.repr 0
    method currentSongSound : 'r. 'r = Obj.magic currentSongSound
    method set_currentSongSound : 'v. 'v -> unit = fun value' -> currentSongSound <- Obj.repr value'
    val mutable nextSongSound : Obj.t = Obj.repr 0
    method nextSongSound : 'r. 'r = Obj.magic nextSongSound
    method set_nextSongSound : 'v. 'v -> unit = fun value' -> nextSongSound <- Obj.repr value'
    val mutable reset : bool = false
    method reset = reset
    method set_reset value' = reset <- value'
    val mutable noDuration : bool = false
    method noDuration = noDuration
    method set_noDuration value' = noDuration <- value'
    val mutable stopped : bool = false
    method stopped = stopped
    method set_stopped value' = stopped <- value'
    
    

    method startNewSong () : unit =
        begin
        if ((Obj.repr (Obj.magic nextSongSound)) == (Obj.repr (NoSound.getInstance ()))) then begin
            let randomSongSound : Obj.t ref = ref ((Obj.repr (Obj.magic (basicArrayListUtil#getRandom (songList))))) in ();
            (self#nextSong ((Obj.magic !randomSongSound), 0, 0))
        end;
        (self#process ())
        end
    

    method nextSong : 'any1. 'any1 * int * int -> unit = fun (nextSongSound_arg, (_leftVolume : int), (_rightVolume : int)) ->
        let nextSongSound_arg = Obj.repr nextSongSound_arg in
        begin
        ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (nEXT_SONG))#append (((Obj.magic nextSongSound_arg)#getResource ()))))), self, commonStrings#pROCESS))));
        nextSongSound <- Obj.repr ((Obj.magic nextSongSound_arg));
        (self#reset ());
        stopped <- false
        end [@@warning "-20"]
    

    method reset () : unit =
        begin
        reset <- true
        end
    

    method process () : unit =
        try
        begin
        (try
            if stopped then begin
                raise (Java_return (Obj.repr (())))
            end;
            if ((songList#size ()) = 0) then begin
                raise (Java_return (Obj.repr (())))
            end;
            if ((((timeDelayHelper#isTime (gameTickTimeDelayHelper#startTime)) && (not noDuration))) || reset) then begin
                reset <- false;
                noDuration <- false;
                let endingCurrentSongSound : Obj.t ref = ref ((Obj.repr (Obj.magic currentSongSound))) in ();
                let nextSongSound_arg : Obj.t ref = ref ((Obj.repr (Obj.magic nextSongSound))) in ();
                nextSongSound <- Obj.repr ((NoSound.getInstance ()));
                if ((Obj.repr (Obj.magic !nextSongSound_arg)) == (Obj.repr (NoSound.getInstance ()))) then begin
                    currentSongSound <- Obj.repr ((Obj.magic ((BasicArrayListUtil.getInstance ())#getRandom (songList))))
                end else begin
                    currentSongSound <- Obj.repr ((Obj.magic !nextSongSound_arg))
                end;
                let startingCurrentSongSound : Obj.t ref = ref ((Obj.repr (Obj.magic currentSongSound))) in ();
                let duration : int ref = ref ((java_to_int (Obj.repr (((Obj.magic currentSongSound)#getDuration ()))))) in ();
                timeDelayHelper#set_delay (!duration);
                if (!duration <= 0) then begin
                    let nO_DURATION_FOR : string ref = ref ("No Duration for: ") in ();
                    ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (!nO_DURATION_FOR))#append (((Obj.magic currentSongSound)#getResource ()))))), self, commonStrings#pROCESS))));
                    ignore (((Obj.magic currentSongSound)#getPlayerP ())#addPlayerListener ((Obj.magic playerListener)));
                    noDuration <- true
                end;
                if ((Obj.repr (Obj.magic !endingCurrentSongSound)) != (Obj.repr (NoSound.getInstance ()))) then begin
                    if (((Obj.repr (Obj.magic !endingCurrentSongSound)) == (Obj.repr (Obj.magic !startingCurrentSongSound))) && ((Obj.repr (((Obj.magic !endingCurrentSongSound)#getPlayerP ())#getState ())) == (Obj.repr (Obj.magic (java_call_static "Player.get_sTARTED" (Obj.repr ())))))) then begin
                        ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (aLREADY_PLAYING))#append (((Obj.magic !endingCurrentSongSound)#getResource ()))))), self, commonStrings#pROCESS))));
                        ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr (((((new StringMaker.stringMaker ())#append (sTOPPING))#append (((Obj.magic !endingCurrentSongSound)#getResource ())))#append (sONG))#appendlong (!duration)))), self, commonStrings#pROCESS))));
                        ignore (((Obj.magic !endingCurrentSongSound)#getPlayerP ())#stop ());
                        (self#waitForStateChange ((Obj.magic !endingCurrentSongSound), (Obj.magic !startingCurrentSongSound)))
                    end else begin
                        if ((Obj.repr (((Obj.magic !endingCurrentSongSound)#getPlayerP ())#getState ())) == (Obj.repr (Obj.magic (java_call_static "Player.get_sTARTED" (Obj.repr ()))))) then begin
                            ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr (((((new StringMaker.stringMaker ())#append (sTOPPING))#append (((Obj.magic !endingCurrentSongSound)#getResource ())))#append (sONG))#appendlong (!duration)))), self, commonStrings#pROCESS))));
                            ignore (((Obj.magic !endingCurrentSongSound)#getPlayerP ())#stop ());
                            (self#waitForStateChange ((Obj.magic !endingCurrentSongSound), (Obj.magic !startingCurrentSongSound)))
                        end else begin
                            ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr ((((new StringMaker.stringMaker ())#append (aLREADY_ENDED))#append (pLAY))#append (((Obj.magic !startingCurrentSongSound)#getResource ()))))), self, commonStrings#pROCESS))));
                            if (Obj.magic (java_call_static "AvianUtil.isAvian" (Obj.repr ()))) then begin
                                ignore (((Obj.magic !endingCurrentSongSound)#getPlayerP ())#stop ());
                                ignore (((Obj.magic !startingCurrentSongSound)#getPlayerP ())#stop ())
                            end;
                            ignore (((Obj.magic !startingCurrentSongSound)#getPlayerP ())#start ())
                        end
                    end
                end else begin
                    ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr (((((new StringMaker.stringMaker ())#append (pLAY))#append (((Obj.magic currentSongSound)#getResource ())))#append (sONG))#appendlong (!duration)))), self, commonStrings#pROCESS))));
                    ignore (((Obj.magic currentSongSound)#getPlayerP ())#start ())
                end
            end
        with e -> begin
            let resource : string ref = ref ((StringUtil.getInstance ())#eMPTY_STRING) in ();
            if ((Obj.repr (Obj.magic currentSongSound)) != (Obj.repr (NoSound.getInstance ()))) then begin
                resource := ((Obj.magic currentSongSound)#getResource ())
            end;
            ignore (Obj.magic (java_call_static "PreLogUtil.putOE" (Obj.repr ((java_string_of (Obj.repr (commonStrings#eXCEPTION_LABEL)) ^ !resource), self, commonStrings#pROCESS, e))))
        end)
        end
        with Java_return value -> Obj.obj value
    

    method waitForStateChange : 'any1 'any2. 'any1 * 'any2 -> unit = fun (endingCurrentSongSound, startingCurrentSongSound) ->
        let endingCurrentSongSound = Obj.repr endingCurrentSongSound in
        let startingCurrentSongSound = Obj.repr startingCurrentSongSound in
        begin
        while ((Obj.repr (((Obj.magic endingCurrentSongSound)#getPlayerP ())#getState ())) == (Obj.repr (Obj.magic (java_call_static "Player.get_sTARTED" (Obj.repr ()))))) do
            ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr (wAITING_FOR_MEDIA_TO_END, self, commonStrings#pROCESS))));
            ignore (Unix.sleepf (Float.of_int (100) /. 1000.0))
        done;
        ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr (((((new StringMaker.stringMaker ())#append ((playerStateUtil#convert ((((Obj.magic endingCurrentSongSound)#getPlayerP ())#getState ())))))#append (commonSeps#sPACE))#append (pLAY))#append (((Obj.magic startingCurrentSongSound)#getResource ()))))), self, commonStrings#pROCESS))));
        ignore (((Obj.magic startingCurrentSongSound)#getPlayerP ())#start ())
        end [@@warning "-20"]
    

    method stop () : unit =
        begin
        (try
            let currentSongSound_arg : Obj.t ref = ref ((Obj.repr (Obj.magic currentSongSound))) in ();
            if ((Obj.repr (Obj.magic !currentSongSound_arg)) != (Obj.repr (NoSound.getInstance ()))) then begin
                stopped <- true;
                ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (eNDING))#append (((Obj.magic !currentSongSound_arg)#getResource ()))))), self, commonStrings#pROCESS))));
                ignore (((Obj.magic !currentSongSound_arg)#getPlayerP ())#stop ())
            end;
            ignore (timeDelayHelper#setStartTime (0));
            ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (commonStrings#eND))#append (((StringUtil.getInstance ())#toString ((Obj.magic !currentSongSound_arg))))))), self, commonStrings#eND))))
        with e -> begin
            let resource : string ref = ref ((StringUtil.getInstance ())#eMPTY_STRING) in ();
            if ((Obj.repr (Obj.magic !currentSongSound_arg)) != (Obj.repr (NoSound.getInstance ()))) then begin
                resource := ((Obj.magic !currentSongSound_arg)#getResource ())
            end;
            ignore (Obj.magic (java_call_static "PreLogUtil.putOE" (Obj.repr ((java_string_of (Obj.repr (commonStrings#eXCEPTION_LABEL)) ^ !resource), self, commonStrings#eND, e))))
        end)
        end

    initializer
      begin
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        commonSeps <- ((CommonSeps.getInstance ()) :> CommonSeps.commonSeps);
        basicArrayListUtil <- ((BasicArrayListUtil.getInstance ()) :> BasicArrayListUtil.basicArrayListUtil);
        gameTickTimeDelayHelper <- ((GameTickTimeDelayHelperFactory.getInstance ()) :> GameTickTimeDelayHelper.gameTickTimeDelayHelper);
        playerStateUtil <- ((PlayerStateUtil.getInstance ()) :> PlayerStateUtil.playerStateUtil);
        timeDelayHelper <- ((new TimeDelayHelper.timeDelayHelper (0)) :> TimeDelayHelper.timeDelayHelper);
        playerListener <- (Obj.repr (new MusicManagerPlayerListener.musicManagerPlayerListener ()));
        pLAY <- "Play ";
        sONG <- " for: ";
        nEXT_SONG <- (java_string_of (Obj.repr ((CommonLabels.getInstance ())#nEXT)) ^ " Song: ");
        sTOPPING <- "Stopping Current Song: ";
        eNDING <- "Ending Current Song: ";
        wAITING_FOR_MEDIA_TO_END <- "Waiting for media to end";
        aLREADY_PLAYING <- "Already Playing: ";
        aLREADY_ENDED <- "Last Song already ended: ";
        ();
        currentSongSound <- (Obj.repr (NoSound.getInstance ()));
        nextSongSound <- (Obj.repr (NoSound.getInstance ()));
        reset <- false;
        noDuration <- false;
        stopped <- true;
        ();
        songList <- songList_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "MusicManager" (fun arguments -> Obj.repr (new musicManager (Obj.obj arguments)))


