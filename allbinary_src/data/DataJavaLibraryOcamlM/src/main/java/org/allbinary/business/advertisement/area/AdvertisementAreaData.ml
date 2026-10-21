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
(* package org.allbinary.business.advertisement.area *)

open Allbinary_java [@@warning "-33"]

class advertisementAreaData () =
  object
    val mutable nAME : string = ""
    method nAME = nAME
    method set_nAME value' = nAME <- value'
    val mutable dESCRIPTION : string = ""
    method dESCRIPTION = dESCRIPTION
    method set_dESCRIPTION value' = dESCRIPTION <- value'
    val mutable cONSTRAINTS : string = ""
    method cONSTRAINTS = cONSTRAINTS
    method set_cONSTRAINTS value' = cONSTRAINTS <- value'
    

    initializer
      begin
        nAME <- "ADVERTISEMENT_NAME";
        dESCRIPTION <- "ADVERTISEMENT_DESCRIPTION";
        cONSTRAINTS <- "ADVERTISEMENT_CONSTRAINTS";
        ();
        ()
      end
  end
let () = java_register_constructor "AdvertisementAreaData" (fun arguments -> Obj.repr (new advertisementAreaData (Obj.obj arguments)))

let instance = (new advertisementAreaData ())
let get_instance () = instance
let () = java_register_static "AdvertisementAreaData.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "AdvertisementAreaData.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


