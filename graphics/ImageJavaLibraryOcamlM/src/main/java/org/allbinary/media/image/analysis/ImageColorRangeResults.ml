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

class imageColorRangeResults () =
  object (self)
    val mutable colorRangeInterface : ColorRangeInterface.colorRangeInterface = (Obj.magic 0)
    method colorRangeInterface = colorRangeInterface
    method set_colorRangeInterface value' = colorRangeInterface <- value'
    val mutable matchingPixelsChecked : int = 0
    method matchingPixelsChecked = matchingPixelsChecked
    method set_matchingPixelsChecked value' = matchingPixelsChecked <- value'
    val mutable totalPixelsChecked : int = 0
    method totalPixelsChecked = totalPixelsChecked
    method set_totalPixelsChecked value' = totalPixelsChecked <- value'
    
    

    method getColorRangeInterface () : ColorRangeInterface.colorRangeInterface =
        begin
        (colorRangeInterface :> ColorRangeInterface.colorRangeInterface)
        end
    

    method setColorRangeInterface : 'any1. 'any1 -> unit = fun (colorRangeInterface_arg) ->
        let colorRangeInterface_arg = Obj.repr colorRangeInterface_arg in
        begin
        colorRangeInterface <- (Obj.magic colorRangeInterface_arg)
        end [@@warning "-20"]
    

    method getMatchingPixelsChecked () : int =
        begin
        matchingPixelsChecked
        end
    

    method setMatchingPixelsChecked ((matchingPixelsChecked_arg : int)) : unit =
        begin
        matchingPixelsChecked <- matchingPixelsChecked_arg
        end
    

    method addMatchingPixelsChecked () : unit =
        begin
        matchingPixelsChecked <- matchingPixelsChecked + 1
        end
    

    method getTotalPixelsChecked () : int =
        begin
        totalPixelsChecked
        end
    

    method addTotalPixelsChecked () : unit =
        begin
        totalPixelsChecked <- totalPixelsChecked + 1
        end
    

    method setTotalPixelsChecked ((totalPixelsChecked_arg : int)) : unit =
        begin
        totalPixelsChecked <- totalPixelsChecked_arg
        end
    

    method getPercent () : float =
        begin
        (((float_of_int ((self#getMatchingPixelsChecked ()))) /. (float_of_int ((self#getTotalPixelsChecked ())))))
        end

    initializer
      begin
        colorRangeInterface <- ((Obj.magic 0) :> ColorRangeInterface.colorRangeInterface);
        matchingPixelsChecked <- 0;
        totalPixelsChecked <- 0;
        ();
        (self#setColorRangeInterface ((Obj.magic (new ColorRange.colorRange ()))))
      end
  end
let () = java_register_constructor "ImageColorRangeResults" (fun arguments -> Obj.repr (new imageColorRangeResults (Obj.obj arguments)))


