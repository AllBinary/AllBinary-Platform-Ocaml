(* Generated Code Do Not Modify *)
(* package org.allbinary.game.score *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.GameInfo *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.system.SoftwareInformation *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)


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
class basicHighScoresFactory ((abeClientInformation_arg : AbeClientInformationInterface.abeClientInformationInterface), (_softwareInformation : SoftwareInformation.softwareInformation)) =
  object (self)
    inherit HighScoresBase.highScoresBase ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable abeClientInformation : AbeClientInformationInterface.abeClientInformationInterface = (Obj.magic 0)
    method abeClientInformation = abeClientInformation
    method set_abeClientInformation value' = abeClientInformation <- value'
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
    val mutable fETCH : string = ""
    method fETCH = fETCH
    method set_fETCH value' = fETCH <- value'
    
    

    method fetchHighScores : 'any1 'any2. 'any1 * 'any2 -> unit = fun (gameInfo, highScoresResultsListener) ->
        let gameInfo = Obj.repr gameInfo in
        let highScoresResultsListener = Obj.repr highScoresResultsListener in
        begin
        ignore ((Obj.magic logUtil)#putF ("Getting Local HighScores", self, fETCH));
        (self#fetchHighScoresPreload ((Obj.magic gameInfo), (Obj.magic highScoresResultsListener), true))
        end [@@warning "-7-20"]
    

    method fetchHighScoresPreload : 'any1 'any2. 'any1 * 'any2 * bool -> unit = fun (gameInfo, highScoresResultsListener, (_preload : bool)) ->
        let gameInfo = Obj.repr gameInfo in
        let highScoresResultsListener = Obj.repr highScoresResultsListener in
        begin
        (try
            (Obj.magic highScoresArray).(0) <- (Obj.magic (java_call_static "RecordStoreHighScores.getInstance" (Obj.repr (abeClientInformation, (Obj.magic gameInfo), tOP, pERSONAL_HIGH_SCORES, sCORES, (new ScoreComparator.scoreComparator (true))))));
            ignore ((Obj.magic highScoresResultsListener)#setHighScoresArray ((Obj.magic highScoresArray)))
        with e -> begin
            ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, fETCH, e))
        end)
        end [@@warning "-7-20"]
    

    method createHighScoresHelper () : HighScoresHelperBaseInterface.highScoresHelperBaseInterface =
        begin
        ((new HighScoresHelper2.highScoresHelper2 ()) :> HighScoresHelperBaseInterface.highScoresHelperBaseInterface)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        highScoresArray <- (Obj.repr (Array.make (1) (Obj.magic 0)));
        tOP <- "Top";
        sCORES <- "Scores";
        pERSONAL_HIGH_SCORES <- "Personal Top Scores";
        fETCH <- "fetchHighScores";
        ();
        abeClientInformation <- abeClientInformation_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "BasicHighScoresFactory" (fun arguments -> Obj.repr (new basicHighScoresFactory (Obj.obj arguments)))


