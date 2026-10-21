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
(* package org.allbinary.game.ai *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.ai.ArtificialIntelligence *)
(* import org.allbinary.game.displayable.canvas.CanvasUtil *)
(* import org.allbinary.game.input.GameInput *)
(* import org.allbinary.game.input.GameKeyEventSourceInterface *)
(* import org.allbinary.game.input.event.GameKeyEventFactory *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.layer.AllBinaryLayerManager *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.math.SmallIntegerSingletonFactory *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.string.CommonStrings *)

let aI_VISITOR : int = ((SmallIntegerSingletonFactory.getInstance ())#getAt (2))
let get_aI_VISITOR () = aI_VISITOR
let () = java_register_static "BasicAI.get_aI_VISITOR" (fun _ -> Obj.repr (get_aI_VISITOR ()))
let iD : int = ((SmallIntegerSingletonFactory.getInstance ())#getAt (1))
let get_iD () = iD
let () = java_register_static "BasicAI.get_iD" (fun _ -> Obj.repr (get_iD ()))
class basicAI ((ownerLayerInterface_arg : AllBinaryLayer.allBinaryLayer), (gameInput_arg : GameInput.gameInput)) =
  object (self)
    inherit ArtificialIntelligence.artificialIntelligence ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable gameKeyEventFactory : GameKeyEventFactory.gameKeyEventFactory = (Obj.magic 0)
    method gameKeyEventFactory = gameKeyEventFactory
    method set_gameKeyEventFactory value' = gameKeyEventFactory <- value'
    val mutable ownerLayerInterface : AllBinaryLayer.allBinaryLayer = (Obj.magic 0)
    method ownerLayerInterface = ownerLayerInterface
    method set_ownerLayerInterface value' = ownerLayerInterface <- value'
    val mutable gameInput : GameInput.gameInput = (Obj.magic 0)
    method gameInput = gameInput
    method set_gameInput value' = gameInput <- value'
    val mutable lastKey : int = 0
    method lastKey = lastKey
    method set_lastKey value' = lastKey <- value'
    
    

    method processAI : 'any1. 'any1 -> unit = fun (_allBinaryLayerManager) ->
        begin
        raise (Failure (commonStrings#nOT_IMPLEMENTED))
        end [@@warning "-7-20"]
    

    method processKeyAI ((key : int)) : unit =
        begin
        if (key <> (-1)) then begin
            ignore (gameInput#add ((gameKeyEventFactory#getInstanceForKey (self, key))))
        end
        end [@@warning "-7"]
    

    method setLastKey ((lastKey_arg : int)) : unit =
        begin
        lastKey <- lastKey_arg
        end [@@warning "-7"]
    

    method getLastKey () : int =
        begin
        lastKey
        end [@@warning "-7"]
    

    method getOwnerLayerInterface () : AllBinaryLayer.allBinaryLayer =
        begin
        (ownerLayerInterface :> AllBinaryLayer.allBinaryLayer)
        end [@@warning "-7"]
    

    method getGameInput () : GameInput.gameInput =
        begin
        (gameInput :> GameInput.gameInput)
        end [@@warning "-7"]
    

    method getName () : string =
        begin
        (java_get_class (Obj.repr self))
        end [@@warning "-7"]
    

    method toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ((CommonSeps.getInstance ())#nEW_LINE));
        ignore (!stringBuffer#append ((self#getName ())));
        ignore (!stringBuffer#append (" LastKey: "));
        ignore (!stringBuffer#append ((CanvasUtil.getKeyName ((self#getLastKey ())))));
        (java_string_of (Obj.repr !stringBuffer))
        end [@@warning "-7"]
    

    method getSourceId () : int =
        begin
        1
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        gameKeyEventFactory <- ((GameKeyEventFactory.getInstance ()) :> GameKeyEventFactory.gameKeyEventFactory);
        ();
        ();
        lastKey <- (-1);
        ();
        ownerLayerInterface <- ownerLayerInterface_arg;
        gameInput <- gameInput_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "BasicAI" (fun arguments -> Obj.repr (new basicAI (Obj.obj arguments)))


