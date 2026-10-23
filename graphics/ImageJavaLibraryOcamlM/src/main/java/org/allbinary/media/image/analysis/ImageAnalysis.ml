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
(* package org.allbinary.media.image.analysis *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.awt *)
(* import java.awt.image.BufferedImage *)
(* import org.allbinary.graphics.color.ColorCacheFactory *)
(* import org.allbinary.graphics.color.ColorCacheable *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonLabels *)
(* import org.allbinary.string.CommonStrings *)


let processColorRangeResults : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 -> unit = fun (imageAnalysisResults, colorRangeInterface, color) ->
        let imageAnalysisResults = Obj.repr imageAnalysisResults in
        let colorRangeInterface = Obj.repr colorRangeInterface in
        let color = Obj.repr color in
        begin
        if ((Obj.magic colorRangeInterface)#isInRange ((Obj.magic color))) then begin
            ignore (((Obj.magic imageAnalysisResults)#getImageColorRangeResults ())#addMatchingPixelsChecked ())
        end else begin
            ()
        end;
        ignore (((Obj.magic imageAnalysisResults)#getImageColorRangeResults ())#addTotalPixelsChecked ())
        end [@@warning "-20"]

and processImageColorResults : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 -> unit = fun (imageColorResults, _colorRangeInterface, color) ->
        let imageColorResults = Obj.repr imageColorResults in
        let color = Obj.repr color in
        begin
        if (((Obj.magic color)#getRed ()) < (((Obj.magic imageColorResults)#getColorRange ())#getMinRed ())) then begin
            ignore (((Obj.magic imageColorResults)#getColorRange ())#setMinRed (((Obj.magic color)#getRed ())))
        end;
        if (((Obj.magic color)#getGreen ()) < (((Obj.magic imageColorResults)#getColorRange ())#getMinGreen ())) then begin
            ignore (((Obj.magic imageColorResults)#getColorRange ())#setMinGreen (((Obj.magic color)#getGreen ())))
        end;
        if (((Obj.magic color)#getBlue ()) < (((Obj.magic imageColorResults)#getColorRange ())#getMinBlue ())) then begin
            ignore (((Obj.magic imageColorResults)#getColorRange ())#setMinBlue (((Obj.magic color)#getBlue ())))
        end;
        if (((Obj.magic color)#getRed ()) > (((Obj.magic imageColorResults)#getColorRange ())#getMaxRed ())) then begin
            ignore (((Obj.magic imageColorResults)#getColorRange ())#setMaxRed (((Obj.magic color)#getRed ())))
        end;
        if (((Obj.magic color)#getGreen ()) > (((Obj.magic imageColorResults)#getColorRange ())#getMaxGreen ())) then begin
            ignore (((Obj.magic imageColorResults)#getColorRange ())#setMaxGreen (((Obj.magic color)#getGreen ())))
        end;
        if (((Obj.magic color)#getBlue ()) > (((Obj.magic imageColorResults)#getColorRange ())#getMaxBlue ())) then begin
            ignore (((Obj.magic imageColorResults)#getColorRange ())#setMaxBlue (((Obj.magic color)#getBlue ())))
        end
        end [@@warning "-20"]

let () = java_register_static "ImageAnalysis.processColorRangeResults" (fun arguments -> Obj.repr (processColorRangeResults (Obj.obj arguments)))
let () = java_register_static "ImageAnalysis.processImageColorResults" (fun arguments -> Obj.repr (processImageColorResults (Obj.obj arguments)))
class imageAnalysis () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    

    method process : 'any2 'return. _ * 'any2 -> 'return = fun (bufferedImageArray, colorRangeInterface) ->
        let colorRangeInterface = Obj.repr colorRangeInterface in
        begin
        let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr ((CommonLabels.getInstance ())#sTART)) ^ (java_string_of (Obj.repr (Obj.magic colorRangeInterface)))), self, !commonStrings#pROCESS));
        let imageAnalysisResultsArray : Obj.t ref = ref ((Obj.repr (Array.make ((Array.length bufferedImageArray)) (Obj.magic 0)))) in ();
        for index = 0 to (Array.length bufferedImageArray) - 1 do
            (Obj.magic !imageAnalysisResultsArray).(index) <- (Obj.magic (java_call_static "ImageAnalysis.process" (Obj.repr (bufferedImageArray.(index), (Obj.magic colorRangeInterface)))))
        done;
        (Obj.magic ((Obj.magic !imageAnalysisResultsArray)))
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "ImageAnalysis" (fun arguments -> Obj.repr (new imageAnalysis (Obj.obj arguments)))

let instance = (new imageAnalysis ())
let get_instance () = instance
let () = java_register_static "ImageAnalysis.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end

(* Java overload process(BufferedImage, ColorRangeInterface) is not converted: OCaml has one method per name *)
let () = java_register_static "ImageAnalysis.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


