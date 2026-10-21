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
(* import java.util.Enumeration *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.game.GameInfo *)
(* import org.allbinary.game.score.HighScore *)
(* import org.allbinary.game.score.HighScores *)
(* import org.allbinary.game.score.RemoteErrorHighScoresSingletonFactory *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.system.SoftwareInformation *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.string.CommonLabels *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.ABHashtable *)
(* import org.allbinary.util.EnumerationUtil *)

let hashTable : Obj.t = (Obj.repr ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashtable ()))
let get_hashTable () = Obj.magic hashTable
let () = java_register_static "RemoteHighScores.get_hashTable" (fun _ -> Obj.repr (get_hashTable ()))
class remoteHighScores ((abeClientInformation_arg : AbeClientInformationInterface.abeClientInformationInterface), (softwareInformation_arg : SoftwareInformation.softwareInformation), (gameInfo : GameInfo.gameInfo), (heading : string), (columnTwoHeading : string), (ascending_arg : bool), (preload : bool)) =
  object (self)
    inherit HighScores.highScores ((java_string_of (Obj.repr gameInfo)), heading, columnTwoHeading)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable enumerationUtil : EnumerationUtil.enumerationUtil = (Obj.magic 0)
    method enumerationUtil = enumerationUtil
    method set_enumerationUtil value' = enumerationUtil <- value'
    val mutable abeClientInformation : AbeClientInformationInterface.abeClientInformationInterface = (Obj.magic 0)
    method abeClientInformation = abeClientInformation
    method set_abeClientInformation value' = abeClientInformation <- value'
    val mutable softwareInformation : SoftwareInformation.softwareInformation = (Obj.magic 0)
    method softwareInformation = softwareInformation
    method set_softwareInformation value' = softwareInformation <- value'
    val mutable ascending : bool = (Obj.magic 0)
    method ascending = ascending
    method set_ascending value' = ascending <- value'
    val mutable aSCENDING : string = ""
    method aSCENDING = aSCENDING
    method set_aSCENDING value' = aSCENDING <- value'
    
    

    method addHighScore : 'any1. 'any1 -> unit = fun (newHighScore) ->
        let newHighScore = Obj.repr newHighScore in
        begin
        ignore ((Obj.magic (java_call_static "RemoteHighScoresSubmissionProcessorFactory.getInstance" (Obj.repr ())))#process (self, abeClientInformation, (Obj.magic newHighScore)))
        end [@@warning "-7-20"]
    

    method update : 'any1. 'any1 -> unit = fun (hashtable) ->
        let hashtable = Obj.repr hashtable in
        begin
        ignore ((self#getList ())#clear ());
        let vector : BasicArrayList.basicArrayList ref = ref (((Obj.magic ((Obj.magic hashtable)#get ((Obj.magic (RemoteHighScoresData.getInstance ())#hIGH_SCORES)))) :> BasicArrayList.basicArrayList)) in ();
        if (!vector != (Obj.magic 0)) then begin
            let size : int ref = ref ((!vector#size ())) in ();
            for index = 0 to !size - 1 do
                let highScoreVector : BasicArrayList.basicArrayList ref = ref (((Obj.magic (!vector#get (index))) :> BasicArrayList.basicArrayList)) in ();
                let displayName : string ref = ref ((Obj.magic (!highScoreVector#get (0)))) in ();
                let score : string ref = ref ((Obj.magic (!highScoreVector#get (1)))) in ();
                let longScore : int ref = ref ((int_of_string (!score))) in ();
                let highScore : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "HighScore" (Obj.repr ((-1), !displayName, (Obj.magic 0), !longScore)))))) in ();
                ignore ((self#getList ())#add ((Obj.magic !highScore)))
            done
        end else begin
            let nEXT_ELEMENT : string ref = ref ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ((CommonLabels.getInstance ())#nEXT))#append ("Element: "))))) in ();
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            let enumeration : java_enumeration ref = ref ((((Obj.magic hashtable)#elements ()) :> java_enumeration)) in ();
            let nextElement : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
            while (enumerationUtil#hasMoreElements (!enumeration)) do
                nextElement := (enumerationUtil#nextElement (!enumeration));
                ignore ((Obj.magic logUtil)#putF ((!nEXT_ELEMENT ^ java_string_of (Obj.repr (!nextElement))), self, !commonStrings#pROCESS))
            done
        end
        end [@@warning "-7-20"]
    

    method setAscending ((ascending_arg : bool)) : unit =
        begin
        ascending <- ascending_arg
        end [@@warning "-7"]
    

    method getAscending () : bool =
        begin
        ascending
        end [@@warning "-7"]
    

    method getSoftwareInformation () : SoftwareInformation.softwareInformation =
        begin
        (softwareInformation :> SoftwareInformation.softwareInformation)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        enumerationUtil <- ((EnumerationUtil.getInstance ()) :> EnumerationUtil.enumerationUtil);
        ();
        ();
        ascending <- (Obj.magic 0);
        aSCENDING <- "ASCENDING";
        ();
        (* super(...) is the inherit clause *) ();
        abeClientInformation <- abeClientInformation_arg;
        softwareInformation <- softwareInformation_arg;
        (self#setAscending (ascending_arg));
        if preload then begin
            ignore ((RemoteHighScoresProcessorFactory.getInstance ())#process (self, abeClientInformation, gameInfo))
        end
      end
  end [@@warning "-20"]
let () = java_register_constructor "RemoteHighScores" (fun arguments -> Obj.repr (new remoteHighScores (Obj.obj arguments)))

let rec getInstance : 'any1 'any2 'any3 'return. 'any1 * 'any2 * 'any3 * string * string * bool -> 'return = fun (abeClientInformation_arg, softwareInformation_arg, gameInfo, (heading : string), (columnTwoHeading : string), (isAscending : bool)) ->
        let abeClientInformation_arg = Obj.repr abeClientInformation_arg in
        let softwareInformation_arg = Obj.repr softwareInformation_arg in
        let gameInfo = Obj.repr gameInfo in
        begin
        (Obj.magic ((getInstancePreload ((Obj.magic abeClientInformation_arg), (Obj.magic softwareInformation_arg), (Obj.magic gameInfo), heading, columnTwoHeading, isAscending, true))))
        end [@@warning "-20"]

and getInstancePreload : 'any1 'any2 'any3 'return. 'any1 * 'any2 * 'any3 * string * string * bool * bool -> 'return = fun (abeClientInformation_arg, softwareInformation_arg, gameInfo, (heading : string), (columnTwoHeading : string), (isAscending : bool), (preload : bool)) ->
        let abeClientInformation_arg = Obj.repr abeClientInformation_arg in
        let softwareInformation_arg = Obj.repr softwareInformation_arg in
        let gameInfo = Obj.repr gameInfo in
        begin
        let logUtil_arg : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
        (try
            let highScores : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic hashTable)#get ((Obj.magic gameInfo)))))) in ();
            if ((Obj.magic !highScores) == (Obj.magic 0)) then begin
                highScores := Obj.repr ((new remoteHighScores ((Obj.magic abeClientInformation_arg), (Obj.magic softwareInformation_arg), (Obj.magic gameInfo), heading, columnTwoHeading, isAscending, preload)));
                ignore ((Obj.magic hashTable)#put ((Obj.magic gameInfo), (Obj.magic !highScores)))
            end;
            (Obj.magic ((Obj.magic !highScores)))
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic !logUtil_arg)#put (!commonStrings#eXCEPTION, (RemoteErrorHighScoresSingletonFactory.getInstance ()), !commonStrings#gET_INSTANCE, e));
            (Obj.magic ((RemoteErrorHighScoresSingletonFactory.getInstance ())))
        end)
        end [@@warning "-20"]
let () = java_register_static "RemoteHighScores.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
let () = java_register_static "RemoteHighScores.getInstancePreload" (fun arguments -> Obj.repr (getInstancePreload (Obj.obj arguments)))


