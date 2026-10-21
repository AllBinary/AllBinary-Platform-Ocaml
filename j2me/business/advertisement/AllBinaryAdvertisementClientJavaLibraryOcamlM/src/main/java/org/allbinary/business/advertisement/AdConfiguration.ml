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
(* package org.allbinary.business.advertisement *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.direction.Direction *)
(* import org.allbinary.game.state.GameState *)

class adConfiguration ((advertIdArray : Obj.t array)) =
  object
    val mutable iNNERACTIVE : string = ""
    method iNNERACTIVE = iNNERACTIVE
    method set_iNNERACTIVE value' = iNNERACTIVE <- value'
    val mutable lEADBOLT : string = ""
    method lEADBOLT = lEADBOLT
    method set_lEADBOLT value' = lEADBOLT <- value'
    val mutable aDMOB : string = ""
    method aDMOB = aDMOB
    method set_aDMOB value' = aDMOB <- value'
    
    

    method getValidAdSpots () : Direction.direction array =
        begin
        (Array.make (0) (Obj.magic 0))
        end
    

    method process : 'any1. 'any1 -> unit = fun (_gameState) ->
        begin
        ()
        end [@@warning "-20"]
    

    method processDemo ((_state : int)) : unit =
        begin
        ()
        end
    

    method setShowAds () : unit =
        begin
        ()
        end
    

    method setToggleAds ((_showAds : bool)) : unit =
        begin
        ()
        end
    

    method isShowAds () : bool =
        begin
        true
        end

    initializer
      begin
        ();
        ();
        ();
        ();
        iNNERACTIVE <- (Obj.magic advertIdArray.(0));
        aDMOB <- (Obj.magic advertIdArray.(1));
        lEADBOLT <- (Obj.magic advertIdArray.(2))
      end
  end
let () = java_register_constructor "AdConfiguration" (fun arguments -> Obj.repr (new adConfiguration (Obj.obj arguments)))


