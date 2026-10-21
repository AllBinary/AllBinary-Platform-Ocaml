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
(* package org.allbinary.game.configuration.event *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.configuration.feature.Feature *)
(* import org.allbinary.game.configuration.feature.Features *)
(* import org.allbinary.game.configuration.feature.GameFeatureUtil *)
(* import org.allbinary.logic.communication.log.ForcedLogUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class baseChangedGameFeatureListener () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable gameFeatureUtil : GameFeatureUtil.gameFeatureUtil = (Obj.magic 0)
    method gameFeatureUtil = gameFeatureUtil
    method set_gameFeatureUtil value' = gameFeatureUtil <- value'
    val mutable list : BasicArrayList.basicArrayList = (Obj.magic 0)
    method list = list
    method set_list value' = list <- value'
    val mutable changed : bool = false
    method changed = changed
    method set_changed value' = changed <- value'
    

    method onEvent : 'any1. 'any1 -> unit = fun (_eventObject) ->
        begin
        ignore (ForcedLogUtil.log ((CommonStrings.getInstance ())#nOT_IMPLEMENTED, self))
        end [@@warning "-20"]
    

    method onGameFeatureChange : 'any1. 'any1 -> unit = fun (gameFeatureEvent) ->
        let gameFeatureEvent = Obj.repr gameFeatureEvent in
        begin
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (gameFeatureUtil#gAME_FEATURE_CHANGED))#append (((Obj.magic gameFeatureEvent)#getWhatChanged ()))))), self, gameFeatureUtil#oN_GAME_FEATURE_CHANGE));
        ignore (list#add (((Obj.magic gameFeatureEvent)#getGameOption ())));
        (self#setChanged (true))
        end [@@warning "-20"]
    

    method add : 'any1. 'any1 -> unit = fun (gameFeature) ->
        let gameFeature = Obj.repr gameFeature in
        begin
        ignore (list#add ((Obj.magic gameFeature)))
        end [@@warning "-20"]
    

    method remove : 'any1. 'any1 -> unit = fun (gameFeature) ->
        let gameFeature = Obj.repr gameFeature in
        begin
        ignore (list#remove ((Obj.magic gameFeature)))
        end [@@warning "-20"]
    

    method setChanged ((initialized : bool)) : unit =
        begin
        changed <- initialized;
        if (not (self#isChanged ())) then begin
            ignore (list#clear ())
        end
        end
    

    method isChangedFeature : 'any1. 'any1 -> bool = fun (gameFeature) ->
        let gameFeature = Obj.repr gameFeature in
        begin
        let isChanged : bool ref = ref ((list#contains ((Obj.magic gameFeature)))) in ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ("GameFeature: "));
        ignore (!stringBuffer#append (((StringUtil.getInstance ())#toString ((Obj.magic gameFeature)))));
        ignore (!stringBuffer#append (" isFeature: "));
        ignore (!stringBuffer#appendboolean (((Obj.magic (java_call_static "Features.getInstance" (Obj.repr ())))#isFeature ((Obj.magic gameFeature)))));
        ignore (!stringBuffer#append (" isChanged: "));
        ignore (!stringBuffer#appendboolean (!isChanged));
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "isChanged"));
        !isChanged
        end [@@warning "-20"]
    

    method isChanged () : bool =
        begin
        changed
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        gameFeatureUtil <- ((GameFeatureUtil.getInstance ()) :> GameFeatureUtil.gameFeatureUtil);
        list <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        changed <- true;
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "BaseChangedGameFeatureListener" (fun arguments -> Obj.repr (new baseChangedGameFeatureListener (Obj.obj arguments)))


