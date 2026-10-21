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
(* import org.allbinary.ai.ArtificialIntelligence *)
(* import org.allbinary.layer.AllBinaryLayerManager *)

class nullAI () =
  object
    inherit ArtificialIntelligence.artificialIntelligence ()
    
    

    method processAI : 'any1. 'any1 -> unit = fun (_allBinaryLayerManager) ->
        begin
        ()
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "NullAI" (fun arguments -> Obj.repr (new nullAI (Obj.obj arguments)))


