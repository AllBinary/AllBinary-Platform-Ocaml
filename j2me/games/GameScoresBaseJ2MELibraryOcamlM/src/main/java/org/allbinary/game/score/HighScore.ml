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
(* import java.io.ByteArrayOutputStream *)
(* import java.io.DataOutputStream *)
(* import org.allbinary.game.GameInfo *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonSeps *)

class highScore ((id_arg : int), (name_arg : string), (gameInfo_arg : GameInfo.gameInfo), (score_arg : int)) =
  object (self)
    val mutable id : int = 0
    method id = id
    method set_id value' = id <- value'
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    val mutable gameInfo : GameInfo.gameInfo = (Obj.magic 0)
    method gameInfo = gameInfo
    method set_gameInfo value' = gameInfo <- value'
    val mutable score : int = 0
    method score = score
    method set_score value' = score <- value'
    val mutable scoreString : string = ""
    method scoreString = scoreString
    method set_scoreString value' = scoreString <- value'
    
    

    method getId () : int =
        begin
        id
        end
    

    method getName () : string =
        begin
        name
        end
    

    method getScore () : int =
        begin
        score
        end
    

    method getAsBytes () : int array =
        begin
        let byteArrayOutputStream : java_byte_array_output_stream ref = ref ((new java_byte_array_output_stream ())) in ();
        let outputStream : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "DataOutputStream" (Obj.repr (!byteArrayOutputStream)))))) in ();
        ignore ((Obj.magic !outputStream)#writeUTF ((self#getName ())));
        ignore ((Obj.magic !outputStream)#writeLong ((self#getScore ())));
        (!byteArrayOutputStream#toByteArray ())
        end
    

    method getGameInfo () : GameInfo.gameInfo =
        begin
        (gameInfo :> GameInfo.gameInfo)
        end
    

    method getScoreString () : string =
        begin
        scoreString
        end
    

    method setName ((name_arg : string)) : unit =
        begin
        name <- name_arg
        end
    

    method toString () : string =
        begin
        let commonSeps : CommonSeps.commonSeps ref = ref (((CommonSeps.getInstance ()) :> CommonSeps.commonSeps)) in ();
        (java_string_of (Obj.repr ((((((new StringMaker.stringMaker ())#append (name))#append (!commonSeps#cOLON))#appendlong (score))#append (!commonSeps#fORWARD_SLASH))#append (scoreString))))
        end

    initializer
      begin
        ();
        ();
        ();
        ();
        ();
        ();
        id <- id_arg;
        name <- name_arg;
        gameInfo <- gameInfo_arg;
        score <- score_arg;
        scoreString <- (string_of_int (score))
      end
  end
let () = java_register_constructor "HighScore" (fun arguments -> Obj.repr (new highScore (Obj.obj arguments)))


