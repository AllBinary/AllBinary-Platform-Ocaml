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
(* package org.allbinary.game.score *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.thread.ARunnable *)
(* import org.allbinary.game.BasicHighScoresGameInfoFactory *)
(* import org.allbinary.game.GameInfo *)
(* import org.allbinary.game.GameType *)
(* import org.allbinary.game.GameTypeFactory *)
(* import org.allbinary.game.score.remote.RemoteHighScores *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.java.bool.BooleanFactory *)
(* import org.allbinary.logic.system.SoftwareInformation *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.thread.SecondaryThreadPool *)


let loaded ((index2 : int)) : bool =
        try
        begin
        if (index2 >= 0) then begin
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value

let () = java_register_static "BasicHighScoresFactory.loaded" (fun arguments -> Obj.repr (loaded (Obj.obj arguments)))
class basicHighScoresFactory ((abeClientInformation_arg : AbeClientInformationInterface.abeClientInformationInterface), (softwareInformation_arg : SoftwareInformation.softwareInformation)) =
  object (self)
    inherit HighScoresBase.highScoresBase ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable abeClientInformation : AbeClientInformationInterface.abeClientInformationInterface = (Obj.magic 0)
    method abeClientInformation = abeClientInformation
    method set_abeClientInformation value' = abeClientInformation <- value'
    val mutable softwareInformation : SoftwareInformation.softwareInformation = (Obj.magic 0)
    method softwareInformation = softwareInformation
    method set_softwareInformation value' = softwareInformation <- value'
    val mutable highScoresArray : Obj.t = Obj.repr 0
    method highScoresArray : 'r. 'r = Obj.magic highScoresArray
    method set_highScoresArray : 'v. 'v -> unit = fun value' -> highScoresArray <- Obj.repr value'
    val mutable tOP : string = ""
    method tOP = tOP
    method set_tOP value' = tOP <- value'
    val mutable sCORES : string = ""
    method sCORES = sCORES
    method set_sCORES value' = sCORES <- value'
    val mutable pERSONAL_HIGH_SCORES : string = ""
    method pERSONAL_HIGH_SCORES = pERSONAL_HIGH_SCORES
    method set_pERSONAL_HIGH_SCORES value' = pERSONAL_HIGH_SCORES <- value'
    val mutable wORLD_TOP_SCORES : string = ""
    method wORLD_TOP_SCORES = wORLD_TOP_SCORES
    method set_wORLD_TOP_SCORES value' = wORLD_TOP_SCORES <- value'
    val mutable fETCH : string = ""
    method fETCH = fETCH
    method set_fETCH value' = fETCH <- value'
    
    

    method fetchHighScores : 'any1 'any2. 'any1 * 'any2 -> unit = fun (gameInfo, highScoresResultsListener) ->
        let gameInfo = Obj.repr gameInfo in
        let highScoresResultsListener = Obj.repr highScoresResultsListener in
        begin
        ignore ((Obj.magic logUtil)#putF ("Getting Remote/Local HighScores", self, fETCH));
        (self#fetchHighScoresPreload ((Obj.magic gameInfo), (Obj.magic highScoresResultsListener), true))
        end [@@warning "-7-20"]
    

    method fetchHighScoresPreload : 'any1 'any2. 'any1 * 'any2 * bool -> unit = fun (gameInfo, highScoresResultsListener, (preload : bool)) ->
        let gameInfo = Obj.repr gameInfo in
        let highScoresResultsListener = Obj.repr highScoresResultsListener in
        begin
        ignore ((SecondaryThreadPool.getInstance ())#runTask ((object (self)
            inherit ARunnable.aRunnable () as super
            

            method run () : unit =
                begin
                let logUtil_arg : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
                (try
                    ignore ((Obj.magic !logUtil_arg)#putF (commonStrings#sTART, self, fETCH));
                    (Obj.magic highScoresArray).(0) <- (Obj.magic (java_call_static "RecordStoreHighScores.getInstance" (Obj.repr (abeClientInformation, !gameInfo, tOP, pERSONAL_HIGH_SCORES, sCORES, (new ScoreComparator.scoreComparator (true))))));
                    let gameType : GameType.gameType ref = ref (((!gameInfo#getGameType ()) :> GameType.gameType)) in ();
                    let gameTypeFactory : GameTypeFactory.gameTypeFactory ref = ref (((GameTypeFactory.getInstance ()) :> GameTypeFactory.gameTypeFactory)) in ();
                    let gameInfo2 : GameInfo.gameInfo ref = ref ((!gameInfo :> GameInfo.gameInfo)) in ();
                    if (((Obj.repr !gameType) == (Obj.repr !gameTypeFactory#sINGLE_PLAYER)) || ((Obj.repr !gameType) == (Obj.repr !gameTypeFactory#bOT))) then begin
                        gameInfo2 := (BasicHighScoresGameInfoFactory.getInstance ())#sINGLE_PLAYER_SERVER
                    end else if ((Obj.repr !gameType) == (Obj.repr !gameTypeFactory#mULTI_PLAYER)) then begin
                        gameInfo2 := (BasicHighScoresGameInfoFactory.getInstance ())#mULTI_PLAYER_SERVER
                    end;
                    (Obj.magic highScoresArray).(1) <- (RemoteHighScores.getInstancePreload (abeClientInformation, softwareInformation, !gameInfo2, wORLD_TOP_SCORES, sCORES, (BooleanFactory.getInstance ())#fALSE, !preload));
                    ignore ((Obj.magic !logUtil_arg)#putF (commonStrings#eND, self, fETCH));
                    (LastFetchHighScoresFactory.getInstance ())#set_highScoresArray ((Obj.magic highScoresArray));
                    ignore (!highScoresResultsListener#setHighScoresArray ((Obj.magic highScoresArray)))
                with e -> begin
                    ignore ((Obj.magic !logUtil_arg)#put (commonStrings#eXCEPTION, self, fETCH, e))
                end)
                end
        end)))
        end [@@warning "-7-20"]
    

    method createHighScoresHelper () : HighScoresHelperBaseInterface.highScoresHelperBaseInterface =
        begin
        ((new HighScoresHelper2.highScoresHelper2 ()) :> HighScoresHelperBaseInterface.highScoresHelperBaseInterface)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        highScoresArray <- (Obj.repr (Array.make (2) (Obj.magic 0)));
        tOP <- "Top";
        sCORES <- "Scores";
        pERSONAL_HIGH_SCORES <- "Personal Top Scores";
        wORLD_TOP_SCORES <- "World Top Scores";
        fETCH <- "fetchHighScores";
        ();
        abeClientInformation <- abeClientInformation_arg;
        softwareInformation <- softwareInformation_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "BasicHighScoresFactory" (fun arguments -> Obj.repr (new basicHighScoresFactory (Obj.obj arguments)))


