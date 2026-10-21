(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.animation.image *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Image *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.media.image.ImageScaleUtil *)
(* import org.allbinary.string.CommonStrings *)

class scaleProcessor () =
  object (self)
    inherit ScaleBaseProcessor.scaleBaseProcessor ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable imageScaleUtil : Obj.t = Obj.repr 0
    method imageScaleUtil : 'r. 'r = Obj.magic imageScaleUtil
    method set_imageScaleUtil : 'v. 'v -> unit = fun value' -> imageScaleUtil <- Obj.repr value'
    

    method update : 'any1. 'any1 * _ * _ * int * float * float * float * float -> unit = fun (originalImage, originalImageArray, ximageToShowArray, (unused : int), (scaleX : float), (scaleY : float), (maxScaleX : float), (maxScaleY : float)) ->
        let originalImage = Obj.repr originalImage in
        begin
        (try
            ignore ((Obj.magic imageScaleUtil)#scale2 ((Obj.magic originalImage), originalImageArray, ximageToShowArray, unused, scaleX, scaleY, maxScaleX, maxScaleY))
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, commonStrings#uPDATE, e))
        end)
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        imageScaleUtil <- (Obj.repr (Obj.magic (java_call_static "ImageScaleUtil.getInstance" (Obj.repr ()))));
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "ScaleProcessor" (fun arguments -> Obj.repr (new scaleProcessor (Obj.obj arguments)))

let instanceC = (new scaleProcessor ())
let get_instanceC () = instanceC
let () = java_register_static "ScaleProcessor.get_instanceC" (fun _ -> Obj.repr (get_instanceC ()))

let getInstance () : ScaleBaseProcessor.scaleBaseProcessor =
        begin
        (instanceC :> ScaleBaseProcessor.scaleBaseProcessor)
        end
let () = java_register_static "ScaleProcessor.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


