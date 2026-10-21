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
(* package org.allbinary.media.image.comparison *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)

class imageComparisonResultsEvent ((anyType : Obj.t), (imageComparisonInfo : ImageComparisonResult.imageComparisonResult)) =
  object (self)
    inherit AllBinaryEventObject.allBinaryEventObject (anyType)
    val mutable imageComparisonResult : ImageComparisonResult.imageComparisonResult = (Obj.magic 0)
    method imageComparisonResult = imageComparisonResult
    method set_imageComparisonResult value' = imageComparisonResult <- value'
    
    

    method getImageComparisonResult () : ImageComparisonResult.imageComparisonResult =
        begin
        (imageComparisonResult :> ImageComparisonResult.imageComparisonResult)
        end [@@warning "-7"]
    

    method setImageComparisonResult : 'any1. 'any1 -> unit = fun (imageComparisonResult_arg) ->
        let imageComparisonResult_arg = Obj.repr imageComparisonResult_arg in
        begin
        imageComparisonResult <- (Obj.magic imageComparisonResult_arg)
        end [@@warning "-7-20"]

    initializer
      begin
        imageComparisonResult <- ((Obj.magic 0) :> ImageComparisonResult.imageComparisonResult);
        ();
        (* super(...) is the inherit clause *) ();
        (self#setImageComparisonResult (imageComparisonInfo))
      end
  end
let () = java_register_constructor "ImageComparisonResultsEvent" (fun arguments -> Obj.repr (new imageComparisonResultsEvent (Obj.obj arguments)))


