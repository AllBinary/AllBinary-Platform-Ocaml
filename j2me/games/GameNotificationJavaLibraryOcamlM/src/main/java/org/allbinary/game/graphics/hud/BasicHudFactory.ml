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
(* package org.allbinary.game.graphics.hud *)

open Allbinary_java [@@warning "-33"]

class basicHudFactory () =
  object
    val mutable dIRECTION_EXCEPTION : string = ""
    method dIRECTION_EXCEPTION = dIRECTION_EXCEPTION
    method set_dIRECTION_EXCEPTION value' = dIRECTION_EXCEPTION <- value'
    val mutable vERTICAL : int = 0
    method vERTICAL = vERTICAL
    method set_vERTICAL value' = vERTICAL <- value'
    val mutable hORIZONTAL : int = 0
    method hORIZONTAL = hORIZONTAL
    method set_hORIZONTAL value' = hORIZONTAL <- value'
    val mutable bOTTOMLEFT : int = 0
    method bOTTOMLEFT = bOTTOMLEFT
    method set_bOTTOMLEFT value' = bOTTOMLEFT <- value'
    val mutable bOTTOMRIGHT : int = 0
    method bOTTOMRIGHT = bOTTOMRIGHT
    method set_bOTTOMRIGHT value' = bOTTOMRIGHT <- value'
    val mutable tOPLEFT : int = 0
    method tOPLEFT = tOPLEFT
    method set_tOPLEFT value' = tOPLEFT <- value'
    val mutable tOPRIGHT : int = 0
    method tOPRIGHT = tOPRIGHT
    method set_tOPRIGHT value' = tOPRIGHT <- value'
    val mutable bOTTOMCENTER : int = 0
    method bOTTOMCENTER = bOTTOMCENTER
    method set_bOTTOMCENTER value' = bOTTOMCENTER <- value'
    val mutable tOPCENTER : int = 0
    method tOPCENTER = tOPCENTER
    method set_tOPCENTER value' = tOPCENTER <- value'
    val mutable aBSOLUTE : int = 0
    method aBSOLUTE = aBSOLUTE
    method set_aBSOLUTE value' = aBSOLUTE <- value'
    

    initializer
      begin
        dIRECTION_EXCEPTION <- "Only Horizontal Direction is Allowed Currently";
        vERTICAL <- 0;
        hORIZONTAL <- 1;
        bOTTOMLEFT <- 0;
        bOTTOMRIGHT <- 1;
        tOPLEFT <- 2;
        tOPRIGHT <- 3;
        bOTTOMCENTER <- 4;
        tOPCENTER <- 5;
        aBSOLUTE <- 6;
        ();
        ()
      end
  end
let () = java_register_constructor "BasicHudFactory" (fun arguments -> Obj.repr (new basicHudFactory (Obj.obj arguments)))

let instance = (new basicHudFactory ())
let get_instance () = instance
let () = java_register_static "BasicHudFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "BasicHudFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


