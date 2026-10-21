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
(* package org.allbinary.game *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.string.CommonLabels *)
(* import org.allbinary.util.ABHashtable *)

let lEVEL_NAME : string = "LEVEL"
let get_lEVEL_NAME () = lEVEL_NAME
let () = java_register_static "GameInfo.get_lEVEL_NAME" (fun _ -> Obj.repr (get_lEVEL_NAME ()))
class gameInfo ((gameType_arg : GameType.gameType), (gameMode_arg : GameMode.gameMode), (playerType_arg : PlayerType.playerType), (highestLevel_arg : int), (currentLevel_arg : int)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable gameInfoData : GameInfoData.gameInfoData = (Obj.magic 0)
    method gameInfoData = gameInfoData
    method set_gameInfoData value' = gameInfoData <- value'
    val mutable gameType : GameType.gameType = (Obj.magic 0)
    method gameType = gameType
    method set_gameType value' = gameType <- value'
    val mutable gameMode : GameMode.gameMode = (Obj.magic 0)
    method gameMode = gameMode
    method set_gameMode value' = gameMode <- value'
    val mutable playerType : PlayerType.playerType = (Obj.magic 0)
    method playerType = playerType
    method set_playerType value' = playerType <- value'
    val mutable highestLevel : int = 0
    method highestLevel = highestLevel
    method set_highestLevel value' = highestLevel <- value'
    val mutable currentLevel : int = 0
    method currentLevel = currentLevel
    method set_currentLevel value' = currentLevel <- value'
    val mutable nEW_LEVEL : string = ""
    method nEW_LEVEL = nEW_LEVEL
    method set_nEW_LEVEL value' = nEW_LEVEL <- value'
    val mutable sET_CURRENT_LEVEL : string = ""
    method sET_CURRENT_LEVEL = sET_CURRENT_LEVEL
    method set_sET_CURRENT_LEVEL value' = sET_CURRENT_LEVEL <- value'
    val mutable nEXT_GAME_LEVEL : string = ""
    method nEXT_GAME_LEVEL = nEXT_GAME_LEVEL
    method set_nEXT_GAME_LEVEL value' = nEXT_GAME_LEVEL <- value'
    
    

    method getGameType () : GameType.gameType =
        begin
        (gameType :> GameType.gameType)
        end
    

    method getGameMode () : GameMode.gameMode =
        begin
        (gameMode :> GameMode.gameMode)
        end
    

    method getPlayerType () : PlayerType.playerType =
        begin
        (playerType :> PlayerType.playerType)
        end
    

    method getHighestLevel () : int =
        begin
        highestLevel
        end
    

    method setHighestLevel ((highestLevel_arg : int)) : unit =
        begin
        highestLevel <- highestLevel_arg
        end
    

    method getCurrentLevel () : int =
        begin
        currentLevel
        end
    

    method setCurrentLevel ((currentLevel_arg : int)) : unit =
        begin
        currentLevel <- currentLevel_arg;
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (nEW_LEVEL))#appendint ((self#getCurrentLevel ()))))), self, sET_CURRENT_LEVEL))
        end
    

    method nextGameLevel () : unit =
        begin
        if ((self#getCurrentLevel ()) < (self#getHighestLevel ())) then begin
            currentLevel <- currentLevel + 1
        end;
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((((new StringMaker.stringMaker ())#append ((CommonLabels.getInstance ())#nEXT))#append ((CommonSeps.getInstance ())#sPACE))#append (nEW_LEVEL))#appendint ((self#getCurrentLevel ()))))), self, nEXT_GAME_LEVEL))
        end
    

    method previousGameLevel () : unit =
        begin
        if ((self#getCurrentLevel ()) > 1) then begin
            currentLevel <- currentLevel - 1
        end
        end
    

    method isLastLevel () : bool =
        try
        begin
        if ((self#getCurrentLevel ()) >= (self#getHighestLevel ())) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value
    

    method toHashtable : 'return. unit -> 'return = fun () ->
        begin
        let hashtable : Obj.t ref = ref ((Obj.repr ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashtable ()))) in ();
        ignore ((Obj.magic !hashtable)#put (gameInfoData#gAME_TYPE, (java_string_of (Obj.repr (self#getGameType ())))));
        ignore ((Obj.magic !hashtable)#put (gameInfoData#gAME_MODE, (java_string_of (Obj.repr gameMode))));
        ignore ((Obj.magic !hashtable)#put (gameInfoData#pLAYER_TYPE, (java_string_of (Obj.repr playerType))));
        ignore ((Obj.magic !hashtable)#put (gameInfoData#hIGHEST_LEVEL, (string_of_int ((self#getHighestLevel ())))));
        ignore ((Obj.magic !hashtable)#put (gameInfoData#cURRENT_LEVEL, (string_of_int (currentLevel))));
        (Obj.magic ((Obj.magic !hashtable)))
        end
    

    method toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let commonSeps : CommonSeps.commonSeps ref = ref (((CommonSeps.getInstance ()) :> CommonSeps.commonSeps)) in ();
        ignore (!stringBuffer#append (gameInfoData#gAME_TYPE));
        ignore (!stringBuffer#append (!commonSeps#eQUALS));
        ignore (!stringBuffer#append ((java_string_of (Obj.repr (self#getGameType ())))));
        ignore (!stringBuffer#append (!commonSeps#cOMMA_SEP));
        ignore (!stringBuffer#append (gameInfoData#gAME_MODE));
        ignore (!stringBuffer#append (!commonSeps#eQUALS));
        ignore (!stringBuffer#append ((java_string_of (Obj.repr gameMode))));
        ignore (!stringBuffer#append (!commonSeps#cOMMA_SEP));
        ignore (!stringBuffer#append (gameInfoData#pLAYER_TYPE));
        ignore (!stringBuffer#append (!commonSeps#eQUALS));
        ignore (!stringBuffer#append (((StringUtil.getInstance ())#toString (playerType))));
        ignore (!stringBuffer#append (!commonSeps#cOMMA_SEP));
        ignore (!stringBuffer#append (gameInfoData#hIGHEST_LEVEL));
        ignore (!stringBuffer#append (!commonSeps#eQUALS));
        ignore (!stringBuffer#appendint ((self#getHighestLevel ())));
        ignore (!stringBuffer#append (!commonSeps#cOMMA_SEP));
        ignore (!stringBuffer#append (gameInfoData#cURRENT_LEVEL));
        ignore (!stringBuffer#append (!commonSeps#eQUALS));
        ignore (!stringBuffer#appendint (currentLevel));
        (java_string_of (Obj.repr !stringBuffer))
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        gameInfoData <- ((GameInfoData.getInstance ()) :> GameInfoData.gameInfoData);
        ();
        ();
        ();
        highestLevel <- 0;
        ();
        nEW_LEVEL <- "New Level: ";
        sET_CURRENT_LEVEL <- "setCurrentLevel";
        nEXT_GAME_LEVEL <- "nextGameLevel";
        ();
        gameType <- gameType_arg;
        gameMode <- gameMode_arg;
        (self#setHighestLevel (highestLevel_arg));
        currentLevel <- currentLevel_arg;
        playerType <- playerType_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "GameInfo" (fun arguments -> Obj.repr (new gameInfo (Obj.obj arguments)))

let nONE = (new gameInfo ((GameTypeFactory.getInstance ())#nONE, (GameMode.get_nONE ()), (PlayerTypesFactory.getInstance ())#pLAYER_TYPE_ONE, (-1), (-1)))
let get_nONE () = nONE
let () = java_register_static "GameInfo.get_nONE" (fun _ -> Obj.repr (get_nONE ()))


