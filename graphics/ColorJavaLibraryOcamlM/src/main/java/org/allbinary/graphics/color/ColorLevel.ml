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
(* package org.allbinary.graphics.color *)

open Allbinary_java [@@warning "-33"]

let cOLOR_MASK : int = 0x00FFFFFF
let get_cOLOR_MASK () = cOLOR_MASK
let () = java_register_static "ColorLevel.get_cOLOR_MASK" (fun _ -> Obj.repr (get_cOLOR_MASK ()))
let mIN : int = 0x44
let get_mIN () = mIN
let () = java_register_static "ColorLevel.get_mIN" (fun _ -> Obj.repr (get_mIN ()))
let aVG : int = 0x77
let get_aVG () = aVG
let () = java_register_static "ColorLevel.get_aVG" (fun _ -> Obj.repr (get_aVG ()))
let lIGHT : int = 0xAA
let get_lIGHT () = lIGHT
let () = java_register_static "ColorLevel.get_lIGHT" (fun _ -> Obj.repr (get_lIGHT ()))
let hIGH : int = 0xEE
let get_hIGH () = hIGH
let () = java_register_static "ColorLevel.get_hIGH" (fun _ -> Obj.repr (get_hIGH ()))
class colorLevel () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "ColorLevel" (fun arguments -> Obj.repr (new colorLevel (Obj.obj arguments)))


