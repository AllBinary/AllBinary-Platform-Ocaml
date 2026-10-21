(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.media.audio *)

open Allbinary_java [@@warning "-33"]

class soundStrings () =
  object
    val mutable sTOP_ALL : string = ""
    method sTOP_ALL = sTOP_ALL
    method set_sTOP_ALL value' = sTOP_ALL <- value'
    val mutable cLOSE_ALL : string = ""
    method cLOSE_ALL = cLOSE_ALL
    method set_cLOSE_ALL value' = cLOSE_ALL <- value'
    val mutable sOUND : string = ""
    method sOUND = sOUND
    method set_sOUND value' = sOUND <- value'
    val mutable iNIT_SOUND : string = ""
    method iNIT_SOUND = iNIT_SOUND
    method set_iNIT_SOUND value' = iNIT_SOUND <- value'
    val mutable sTOPPING_SOUND : string = ""
    method sTOPPING_SOUND = sTOPPING_SOUND
    method set_sTOPPING_SOUND value' = sTOPPING_SOUND <- value'
    val mutable cLOSING_SOUND : string = ""
    method cLOSING_SOUND = cLOSING_SOUND
    method set_cLOSING_SOUND value' = cLOSING_SOUND <- value'

    initializer
      begin
        sTOP_ALL <- "stopAll";
        cLOSE_ALL <- "closeAll";
        sOUND <- " Sound: ";
        iNIT_SOUND <- "Initializing Sound: ";
        sTOPPING_SOUND <- "Stopping Sound: ";
        cLOSING_SOUND <- "Closing Sound: ";
        ()
      end
  end
let () = java_register_constructor "SoundStrings" (fun arguments -> Obj.repr (new soundStrings (Obj.obj arguments)))

let instance = (new soundStrings ())
let get_instance () = instance
let () = java_register_static "SoundStrings.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "SoundStrings.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


