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
(* package org.allbinary.game.ag.ai *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.ai.ArtificialIntelligenceInterface *)
(* import org.allbinary.game.input.GameInput *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.ABHashtable *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class numberOnOwnGroupSequenceAIFactory () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    

    method getInstance : 'any1 'any3 'any4. 'any1 * ArtificialIntelligenceInterface.artificialIntelligenceInterface array * 'any3 * 'any4 -> ArtificialIntelligenceInterface.artificialIntelligenceInterface = fun (hashtable, (artificialIntelligenceInterface : ArtificialIntelligenceInterface.artificialIntelligenceInterface array), ownerLayerInterface, gameInput) ->
        let hashtable = Obj.repr hashtable in
        let ownerLayerInterface = Obj.repr ownerLayerInterface in
        let gameInput = Obj.repr gameInput in
        begin
        let integerArray : int array ref = ref ((NumberInSameGroupSequence.getInstance ())#nUMBER_ON_SAME_TEAM_SEQUENCE) in ();
        let list : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        for index = 0 to (Array.length !integerArray) - 1 do
            let integerCanBeNull : Obj.t ref = ref ((Obj.repr ((Obj.magic hashtable)#get ((Obj.magic !integerArray.(index)))))) in ();
            if (!integerCanBeNull == (Obj.magic 0)) then begin
                raise Java_break
            end;
            ignore (!list#add (!integerCanBeNull))
        done;
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ("Total AI Properties: "));
        ignore (!stringBuffer#appendint ((!list#size ())));
        ignore (!stringBuffer#append (" == Total AI: "));
        ignore (!stringBuffer#appendint ((Array.length artificialIntelligenceInterface)));
        ignore (!stringBuffer#append (" + 1"));
        let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, !commonStrings#gET_INSTANCE));
        if (((Array.length artificialIntelligenceInterface) - 1) > (!list#size ())) then begin
            raise (Failure ("Not enough AI properties."))
        end;
        if (((Array.length artificialIntelligenceInterface) - 1) < (!list#size ())) then begin
            raise (Failure ("Too Many AI properties."))
        end;
        let numberOnSameTeam : int array ref = ref ((Array.make ((!list#size ())) (Obj.magic 0))) in ();
        for index = 0 to (Array.length !numberOnSameTeam) - 1 do
            !numberOnSameTeam.(index) <- (Obj.magic !list#objectArray.(index))
        done;
        ((new NumberOnOwnGroupSequenceAI.numberOnOwnGroupSequenceAI (!numberOnSameTeam, artificialIntelligenceInterface, (Obj.magic ownerLayerInterface), (Obj.magic gameInput))) :> ArtificialIntelligenceInterface.artificialIntelligenceInterface)
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "NumberOnOwnGroupSequenceAIFactory" (fun arguments -> Obj.repr (new numberOnOwnGroupSequenceAIFactory (Obj.obj arguments)))


