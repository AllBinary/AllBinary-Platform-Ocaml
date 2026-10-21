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
(* package org.allbinary.graphics.form *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.canvas.Processor *)
(* import org.allbinary.game.input.PlayerGameInputCompositeInterface *)

class inputProcessor ((playerGameInputCompositeInterface_arg : PlayerGameInputCompositeInterface.playerGameInputCompositeInterface)) =
  object
    inherit Processor.processor ()
    val mutable playerGameInputCompositeInterface : PlayerGameInputCompositeInterface.playerGameInputCompositeInterface = (Obj.magic 0)
    method playerGameInputCompositeInterface = playerGameInputCompositeInterface
    method set_playerGameInputCompositeInterface value' = playerGameInputCompositeInterface <- value'
    
    

    method process () : unit =
        begin
        ignore ((playerGameInputCompositeInterface#getPlayerGameInput ())#update ())
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        playerGameInputCompositeInterface <- playerGameInputCompositeInterface_arg
      end
  end
let () = java_register_constructor "InputProcessor" (fun arguments -> Obj.repr (new inputProcessor (Obj.obj arguments)))


