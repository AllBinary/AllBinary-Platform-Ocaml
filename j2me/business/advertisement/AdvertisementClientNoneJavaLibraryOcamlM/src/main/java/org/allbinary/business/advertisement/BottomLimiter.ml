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
(* import org.allbinary.game.GameAdState *)
(* import org.allbinary.graphics.displayable.DisplayInfoSingleton *)

class bottomLimiter () =
  object
    val mutable bottom : int = 0
    method bottom = bottom
    method set_bottom value' = bottom <- value'
    val mutable deltaY : int = 0
    method deltaY = deltaY
    method set_deltaY value' = deltaY <- value'
    val mutable lower : int = 0
    method lower = lower
    method set_lower value' = lower <- value'
    val mutable higher : int = 0
    method higher = higher
    method set_higher value' = higher <- value'
    
    

    method init ((lower_arg : int), (higher_arg : int)) : unit =
        begin
        lower <- lower_arg;
        higher <- higher_arg
        end
    

    method update () : unit =
        begin
        let displayInfo : DisplayInfoSingleton.displayInfoSingleton ref = ref (((DisplayInfoSingleton.getInstance ()) :> DisplayInfoSingleton.displayInfoSingleton)) in ();
        let gameAdState : Obj.t ref = ref ((Obj.repr ((GameAdStateFactory.getInstance ())#getCurrentInstance ()))) in ();
        if ((Obj.magic !gameAdState)#isShowingAt ()) then begin
            deltaY <- higher
        end else begin
            deltaY <- lower
        end;
        bottom <- ((!displayInfo#getLastHeight ()) - deltaY)
        end
    

    method getDeltaY () : int =
        begin
        deltaY
        end
    

    method getBottom () : int =
        begin
        bottom
        end

    initializer
      begin
        bottom <- 0;
        deltaY <- 0;
        lower <- 0;
        higher <- 0;
        ();
        ()
      end
  end
let () = java_register_constructor "BottomLimiter" (fun arguments -> Obj.repr (new bottomLimiter (Obj.obj arguments)))

let instance = (new bottomLimiter ())
let get_instance () = instance
let () = java_register_static "BottomLimiter.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "BottomLimiter.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


