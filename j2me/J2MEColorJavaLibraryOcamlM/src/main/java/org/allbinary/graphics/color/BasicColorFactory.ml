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
[@@@warning "-20"]
(* import jsinterop.annotations.JsType *)
(* import org.allbinary.logic.string.StringUtil *)
(* import jsinterop.annotations.JsMethod *)
(* import jsinterop.annotations.JsProperty *)

class basicColorFactory () =
  object (self)
    val mutable nULL_COLOR : BasicColor.basicColor = (Obj.magic 0)
    method nULL_COLOR = nULL_COLOR
    method set_nULL_COLOR value' = nULL_COLOR <- value'
    val mutable tAN : BasicColor.basicColor = (Obj.magic 0)
    method tAN = tAN
    method set_tAN value' = tAN <- value'
    val mutable sKIN_PINK : BasicColor.basicColor = (Obj.magic 0)
    method sKIN_PINK = sKIN_PINK
    method set_sKIN_PINK value' = sKIN_PINK <- value'
    val mutable rED : BasicColor.basicColor = (Obj.magic 0)
    method rED = rED
    method set_rED value' = rED <- value'
    val mutable lIGHT_RED : BasicColor.basicColor = (Obj.magic 0)
    method lIGHT_RED = lIGHT_RED
    method set_lIGHT_RED value' = lIGHT_RED <- value'
    val mutable dARK_GREEN : BasicColor.basicColor = (Obj.magic 0)
    method dARK_GREEN = dARK_GREEN
    method set_dARK_GREEN value' = dARK_GREEN <- value'
    val mutable gREEN : BasicColor.basicColor = (Obj.magic 0)
    method gREEN = gREEN
    method set_gREEN value' = gREEN <- value'
    val mutable lIGHT_GREEN : BasicColor.basicColor = (Obj.magic 0)
    method lIGHT_GREEN = lIGHT_GREEN
    method set_lIGHT_GREEN value' = lIGHT_GREEN <- value'
    val mutable pURPLE : BasicColor.basicColor = (Obj.magic 0)
    method pURPLE = pURPLE
    method set_pURPLE value' = pURPLE <- value'
    val mutable bLUE : BasicColor.basicColor = (Obj.magic 0)
    method bLUE = bLUE
    method set_bLUE value' = bLUE <- value'
    val mutable lIGHT_BLUE : BasicColor.basicColor = (Obj.magic 0)
    method lIGHT_BLUE = lIGHT_BLUE
    method set_lIGHT_BLUE value' = lIGHT_BLUE <- value'
    val mutable vERY_LIGHT_BLUE : BasicColor.basicColor = (Obj.magic 0)
    method vERY_LIGHT_BLUE = vERY_LIGHT_BLUE
    method set_vERY_LIGHT_BLUE value' = vERY_LIGHT_BLUE <- value'
    val mutable pUCE : BasicColor.basicColor = (Obj.magic 0)
    method pUCE = pUCE
    method set_pUCE value' = pUCE <- value'
    val mutable aQUA : BasicColor.basicColor = (Obj.magic 0)
    method aQUA = aQUA
    method set_aQUA value' = aQUA <- value'
    val mutable yELLOW : BasicColor.basicColor = (Obj.magic 0)
    method yELLOW = yELLOW
    method set_yELLOW value' = yELLOW <- value'
    val mutable pINK : BasicColor.basicColor = (Obj.magic 0)
    method pINK = pINK
    method set_pINK value' = pINK <- value'
    val mutable bLACK : BasicColor.basicColor = (Obj.magic 0)
    method bLACK = bLACK
    method set_bLACK value' = bLACK <- value'
    val mutable gREY : BasicColor.basicColor = (Obj.magic 0)
    method gREY = gREY
    method set_gREY value' = gREY <- value'
    val mutable lIGHT_GREY : BasicColor.basicColor = (Obj.magic 0)
    method lIGHT_GREY = lIGHT_GREY
    method set_lIGHT_GREY value' = lIGHT_GREY <- value'
    val mutable dARK_GREY : BasicColor.basicColor = (Obj.magic 0)
    method dARK_GREY = dARK_GREY
    method set_dARK_GREY value' = dARK_GREY <- value'
    val mutable oRANGE : BasicColor.basicColor = (Obj.magic 0)
    method oRANGE = oRANGE
    method set_oRANGE value' = oRANGE <- value'
    val mutable bROWN : BasicColor.basicColor = (Obj.magic 0)
    method bROWN = bROWN
    method set_bROWN value' = bROWN <- value'
    val mutable wHITE : BasicColor.basicColor = (Obj.magic 0)
    method wHITE = wHITE
    method set_wHITE value' = wHITE <- value'
    val mutable tRANSPARENT_COLOR : BasicColor.basicColor = (Obj.magic 0)
    method tRANSPARENT_COLOR = tRANSPARENT_COLOR
    method set_tRANSPARENT_COLOR value' = tRANSPARENT_COLOR <- value'
    val mutable tRANSPARENT_GREY : BasicColor.basicColor = (Obj.magic 0)
    method tRANSPARENT_GREY = tRANSPARENT_GREY
    method set_tRANSPARENT_GREY value' = tRANSPARENT_GREY <- value'
    val mutable tRANSPARENT_BLACK : BasicColor.basicColor = (Obj.magic 0)
    method tRANSPARENT_BLACK = tRANSPARENT_BLACK
    method set_tRANSPARENT_BLACK value' = tRANSPARENT_BLACK <- value'
    val mutable tRANSPARENT_RED : BasicColor.basicColor = (Obj.magic 0)
    method tRANSPARENT_RED = tRANSPARENT_RED
    method set_tRANSPARENT_RED value' = tRANSPARENT_RED <- value'
    val mutable cLEAR_COLOR : BasicColor.basicColor = (Obj.magic 0)
    method cLEAR_COLOR = cLEAR_COLOR
    method set_cLEAR_COLOR value' = cLEAR_COLOR <- value'
    val mutable bORDER_COLOR : BasicColor.basicColor = (Obj.magic 0)
    method bORDER_COLOR = bORDER_COLOR
    method set_bORDER_COLOR value' = bORDER_COLOR <- value'
    

    method createInstance ((value : int)) : BasicColor.basicColor =
        begin
        ((new BasicColor.basicColor ((BasicColorUtil.getInstance ())#aLPHA, value, (StringUtil.getInstance ())#eMPTY_STRING)) :> BasicColor.basicColor)
        end
    

    method createInstanceA ((alphaValue : int), (value : int)) : BasicColor.basicColor =
        begin
        ((new BasicColor.basicColor (alphaValue, value, (StringUtil.getInstance ())#eMPTY_STRING)) :> BasicColor.basicColor)
        end
    

    method createInstanceAN ((alphaValue : int), (value : int), (name : string)) : BasicColor.basicColor =
        begin
        ((new BasicColor.basicColor (alphaValue, value, name)) :> BasicColor.basicColor)
        end
    

    method createInstanceARGB ((alphaValue : int), (r : int), (g : int), (b : int), (_name : string)) : BasicColor.basicColor =
        begin
        let aLPHA_MASK : int ref = ref (0xFF000000) in ();
        ((new BasicColor.basicColor (alphaValue, (((((((alphaValue lsl 24)) land !aLPHA_MASK)) + ((((r lsl 16)) land 0x00FF0000))) + ((((g lsl 8)) land 0x0000FF00))) + ((b land 0x000000FF))), (StringUtil.getInstance ())#eMPTY_STRING)) :> BasicColor.basicColor)
        end

    initializer
      begin
        nULL_COLOR <- ((self#createInstanceARGB (255, 255, 255, 255, "null color")) :> BasicColor.basicColor);
        tAN <- ((self#createInstance (0xE9D8B5)) :> BasicColor.basicColor);
        sKIN_PINK <- ((self#createInstance (0xFDCECE)) :> BasicColor.basicColor);
        rED <- ((self#createInstanceAN ((BasicColorUtil.getInstance ())#aLPHA, 0xFF0000, "red")) :> BasicColor.basicColor);
        lIGHT_RED <- ((self#createInstanceAN ((BasicColorUtil.getInstance ())#aLPHA, 0xFFA0A0, "light red")) :> BasicColor.basicColor);
        dARK_GREEN <- ((self#createInstance (0x00FF00)) :> BasicColor.basicColor);
        gREEN <- ((self#createInstanceAN ((BasicColorUtil.getInstance ())#aLPHA, 0x00DD00, "green")) :> BasicColor.basicColor);
        lIGHT_GREEN <- ((self#createInstance (0x007700)) :> BasicColor.basicColor);
        pURPLE <- ((self#createInstanceAN ((BasicColorUtil.getInstance ())#aLPHA, 0x400040, "purple")) :> BasicColor.basicColor);
        bLUE <- ((self#createInstanceAN ((BasicColorUtil.getInstance ())#aLPHA, 0x0000FF, "blue")) :> BasicColor.basicColor);
        lIGHT_BLUE <- ((self#createInstance (0x00aaff)) :> BasicColor.basicColor);
        vERY_LIGHT_BLUE <- ((self#createInstance (0x000033)) :> BasicColor.basicColor);
        pUCE <- ((self#createInstance (0xFF00AA)) :> BasicColor.basicColor);
        aQUA <- ((self#createInstance (0x00FFFF)) :> BasicColor.basicColor);
        yELLOW <- ((self#createInstanceAN ((BasicColorUtil.getInstance ())#aLPHA, 0xFFFF00, "yellow")) :> BasicColor.basicColor);
        pINK <- ((self#createInstance (0xFF00FF)) :> BasicColor.basicColor);
        bLACK <- ((self#createInstanceAN ((BasicColorUtil.getInstance ())#aLPHA, 0x000000, "black")) :> BasicColor.basicColor);
        gREY <- ((self#createInstanceAN ((BasicColorUtil.getInstance ())#aLPHA, 0xAAAAAA, "grey")) :> BasicColor.basicColor);
        lIGHT_GREY <- ((self#createInstance (0xC0C0C0)) :> BasicColor.basicColor);
        dARK_GREY <- ((self#createInstance (0x404040)) :> BasicColor.basicColor);
        oRANGE <- ((self#createInstance (0xe07718)) :> BasicColor.basicColor);
        bROWN <- ((self#createInstance (0x956B00)) :> BasicColor.basicColor);
        wHITE <- ((self#createInstance (0xFFFFFF)) :> BasicColor.basicColor);
        tRANSPARENT_COLOR <- ((self#createInstanceAN (0x00000000, 0x000000, (StringUtil.getInstance ())#eMPTY_STRING)) :> BasicColor.basicColor);
        tRANSPARENT_GREY <- ((self#createInstanceAN (0x52000000, 0xECECEC, (StringUtil.getInstance ())#eMPTY_STRING)) :> BasicColor.basicColor);
        tRANSPARENT_BLACK <- ((self#createInstanceAN (0x52000000, 0x000000, (StringUtil.getInstance ())#eMPTY_STRING)) :> BasicColor.basicColor);
        tRANSPARENT_RED <- ((self#createInstanceAN (0x52000000, 0xFF0000, (StringUtil.getInstance ())#eMPTY_STRING)) :> BasicColor.basicColor);
        cLEAR_COLOR <- (bLACK :> BasicColor.basicColor);
        bORDER_COLOR <- (wHITE :> BasicColor.basicColor);
        ()
      end
  end
let () = java_register_constructor "BasicColorFactory" (fun arguments -> Obj.repr (new basicColorFactory (Obj.obj arguments)))

let instance = (new basicColorFactory ())
let get_instance () = instance
let () = java_register_static "BasicColorFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "BasicColorFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


