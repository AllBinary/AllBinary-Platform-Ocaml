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
(* package org.allbinary.game.input *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.configuration.feature.Features *)
(* import org.allbinary.game.configuration.feature.InputFeatureFactory *)
(* import org.allbinary.game.input.event.GameKeyEvent *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.BasicArrayList *)

class gameInput ((gameKeyEventList_arg : BasicArrayList.basicArrayList), (removalGameKeyEventList_arg : BasicArrayList.basicArrayList)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable gameKeyEventList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method gameKeyEventList = gameKeyEventList
    method set_gameKeyEventList value' = gameKeyEventList <- value'
    val mutable removalGameKeyEventList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method removalGameKeyEventList = removalGameKeyEventList
    method set_removalGameKeyEventList value' = removalGameKeyEventList <- value'
    val mutable isRemoveDuplicateKeyPresses : bool = false
    method isRemoveDuplicateKeyPresses = isRemoveDuplicateKeyPresses
    method set_isRemoveDuplicateKeyPresses value' = isRemoveDuplicateKeyPresses <- value'
    
    

    method add : 'any1. 'any1 -> unit = fun (gameKeyEvent) ->
        let gameKeyEvent = Obj.repr gameKeyEvent in
        try
        begin
        if (isRemoveDuplicateKeyPresses && (gameKeyEventList#contains ((Obj.magic gameKeyEvent)))) then begin
            raise (Java_return (Obj.repr (())))
        end;
        if ((Obj.magic gameKeyEvent) != (Obj.magic 0)) then begin
            ignore (gameKeyEventList#add ((Obj.magic gameKeyEvent)))
        end else begin
            ignore ((Obj.magic logUtil)#putF ("Danger Passed Null GameKeyEvent", self, commonStrings#aDD))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method addForRemoval : 'any1. 'any1 -> unit = fun (gameKeyEvent) ->
        let gameKeyEvent = Obj.repr gameKeyEvent in
        begin
        ignore (removalGameKeyEventList#add ((Obj.magic gameKeyEvent)))
        end [@@warning "-20"]
    

    method isForRemoval : 'any1. 'any1 -> bool = fun (gameKeyEvent) ->
        let gameKeyEvent = Obj.repr gameKeyEvent in
        begin
        (removalGameKeyEventList#contains ((Obj.magic gameKeyEvent)))
        end [@@warning "-20"]
    

    method clear () : unit =
        begin
        ignore (gameKeyEventList#clear ())
        end
    

    method removeNonAIInputGameKeyEvents () : unit =
        begin
        let list : BasicArrayList.basicArrayList ref = ref ((gameKeyEventList :> BasicArrayList.basicArrayList)) in ();
        let gameKeyEvent : GameKeyEvent.gameKeyEvent ref = ref (((Obj.magic 0) :> GameKeyEvent.gameKeyEvent)) in ();
        let index : int ref = ref ((!list#size ())) in ();
        while ((index := !index - 1; !index) >= 0) do
            gameKeyEvent := (Obj.magic !list#objectArray.(!index));
            if ((!gameKeyEvent#getSourceId ()) != 1) then begin
                ignore (!list#removeAt (!index))
            end
        done
        end
    

    method update () : unit =
        begin
        let removeList : BasicArrayList.basicArrayList ref = ref ((removalGameKeyEventList :> BasicArrayList.basicArrayList)) in ();
        let list : BasicArrayList.basicArrayList ref = ref ((gameKeyEventList :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((!removeList#size ())) in ();
        for index = 0 to !size - 1 do
            let anyType : Obj.t ref = ref ((Obj.repr !removeList#objectArray.(index))) in ();
            let index2 : int ref = ref ((!list#size ())) in ();
            while ((index2 := !index2 - 1; !index2) >= 0) do
                if ((Obj.repr !list#objectArray.(!index2)) == (Obj.repr !anyType)) then begin
                    ignore (!list#removeAt (!index2))
                end
            done
        done;
        ignore (!removeList#clear ())
        end
    

    method getRemovalGameKeyEventList () : BasicArrayList.basicArrayList =
        begin
        (removalGameKeyEventList :> BasicArrayList.basicArrayList)
        end
    

    method getGameKeyEventList () : BasicArrayList.basicArrayList =
        begin
        (gameKeyEventList :> BasicArrayList.basicArrayList)
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        ();
        ();
        ();
        gameKeyEventList <- gameKeyEventList_arg;
        removalGameKeyEventList <- removalGameKeyEventList_arg;
        isRemoveDuplicateKeyPresses <- ((Features.getInstance ())#isFeature ((InputFeatureFactory.getInstance ())#rEMOVE_DUPLICATE_KEY_PRESSES))
      end
  end [@@warning "-20"]
let () = java_register_constructor "GameInput" (fun arguments -> Obj.repr (new gameInput (Obj.obj arguments)))


