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
(* package org.allbinary.game.ag.ai.sequence *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.ai.ArtificialIntelligence *)
(* import org.allbinary.ai.ArtificialIntelligenceInterface *)
(* import org.allbinary.ai.ArtificialIntelligenceTransitionInterface *)
(* import org.allbinary.game.ag.ai.ArrayAI *)
(* import org.allbinary.game.input.GameInput *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.layer.AllBinaryLayerManager *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)

let sEQUENCE_AI : string = "Sequence AI"
let get_sEQUENCE_AI () = sEQUENCE_AI
let () = java_register_static "SequenceAI.get_sEQUENCE_AI" (fun _ -> Obj.repr (get_sEQUENCE_AI ()))
class sequenceAI ((artificialIntelligenceInterfaceArray : ArtificialIntelligenceInterface.artificialIntelligenceInterface array), (ownerLayerInterface : AllBinaryLayer.allBinaryLayer), (gameInput : GameInput.gameInput)) =
  object (self)
    inherit ArrayAI.arrayAI (artificialIntelligenceInterfaceArray, ownerLayerInterface, gameInput)
    val mutable index : int = 0
    method index = index
    method set_index value' = index <- value'
    
    

    method processAI : 'any1. 'any1 -> unit = fun (allBinaryLayerManager) ->
        let allBinaryLayerManager = Obj.repr allBinaryLayerManager in
        begin
        ignore ((self#getArtificialIntelligenceInterface ()).(index)#processAI ((Obj.magic allBinaryLayerManager)))
        end [@@warning "-7-20"]
    

    method next () : unit =
        begin
        index <- index + 1;
        let artificialIntelligenceInterface : ArtificialIntelligenceInterface.artificialIntelligenceInterface ref = ref (((self#getSelectedArtificialIntelligenceInterface ()) :> ArtificialIntelligenceInterface.artificialIntelligenceInterface)) in ();
        if ((Obj.repr (!artificialIntelligenceInterface#getId ())) == (Obj.repr (ArtificialIntelligence.get_aI_ID ()))) then begin
            let artificialIntelligenceTransitionInterface : ArtificialIntelligenceTransitionInterface.artificialIntelligenceTransitionInterface ref = ref (((Obj.magic !artificialIntelligenceInterface) :> ArtificialIntelligenceTransitionInterface.artificialIntelligenceTransitionInterface)) in ();
            ignore (!artificialIntelligenceTransitionInterface#transition ())
        end
        end [@@warning "-7"]
    

    method getIndex () : int =
        begin
        index
        end [@@warning "-7"]
    

    method setIndex ((index_arg : int)) : unit =
        begin
        index <- index_arg
        end [@@warning "-7"]
    

    method getSelectedArtificialIntelligenceInterface () : ArtificialIntelligenceInterface.artificialIntelligenceInterface =
        begin
        ((self#getArtificialIntelligenceInterface ()).(index) :> ArtificialIntelligenceInterface.artificialIntelligenceInterface)
        end [@@warning "-7"]
    

    method getName () : string =
        begin
        sEQUENCE_AI
        end [@@warning "-7"]
    

    method toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ((java_string_of (Obj.repr super))));
        ignore (!stringBuffer#append (" Selected AI: "));
        ignore (!stringBuffer#append (((StringUtil.getInstance ())#toString ((self#getSelectedArtificialIntelligenceInterface ())))));
        (java_string_of (Obj.repr !stringBuffer))
        end [@@warning "-7"]

    initializer
      begin
        index <- 0;
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "SequenceAI" (fun arguments -> Obj.repr (new sequenceAI (Obj.obj arguments)))


