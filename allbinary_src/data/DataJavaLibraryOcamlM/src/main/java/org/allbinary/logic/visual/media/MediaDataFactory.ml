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
(* package org.allbinary.logic.visual.media *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

let instance_cell : Obj.t Lazy.t ref = ref (Lazy.from_val java_null)
let get_instance : 'r. unit -> 'r = fun () -> Obj.magic (try Lazy.force !instance_cell with Lazy.Undefined -> java_null)
let set_instance value' = instance_cell := Lazy.from_val (Obj.repr value')
let () = java_register_static "MediaDataFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))
let () = java_register_static "MediaDataFactory.set_instance" (fun value' -> set_instance value'; Obj.repr ())
class mediaDataFactory () =
  object
    val mutable aVI : Obj.t = Obj.repr 0
    method aVI : 'r. 'r = Obj.magic aVI
    method set_aVI : 'v. 'v -> unit = fun value' -> aVI <- Obj.repr value'
    val mutable bMP : Obj.t = Obj.repr 0
    method bMP : 'r. 'r = Obj.magic bMP
    method set_bMP : 'v. 'v -> unit = fun value' -> bMP <- Obj.repr value'
    val mutable cEL : Obj.t = Obj.repr 0
    method cEL : 'r. 'r = Obj.magic cEL
    method set_cEL : 'v. 'v -> unit = fun value' -> cEL <- Obj.repr value'
    val mutable fITS : Obj.t = Obj.repr 0
    method fITS : 'r. 'r = Obj.magic fITS
    method set_fITS : 'v. 'v -> unit = fun value' -> fITS <- Obj.repr value'
    val mutable fLI : Obj.t = Obj.repr 0
    method fLI : 'r. 'r = Obj.magic fLI
    method set_fLI : 'v. 'v -> unit = fun value' -> fLI <- Obj.repr value'
    val mutable gBR : Obj.t = Obj.repr 0
    method gBR : 'r. 'r = Obj.magic gBR
    method set_gBR : 'v. 'v -> unit = fun value' -> gBR <- Obj.repr value'
    val mutable gIF : Obj.t = Obj.repr 0
    method gIF : 'r. 'r = Obj.magic gIF
    method set_gIF : 'v. 'v -> unit = fun value' -> gIF <- Obj.repr value'
    val mutable gIH : Obj.t = Obj.repr 0
    method gIH : 'r. 'r = Obj.magic gIH
    method set_gIH : 'v. 'v -> unit = fun value' -> gIH <- Obj.repr value'
    val mutable jPG : Obj.t = Obj.repr 0
    method jPG : 'r. 'r = Obj.magic jPG
    method set_jPG : 'v. 'v -> unit = fun value' -> jPG <- Obj.repr value'
    val mutable pIX : Obj.t = Obj.repr 0
    method pIX : 'r. 'r = Obj.magic pIX
    method set_pIX : 'v. 'v -> unit = fun value' -> pIX <- Obj.repr value'
    val mutable pNG : Obj.t = Obj.repr 0
    method pNG : 'r. 'r = Obj.magic pNG
    method set_pNG : 'v. 'v -> unit = fun value' -> pNG <- Obj.repr value'
    val mutable pNM : Obj.t = Obj.repr 0
    method pNM : 'r. 'r = Obj.magic pNM
    method set_pNM : 'v. 'v -> unit = fun value' -> pNM <- Obj.repr value'
    val mutable pSD : Obj.t = Obj.repr 0
    method pSD : 'r. 'r = Obj.magic pSD
    method set_pSD : 'v. 'v -> unit = fun value' -> pSD <- Obj.repr value'
    val mutable pSP : Obj.t = Obj.repr 0
    method pSP : 'r. 'r = Obj.magic pSP
    method set_pSP : 'v. 'v -> unit = fun value' -> pSP <- Obj.repr value'
    val mutable pS : Obj.t = Obj.repr 0
    method pS : 'r. 'r = Obj.magic pS
    method set_pS : 'v. 'v -> unit = fun value' -> pS <- Obj.repr value'
    val mutable sGI : Obj.t = Obj.repr 0
    method sGI : 'r. 'r = Obj.magic sGI
    method set_sGI : 'v. 'v -> unit = fun value' -> sGI <- Obj.repr value'
    val mutable sWF : Obj.t = Obj.repr 0
    method sWF : 'r. 'r = Obj.magic sWF
    method set_sWF : 'v. 'v -> unit = fun value' -> sWF <- Obj.repr value'
    val mutable tGA : Obj.t = Obj.repr 0
    method tGA : 'r. 'r = Obj.magic tGA
    method set_tGA : 'v. 'v -> unit = fun value' -> tGA <- Obj.repr value'
    val mutable tIFF : Obj.t = Obj.repr 0
    method tIFF : 'r. 'r = Obj.magic tIFF
    method set_tIFF : 'v. 'v -> unit = fun value' -> tIFF <- Obj.repr value'
    val mutable wMF : Obj.t = Obj.repr 0
    method wMF : 'r. 'r = Obj.magic wMF
    method set_wMF : 'v. 'v -> unit = fun value' -> wMF <- Obj.repr value'

    initializer
      begin
        aVI <- (Obj.repr (Obj.obj (java_new "MediaData" (Obj.repr ("avi")))));
        bMP <- (Obj.repr (Obj.obj (java_new "MediaData" (Obj.repr ("bmp")))));
        cEL <- (Obj.repr (Obj.obj (java_new "MediaData" (Obj.repr ("cel")))));
        fITS <- (Obj.repr (Obj.obj (java_new "MediaData" (Obj.repr ("fits")))));
        fLI <- (Obj.repr (Obj.obj (java_new "MediaData" (Obj.repr ("fli")))));
        gBR <- (Obj.repr (Obj.obj (java_new "MediaData" (Obj.repr ("gbr")))));
        gIF <- (Obj.repr (Obj.obj (java_new "MediaData" (Obj.repr ("gif")))));
        gIH <- (Obj.repr (Obj.obj (java_new "MediaData" (Obj.repr ("gih")))));
        jPG <- (Obj.repr (Obj.obj (java_new "MediaData" (Obj.repr ("jpg")))));
        pIX <- (Obj.repr (Obj.obj (java_new "MediaData" (Obj.repr ("pix")))));
        pNG <- (Obj.repr (Obj.obj (java_new "MediaData" (Obj.repr ("png")))));
        pNM <- (Obj.repr (Obj.obj (java_new "MediaData" (Obj.repr ("pnm")))));
        pSD <- (Obj.repr (Obj.obj (java_new "MediaData" (Obj.repr ("psd")))));
        pSP <- (Obj.repr (Obj.obj (java_new "MediaData" (Obj.repr ("psp")))));
        pS <- (Obj.repr (Obj.obj (java_new "MediaData" (Obj.repr ("ps")))));
        sGI <- (Obj.repr (Obj.obj (java_new "MediaData" (Obj.repr ("SGI")))));
        sWF <- (Obj.repr (Obj.obj (java_new "MediaData" (Obj.repr ("swf")))));
        tGA <- (Obj.repr (Obj.obj (java_new "MediaData" (Obj.repr ("tga")))));
        tIFF <- (Obj.repr (Obj.obj (java_new "MediaData" (Obj.repr ("tiff")))));
        wMF <- (Obj.repr (Obj.obj (java_new "MediaData" (Obj.repr ("wmf")))));
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "MediaDataFactory" (fun arguments -> Obj.repr (new mediaDataFactory (Obj.obj arguments)))

let getInstance : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic (get_instance ()))))
        end
let () = java_register_static "MediaDataFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))

let () = instance_cell := lazy (Obj.repr ((new mediaDataFactory ())))


