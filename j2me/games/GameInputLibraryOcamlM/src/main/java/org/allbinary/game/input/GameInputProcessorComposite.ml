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
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class gameInputProcessorComposite ((name_arg : string), (gameInputProcessorInterface_arg : GameInputProcessorInterface.gameInputProcessorInterface)) =
  object (self)
    inherit PlayerGameInput.playerGameInput ((new BasicArrayListD.basicArrayListD ()), (new BasicArrayListD.basicArrayListD ()), (-1)) as super
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    val mutable gameInputProcessorInterface : GameInputProcessorInterface.gameInputProcessorInterface = (Obj.magic 0)
    method gameInputProcessorInterface = gameInputProcessorInterface
    method set_gameInputProcessorInterface value' = gameInputProcessorInterface <- value'
    val mutable nAME_LABEL : string = ""
    method nAME_LABEL = nAME_LABEL
    method set_nAME_LABEL value' = nAME_LABEL <- value'
    
    

    method update () : unit =
        begin
        (try
            let list : BasicArrayList.basicArrayList ref = ref (((self#getGameKeyEventList ()) :> BasicArrayList.basicArrayList)) in ();
            ignore (gameInputProcessorInterface#onInput (!list))
        with e -> begin
            ignore ((self#logUtil)#put ((self#commonStrings)#eXCEPTION, self, (self#commonStrings)#uPDATE, e))
        end)
        end [@@warning "-7"]
    

    method toString () : string =
        begin
        (java_string_of (Obj.repr ((((new StringMaker.stringMaker ())#append ((super#toString ())))#append (nAME_LABEL))#append (name))))
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        nAME_LABEL <- " GameInputProcessorInterface: ";
        ();
        (* super(...) is the inherit clause *) ();
        name <- name_arg;
        gameInputProcessorInterface <- gameInputProcessorInterface_arg
      end
  end
let () = java_register_constructor "GameInputProcessorComposite" (fun arguments -> Obj.repr (new gameInputProcessorComposite (Obj.obj arguments)))


