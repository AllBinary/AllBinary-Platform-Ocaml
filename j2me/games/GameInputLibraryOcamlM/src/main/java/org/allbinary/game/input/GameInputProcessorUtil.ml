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


let init ((inputProcessorArray : GameInputProcessor.gameInputProcessor array)) : unit =
        begin
        let noInputProcessor : GameInputProcessor.gameInputProcessor ref = ref (((GameInputProcessor.getInstance ()) :> GameInputProcessor.gameInputProcessor)) in ();
        let total : int ref = ref ((InputFactory.getInstance ())#mAX) in ();
        for index = 0 to !total - 1 do
            let inputProcessorCanBeNull : GameInputProcessor.gameInputProcessor ref = ref ((inputProcessorArray.(index) :> GameInputProcessor.gameInputProcessor)) in ();
            if (!inputProcessorCanBeNull == (Obj.magic 0)) then begin
                inputProcessorArray.(index) <- (!noInputProcessor :> GameInputProcessor.gameInputProcessor)
            end
        done
        end

let () = java_register_static "GameInputProcessorUtil.init" (fun arguments -> Obj.repr (init (Obj.obj arguments)))
class gameInputProcessorUtil () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "GameInputProcessorUtil" (fun arguments -> Obj.repr (new gameInputProcessorUtil (Obj.obj arguments)))


