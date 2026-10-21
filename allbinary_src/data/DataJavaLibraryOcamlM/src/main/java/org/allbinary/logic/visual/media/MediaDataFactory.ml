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

class mediaDataFactory () =
  object
    val mutable aVI : MediaData.mediaData = (Obj.magic 0)
    method aVI = aVI
    method set_aVI value' = aVI <- value'
    val mutable bMP : MediaData.mediaData = (Obj.magic 0)
    method bMP = bMP
    method set_bMP value' = bMP <- value'
    val mutable cEL : MediaData.mediaData = (Obj.magic 0)
    method cEL = cEL
    method set_cEL value' = cEL <- value'
    val mutable fITS : MediaData.mediaData = (Obj.magic 0)
    method fITS = fITS
    method set_fITS value' = fITS <- value'
    val mutable fLI : MediaData.mediaData = (Obj.magic 0)
    method fLI = fLI
    method set_fLI value' = fLI <- value'
    val mutable gBR : MediaData.mediaData = (Obj.magic 0)
    method gBR = gBR
    method set_gBR value' = gBR <- value'
    val mutable gIF : MediaData.mediaData = (Obj.magic 0)
    method gIF = gIF
    method set_gIF value' = gIF <- value'
    val mutable gIH : MediaData.mediaData = (Obj.magic 0)
    method gIH = gIH
    method set_gIH value' = gIH <- value'
    val mutable jPG : MediaData.mediaData = (Obj.magic 0)
    method jPG = jPG
    method set_jPG value' = jPG <- value'
    val mutable pIX : MediaData.mediaData = (Obj.magic 0)
    method pIX = pIX
    method set_pIX value' = pIX <- value'
    val mutable pNG : MediaData.mediaData = (Obj.magic 0)
    method pNG = pNG
    method set_pNG value' = pNG <- value'
    val mutable pNM : MediaData.mediaData = (Obj.magic 0)
    method pNM = pNM
    method set_pNM value' = pNM <- value'
    val mutable pSD : MediaData.mediaData = (Obj.magic 0)
    method pSD = pSD
    method set_pSD value' = pSD <- value'
    val mutable pSP : MediaData.mediaData = (Obj.magic 0)
    method pSP = pSP
    method set_pSP value' = pSP <- value'
    val mutable pS : MediaData.mediaData = (Obj.magic 0)
    method pS = pS
    method set_pS value' = pS <- value'
    val mutable sGI : MediaData.mediaData = (Obj.magic 0)
    method sGI = sGI
    method set_sGI value' = sGI <- value'
    val mutable sWF : MediaData.mediaData = (Obj.magic 0)
    method sWF = sWF
    method set_sWF value' = sWF <- value'
    val mutable tGA : MediaData.mediaData = (Obj.magic 0)
    method tGA = tGA
    method set_tGA value' = tGA <- value'
    val mutable tIFF : MediaData.mediaData = (Obj.magic 0)
    method tIFF = tIFF
    method set_tIFF value' = tIFF <- value'
    val mutable wMF : MediaData.mediaData = (Obj.magic 0)
    method wMF = wMF
    method set_wMF value' = wMF <- value'

    initializer
      begin
        aVI <- ((new MediaData.mediaData ("avi")) :> MediaData.mediaData);
        bMP <- ((new MediaData.mediaData ("bmp")) :> MediaData.mediaData);
        cEL <- ((new MediaData.mediaData ("cel")) :> MediaData.mediaData);
        fITS <- ((new MediaData.mediaData ("fits")) :> MediaData.mediaData);
        fLI <- ((new MediaData.mediaData ("fli")) :> MediaData.mediaData);
        gBR <- ((new MediaData.mediaData ("gbr")) :> MediaData.mediaData);
        gIF <- ((new MediaData.mediaData ("gif")) :> MediaData.mediaData);
        gIH <- ((new MediaData.mediaData ("gih")) :> MediaData.mediaData);
        jPG <- ((new MediaData.mediaData ("jpg")) :> MediaData.mediaData);
        pIX <- ((new MediaData.mediaData ("pix")) :> MediaData.mediaData);
        pNG <- ((new MediaData.mediaData ("png")) :> MediaData.mediaData);
        pNM <- ((new MediaData.mediaData ("pnm")) :> MediaData.mediaData);
        pSD <- ((new MediaData.mediaData ("psd")) :> MediaData.mediaData);
        pSP <- ((new MediaData.mediaData ("psp")) :> MediaData.mediaData);
        pS <- ((new MediaData.mediaData ("ps")) :> MediaData.mediaData);
        sGI <- ((new MediaData.mediaData ("SGI")) :> MediaData.mediaData);
        sWF <- ((new MediaData.mediaData ("swf")) :> MediaData.mediaData);
        tGA <- ((new MediaData.mediaData ("tga")) :> MediaData.mediaData);
        tIFF <- ((new MediaData.mediaData ("tiff")) :> MediaData.mediaData);
        wMF <- ((new MediaData.mediaData ("wmf")) :> MediaData.mediaData);
        ()
      end
  end
let () = java_register_constructor "MediaDataFactory" (fun arguments -> Obj.repr (new mediaDataFactory (Obj.obj arguments)))

let instance = (new mediaDataFactory ())
let get_instance () = instance
let () = java_register_static "MediaDataFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "MediaDataFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


