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
(* package org.allbinary.game.score.displayable *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Command *)
(* import javax.microedition.lcdui.CommandListener *)
(* import org.allbinary.game.GameInfo *)
(* import org.allbinary.game.score.HighScore *)
(* import org.allbinary.game.score.HighScoreNamePersistanceSingleton *)
(* import org.allbinary.game.score.HighScores *)
(* import org.allbinary.game.score.HighScoresFactoryInterface *)
(* import org.allbinary.game.score.HighScoresHelperBaseInterface *)
(* import org.allbinary.game.score.HighScoresResultsListener *)
(* import org.allbinary.graphics.displayable.MyCanvas *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.string.CommonStrings *)

class highScoreUtil ((highScoresFactoryInterface_arg : HighScoresFactoryInterface.highScoresFactoryInterface), (highScoresHelper_arg : HighScoresHelperBaseInterface.highScoresHelperBaseInterface), (abeClientInformation_arg : AbeClientInformationInterface.abeClientInformationInterface), (gameInfo_arg : GameInfo.gameInfo), _cmdListener, (_name : string), highScore_arg) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable highScoresFactoryInterface : HighScoresFactoryInterface.highScoresFactoryInterface = (Obj.magic 0)
    method highScoresFactoryInterface = highScoresFactoryInterface
    method set_highScoresFactoryInterface value' = highScoresFactoryInterface <- value'
    val mutable highScoresArray : Obj.t = Obj.repr 0
    method highScoresArray : 'r. 'r = Obj.magic highScoresArray
    method set_highScoresArray : 'v. 'v -> unit = fun value' -> highScoresArray <- Obj.repr value'
    val mutable highScore : Obj.t = Obj.repr 0
    method highScore : 'r. 'r = Obj.magic highScore
    method set_highScore : 'v. 'v -> unit = fun value' -> highScore <- Obj.repr value'
    val mutable abeClientInformation : AbeClientInformationInterface.abeClientInformationInterface = (Obj.magic 0)
    method abeClientInformation = abeClientInformation
    method set_abeClientInformation value' = abeClientInformation <- value'
    val mutable gameInfo : GameInfo.gameInfo = (Obj.magic 0)
    method gameInfo = gameInfo
    method set_gameInfo value' = gameInfo <- value'
    val mutable highScoresHelper : HighScoresHelperBaseInterface.highScoresHelperBaseInterface = (Obj.magic 0)
    method highScoresHelper = highScoresHelper
    method set_highScoresHelper value' = highScoresHelper <- value'
    val mutable firstTime : bool = false
    method firstTime = firstTime
    method set_firstTime value' = firstTime <- value'
    
    

    method setHighScoresArray (highScoresArray_arg) : unit =
        begin
        highScoresArray <- Obj.repr (highScoresArray_arg);
        firstTime <- false;
        (self#saveHighScore ())
        end
    

    method update ((name : string)) : unit =
        begin
        ignore ((Obj.magic (java_call_static "HighScoreNamePersistanceSingleton.getInstance" (Obj.repr ())))#save (abeClientInformation, gameInfo, name));
        ignore ((Obj.magic highScore)#setName (name))
        end
    

    method saveHighScore () : unit =
        try
        begin
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (commonStrings#sTART))#append (((StringUtil.getInstance ())#toString ((Obj.magic highScore))))))), self, "saveHighScore"));
        let size : int ref = ref ((Array.length (Obj.magic highScoresArray))) in ();
        if (firstTime && (!size = 0)) then begin
            ignore ((Obj.magic logUtil)#putF ("Games canvas did not give us any HighScores", self, "saveHighScore"));
            ignore (highScoresFactoryInterface#fetchHighScores (gameInfo, self));
            raise (Java_return (Obj.repr (())))
        end;
        let highScores : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        let highScoresAsString : string ref = ref ("") in ();
        for index = 0 to !size - 1 do
            highScores := Obj.repr ((Obj.magic highScoresArray).(index));
            ignore ((Obj.magic !highScores)#addHighScore ((Obj.magic highScore)));
            highScoresAsString := (java_string_of (Obj.repr (Obj.magic !highScores)));
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("Added/Adding Score: "))#append (!highScoresAsString)))), self, "saveHighScore"))
        done;
        ignore (highScoresHelper#setHighScoresArray ((Obj.magic highScoresArray)))
        end
        with Java_return value -> Obj.obj value
    

    method submit : 'any1. 'any1 -> unit = fun (myCanvas) ->
        let myCanvas = Obj.repr myCanvas in
        begin
        let commandListener : Obj.t ref = ref ((Obj.repr ((Obj.magic myCanvas)#getCustomCommandListener ()))) in ();
        ignore ((Obj.magic !commandListener)#commandAction ((Obj.magic sUBMIT_TEXTBOX_COMMAND), (Obj.magic myCanvas)))
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        ();
        ();
        ();
        ();
        ();
        firstTime <- true;
        ();
        highScoresFactoryInterface <- highScoresFactoryInterface_arg;
        highScoresHelper <- highScoresHelper_arg;
        highScoresArray <- Obj.repr ((highScoresHelper#getHighScoresArray ()));
        highScore <- Obj.repr (highScore_arg);
        abeClientInformation <- abeClientInformation_arg;
        gameInfo <- gameInfo_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "HighScoreUtil" (fun arguments -> Obj.repr (new highScoreUtil (Obj.obj arguments)))

let sUBMIT_TEXTBOX_COMMAND : Obj.t = (Obj.repr (Obj.obj (java_new "Command" (Obj.repr ("Submit", (StringUtil.getInstance ())#eMPTY_STRING, (Obj.magic (java_call_static "Command.get_sCREEN" (Obj.repr ()))), 1)))))
let get_sUBMIT_TEXTBOX_COMMAND () = Obj.magic sUBMIT_TEXTBOX_COMMAND
let () = java_register_static "HighScoreUtil.get_sUBMIT_TEXTBOX_COMMAND" (fun _ -> Obj.repr (get_sUBMIT_TEXTBOX_COMMAND ()))


