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
(* package org.allbinary.game.score.remote *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.GameInfo *)
(* import org.allbinary.game.GameInfoData *)
(* import org.allbinary.game.configuration.GameConfigurationCentral *)
(* import org.allbinary.graphics.displayable.DisplayInfoSingleton *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.xmlrpc.XmlRpcAbeClient *)
(* import org.allbinary.logic.java.bool.BooleanFactory *)
(* import org.allbinary.logic.system.security.crypt.jcehelper.NoCrypt *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.ABHashtable *)
(* import org.allbinary.util.HashtableUtil *)

class remoteHighScoresProcessor () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable noCrypt : NoCrypt.noCrypt = (Obj.magic 0)
    method noCrypt = noCrypt
    method set_noCrypt value' = noCrypt <- value'
    
    

    method process : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 -> unit = fun (remoteHighScores, abeClientInformation, gameInfo) ->
        let remoteHighScores = Obj.repr remoteHighScores in
        let abeClientInformation = Obj.repr abeClientInformation in
        let gameInfo = Obj.repr gameInfo in
        begin
        ignore ((Obj.magic logUtil)#putF ("Begin Remote HighScores Retrieval", self, commonStrings#pROCESS));
        let gameInfoData : GameInfoData.gameInfoData ref = ref (((GameInfoData.getInstance ()) :> GameInfoData.gameInfoData)) in ();
        let hashtable : Obj.t ref = ref ((Obj.repr ((Obj.magic abeClientInformation)#toHashtable ()))) in ();
        ignore ((HashtableUtil.getInstance ())#putAll (((Obj.magic gameInfo)#toHashtable ()), (Obj.magic !hashtable)));
        ignore ((Obj.magic !hashtable)#put (!gameInfoData#sOFTWARE_INFORMATION, (java_string_of (Obj.repr ((Obj.magic remoteHighScores)#getSoftwareInformation ())))));
        ignore ((Obj.magic !hashtable)#put ((Obj.magic remoteHighScores)#aSCENDING, (java_string_of (Obj.repr ((Obj.magic remoteHighScores)#getAscending ())))));
        let displayInfoSingleton : DisplayInfoSingleton.displayInfoSingleton ref = ref (((DisplayInfoSingleton.getInstance ()) :> DisplayInfoSingleton.displayInfoSingleton)) in ();
        ignore ((Obj.magic !hashtable)#put (!displayInfoSingleton#oRIENTATION, ((BooleanFactory.getInstance ())#toStringb ((!displayInfoSingleton#isPortrait ())))));
        ignore ((Obj.magic !hashtable)#put ((RemoteHighScoresData.getInstance ())#gAME_CONFIGURATION, (java_string_of (Obj.repr (GameConfigurationCentral.getInstance ())))));
        if (XmlRpcAbeClient.get_isOnline ()) then begin
            let resultHashtable : Obj.t ref = ref ((Obj.repr (Obj.magic ((new XmlRpcRemoteHighScoresClient.xmlRpcRemoteHighScoresClient ((Obj.magic abeClientInformation), "highscoresservicessl.php", "HighScoresService.process"))#get ((Obj.magic !hashtable), noCrypt))))) in ();
            ignore ((Obj.magic remoteHighScores)#update ((Obj.magic !resultHashtable)))
        end
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        noCrypt <- ((new NoCrypt.noCrypt ()) :> NoCrypt.noCrypt);
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "RemoteHighScoresProcessor" (fun arguments -> Obj.repr (new remoteHighScoresProcessor (Obj.obj arguments)))


