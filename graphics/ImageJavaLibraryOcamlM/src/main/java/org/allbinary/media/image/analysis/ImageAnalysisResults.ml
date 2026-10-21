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

class imageAnalysisResults () =
  object
    val mutable imageColorRangeResults : ImageColorRangeResults.imageColorRangeResults = (Obj.magic 0)
    method imageColorRangeResults = imageColorRangeResults
    method set_imageColorRangeResults value' = imageColorRangeResults <- value'
    val mutable imageColorResults : ImageColorResults.imageColorResults = (Obj.magic 0)
    method imageColorResults = imageColorResults
    method set_imageColorResults value' = imageColorResults <- value'
    val mutable averageAmbientLevel : float = 0.0
    method averageAmbientLevel = averageAmbientLevel
    method set_averageAmbientLevel value' = averageAmbientLevel <- value'
    
    

    method getImageColorRangeResults () : ImageColorRangeResults.imageColorRangeResults =
        begin
        (imageColorRangeResults :> ImageColorRangeResults.imageColorRangeResults)
        end
    

    method setImageColorRangeResults : 'any1. 'any1 -> unit = fun (imageColorRangeResults_arg) ->
        let imageColorRangeResults_arg = Obj.repr imageColorRangeResults_arg in
        begin
        imageColorRangeResults <- (Obj.magic imageColorRangeResults_arg)
        end [@@warning "-20"]
    

    method getAverageAmbientLevel () : float =
        begin
        averageAmbientLevel
        end
    

    method setAverageAmbientLevel ((averageAmbientLevel_arg : float)) : unit =
        begin
        averageAmbientLevel <- averageAmbientLevel_arg
        end
    

    method getImageColorResults () : ImageColorResults.imageColorResults =
        begin
        (imageColorResults :> ImageColorResults.imageColorResults)
        end
    

    method setImageColorResults : 'any1. 'any1 -> unit = fun (imageColorResults_arg) ->
        let imageColorResults_arg = Obj.repr imageColorResults_arg in
        begin
        imageColorResults <- (Obj.magic imageColorResults_arg)
        end [@@warning "-20"]

    initializer
      begin
        ();
        ();
        averageAmbientLevel <- 0.0;
        ();
        imageColorRangeResults <- (new ImageColorRangeResults.imageColorRangeResults ());
        imageColorResults <- (new ImageColorResults.imageColorResults ())
      end
  end
let () = java_register_constructor "ImageAnalysisResults" (fun arguments -> Obj.repr (new imageAnalysisResults (Obj.obj arguments)))


