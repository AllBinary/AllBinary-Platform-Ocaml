(* Generated Code Do Not Modify *)
(* package org.allbinary.media.audio.music *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import android.app.Activity *)
(* import android.content.Context *)
(* import android.content.Intent *)
(* import org.allbinary.android.AndroidServicesUtil *)
(* import org.allbinary.data.resource.ResourceUtil *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.media.audio.NoSound *)
(* import org.allbinary.media.audio.Sound *)
(* import org.allbinary.string.CommonStateStrings *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.time.GameTickTimeDelayHelper *)
(* import org.allbinary.time.GameTickTimeDelayHelperFactory *)
(* import org.allbinary.time.TimeDelayHelper *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListUtil *)


let pause : 'any1. 'any1 * string -> unit = fun (activity, (musicServiceClass_arg : string)) ->
        let activity = Obj.repr activity in
        begin
        let commonStateStrings_arg : CommonStateStrings.commonStateStrings ref = ref (((CommonStateStrings.getInstance ()) :> CommonStateStrings.commonStateStrings)) in ();
        let musicPauseIntent : Obj.t ref = ref ((Obj.repr (new Intent.intent ((Obj.magic (Obj.magic activity)), musicServiceClass_arg)))) in ();
        ignore ((Obj.magic !musicPauseIntent)#putExtra (!commonStateStrings_arg#oN_START_COMMAND, 1));
        ignore ((Obj.magic activity)#startService ((Obj.magic !musicPauseIntent)))
        end [@@warning "-20"]

and resume : 'any1. 'any1 * string -> unit = fun (activity, (musicServiceClass_arg : string)) ->
        let activity = Obj.repr activity in
        begin
        if ((AndroidServicesUtil.getInstance ())#isServiceRunning (musicServiceClass_arg)) then begin
            let commonStateStrings_arg : CommonStateStrings.commonStateStrings ref = ref (((CommonStateStrings.getInstance ()) :> CommonStateStrings.commonStateStrings)) in ();
            let musicResumeIntent : Obj.t ref = ref ((Obj.repr (new Intent.intent ((Obj.magic activity), musicServiceClass_arg)))) in ();
            ignore ((Obj.magic !musicResumeIntent)#putExtra (!commonStateStrings_arg#oN_START_COMMAND, 2));
            ignore ((Obj.magic activity)#startService ((Obj.magic !musicResumeIntent)))
        end
        end [@@warning "-20"]

let () = java_register_static "MusicManager.pause" (fun arguments -> Obj.repr (pause (Obj.obj arguments)))
let () = java_register_static "MusicManager.resume" (fun arguments -> Obj.repr (resume (Obj.obj arguments)))
class musicManager ((musicServiceClass_arg : string), (songList_arg : BasicArrayList.basicArrayList)) =
  object (self)
    val mutable pLAY : string = ""
    method pLAY = pLAY
    method set_pLAY value' = pLAY <- value'
    val mutable fOR : string = ""
    method fOR = fOR
    method set_fOR value' = fOR <- value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable musicStrings : MusicStrings.musicStrings = (Obj.magic 0)
    method musicStrings = musicStrings
    method set_musicStrings value' = musicStrings <- value'
    val mutable commonStateStrings : CommonStateStrings.commonStateStrings = (Obj.magic 0)
    method commonStateStrings = commonStateStrings
    method set_commonStateStrings value' = commonStateStrings <- value'
    val mutable basicArrayListUtil : BasicArrayListUtil.basicArrayListUtil = (Obj.magic 0)
    method basicArrayListUtil = basicArrayListUtil
    method set_basicArrayListUtil value' = basicArrayListUtil <- value'
    val mutable resourceUtil : Obj.t = Obj.repr 0
    method resourceUtil : 'r. 'r = Obj.magic resourceUtil
    method set_resourceUtil : 'v. 'v -> unit = fun value' -> resourceUtil <- Obj.repr value'
    val mutable androidServicesUtil : AndroidServicesUtil.androidServicesUtil = (Obj.magic 0)
    method androidServicesUtil = androidServicesUtil
    method set_androidServicesUtil value' = androidServicesUtil <- value'
    val mutable gameTickTimeDelayHelper : GameTickTimeDelayHelper.gameTickTimeDelayHelper = (Obj.magic 0)
    method gameTickTimeDelayHelper = gameTickTimeDelayHelper
    method set_gameTickTimeDelayHelper value' = gameTickTimeDelayHelper <- value'
    val mutable timeDelayHelper : TimeDelayHelper.timeDelayHelper = (Obj.magic 0)
    method timeDelayHelper = timeDelayHelper
    method set_timeDelayHelper value' = timeDelayHelper <- value'
    val mutable timeDelayHelper2 : TimeDelayHelper.timeDelayHelper = (Obj.magic 0)
    method timeDelayHelper2 = timeDelayHelper2
    method set_timeDelayHelper2 value' = timeDelayHelper2 <- value'
    val mutable songList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method songList = songList
    method set_songList value' = songList <- value'
    val mutable currentSongSound : Obj.t = Obj.repr 0
    method currentSongSound : 'r. 'r = Obj.magic currentSongSound
    method set_currentSongSound : 'v. 'v -> unit = fun value' -> currentSongSound <- Obj.repr value'
    val mutable nextSongSound : Obj.t = Obj.repr 0
    method nextSongSound : 'r. 'r = Obj.magic nextSongSound
    method set_nextSongSound : 'v. 'v -> unit = fun value' -> nextSongSound <- Obj.repr value'
    val mutable leftVolume : int = 0
    method leftVolume = leftVolume
    method set_leftVolume value' = leftVolume <- value'
    val mutable rightVolume : int = 0
    method rightVolume = rightVolume
    method set_rightVolume value' = rightVolume <- value'
    val mutable musicServiceClass : string = (Obj.magic 0)
    method musicServiceClass = musicServiceClass
    method set_musicServiceClass value' = musicServiceClass <- value'
    val mutable currentIntent : Obj.t = Obj.repr 0
    method currentIntent : 'r. 'r = Obj.magic currentIntent
    method set_currentIntent : 'v. 'v -> unit = fun value' -> currentIntent <- Obj.repr value'
    
    

    method nextSong : 'any1. 'any1 * int * int -> unit = fun (nextSongSound_arg, (leftVolume_arg : int), (rightVolume_arg : int)) ->
        let nextSongSound_arg = Obj.repr nextSongSound_arg in
        let nextSongSound_arg = ref nextSongSound_arg in
        begin
        if ((Obj.magic !nextSongSound_arg) == (Obj.magic 0)) then begin
            nextSongSound_arg := Obj.repr ((NoSound.getInstance ()))
        end;
        nextSongSound <- Obj.repr ((Obj.magic !nextSongSound_arg));
        leftVolume <- leftVolume_arg;
        rightVolume <- rightVolume_arg;
        (self#reset ())
        end [@@warning "-20"]
    

    method reset () : unit =
        begin
        timeDelayHelper#set_delay (0)
        end
    

    method process () : unit =
        try
        begin
        if ((songList#size ()) = 0) then begin
            raise (Java_return (Obj.repr (())))
        end;
        if (timeDelayHelper#isTime (gameTickTimeDelayHelper#startTime)) then begin
            (self#startNewSong ());
            raise (Java_return (Obj.repr (())))
        end;
        if (timeDelayHelper2#isTime (gameTickTimeDelayHelper#startTime)) then begin
            if (androidServicesUtil#isServiceRunning (musicServiceClass)) then begin
                ()
            end else begin
                (self#startNewSong ())
            end
        end
        end
        with Java_return value -> Obj.obj value
    

    method show () : unit =
        begin
        let index : int ref = ref ((songList#size ())) in ();
        while ((index := !index - 1; !index) >= 0) do
            let sound : Obj.t ref = ref ((Obj.repr (Obj.magic (songList#get (!index))))) in ();
            let duration : int ref = ref ((java_to_int (Obj.repr (((Obj.magic !sound)#getDuration ()))))) in ();
            ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr (((((new StringMaker.stringMaker ())#append (pLAY))#append (((Obj.magic !sound)#getResource ())))#append (fOR))#appendlong (!duration)))), self, commonStrings#pROCESS))))
        done
        end
    

    method startNewSong () : unit =
        begin
        (try
            ignore (((Obj.magic resourceUtil)#getContext ())#stopService ((Obj.magic currentIntent)));
            if ((Obj.repr (Obj.magic nextSongSound)) == (Obj.repr (NoSound.getInstance ()))) then begin
                currentSongSound <- Obj.repr ((Obj.magic (basicArrayListUtil#getRandom (songList))))
            end else begin
                currentSongSound <- Obj.repr ((Obj.magic nextSongSound));
                nextSongSound <- Obj.repr ((NoSound.getInstance ()))
            end;
            let duration : int ref = ref ((java_to_int (Obj.repr (((Obj.magic currentSongSound)#getDuration ()))))) in ();
            ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr (((((new StringMaker.stringMaker ())#append (pLAY))#append (((Obj.magic currentSongSound)#getResource ())))#append (fOR))#appendlong (!duration)))), self, commonStrings#pROCESS))));
            timeDelayHelper#set_delay (!duration);
            ignore ((Obj.magic currentIntent)#putExtra (musicStrings#sONG_EXTRA, (((Obj.magic resourceUtil)#getResourceId (((Obj.magic currentSongSound)#getResource ())))#intValue ())));
            ignore ((Obj.magic currentIntent)#putExtra (musicStrings#lEFT_VOLUME, leftVolume));
            ignore ((Obj.magic currentIntent)#putExtra (musicStrings#rIGHT_VOLUME, rightVolume));
            ignore (((Obj.magic resourceUtil)#getContext ())#startService ((Obj.magic currentIntent)))
        with e -> begin
            let resource : string ref = ref ((StringUtil.getInstance ())#eMPTY_STRING) in ();
            if ((Obj.magic currentSongSound) != (Obj.magic 0)) then begin
                resource := ((Obj.magic currentSongSound)#getResource ())
            end;
            ignore (Obj.magic (java_call_static "PreLogUtil.putOE" (Obj.repr ((java_string_of (Obj.repr (commonStrings#eXCEPTION_LABEL)) ^ !resource), self, commonStrings#pROCESS, e))))
        end)
        end
    

    method stop () : unit =
        begin
        ignore (((Obj.magic resourceUtil)#getContext ())#stopService ((Obj.magic currentIntent)))
        end

    initializer
      begin
        pLAY <- "Play ";
        fOR <- " for: ";
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        musicStrings <- ((MusicStrings.getInstance ()) :> MusicStrings.musicStrings);
        commonStateStrings <- ((CommonStateStrings.getInstance ()) :> CommonStateStrings.commonStateStrings);
        basicArrayListUtil <- ((BasicArrayListUtil.getInstance ()) :> BasicArrayListUtil.basicArrayListUtil);
        resourceUtil <- (Obj.repr (Obj.magic (java_call_static "ResourceUtil.getInstance" (Obj.repr ()))));
        androidServicesUtil <- ((AndroidServicesUtil.getInstance ()) :> AndroidServicesUtil.androidServicesUtil);
        gameTickTimeDelayHelper <- ((GameTickTimeDelayHelperFactory.getInstance ()) :> GameTickTimeDelayHelper.gameTickTimeDelayHelper);
        timeDelayHelper <- ((new TimeDelayHelper.timeDelayHelper (0)) :> TimeDelayHelper.timeDelayHelper);
        timeDelayHelper2 <- ((new TimeDelayHelper.timeDelayHelper (1200)) :> TimeDelayHelper.timeDelayHelper);
        ();
        currentSongSound <- (Obj.repr (NoSound.getInstance ()));
        nextSongSound <- (Obj.repr (NoSound.getInstance ()));
        leftVolume <- 100;
        rightVolume <- 100;
        ();
        ();
        ();
        ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((commonStateStrings#cONTEXT + ((Obj.magic resourceUtil)#getContext ())), self, commonStrings#cONSTRUCTOR))));
        musicServiceClass <- musicServiceClass_arg;
        currentIntent <- Obj.repr ((new Intent.intent (((Obj.magic resourceUtil)#getContext ()), musicServiceClass_arg)));
        songList <- songList_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "MusicManager" (fun arguments -> Obj.repr (new musicManager (Obj.obj arguments)))


