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
(* package org.allbinary.media.image.search *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)

class imageComparisonSearchResultsEvent ((anyType : Obj.t), (imageComparisonSearch_arg : ImageComparisonSearch.imageComparisonSearch)) =
  object (self)
    inherit AllBinaryEventObject.allBinaryEventObject (anyType)
    val mutable imageComparisonSearch : ImageComparisonSearch.imageComparisonSearch = (Obj.magic 0)
    method imageComparisonSearch = imageComparisonSearch
    method set_imageComparisonSearch value' = imageComparisonSearch <- value'
    
    

    method getImageComparisonSearch () : ImageComparisonSearch.imageComparisonSearch =
        begin
        (imageComparisonSearch :> ImageComparisonSearch.imageComparisonSearch)
        end [@@warning "-7"]
    

    method setImageComparisonSearch : 'any1. 'any1 -> unit = fun (imageComparisonSearch_arg) ->
        let imageComparisonSearch_arg = Obj.repr imageComparisonSearch_arg in
        begin
        imageComparisonSearch <- (Obj.magic imageComparisonSearch_arg)
        end [@@warning "-7-20"]

    initializer
      begin
        imageComparisonSearch <- ((Obj.magic 0) :> ImageComparisonSearch.imageComparisonSearch);
        ();
        (* super(...) is the inherit clause *) ();
        (self#setImageComparisonSearch (imageComparisonSearch_arg))
      end
  end
let () = java_register_constructor "ImageComparisonSearchResultsEvent" (fun arguments -> Obj.repr (new imageComparisonSearchResultsEvent (Obj.obj arguments)))


