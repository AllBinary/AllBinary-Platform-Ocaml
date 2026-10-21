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

class imageColorResults () =
  object (self)
    val mutable colorRange : ColorRange.colorRange = (Obj.magic 0)
    method colorRange = colorRange
    method set_colorRange value' = colorRange <- value'
    val mutable colorAverage : ColorAverage.colorAverage = (Obj.magic 0)
    method colorAverage = colorAverage
    method set_colorAverage value' = colorAverage <- value'
    
    

    method getColorRange () : ColorRange.colorRange =
        begin
        (colorRange :> ColorRange.colorRange)
        end
    

    method setColorRange : 'any1. 'any1 -> unit = fun (colorRange_arg) ->
        let colorRange_arg = Obj.repr colorRange_arg in
        begin
        colorRange <- (Obj.magic colorRange_arg)
        end [@@warning "-20"]
    

    method getColorAverage () : ColorAverage.colorAverage =
        begin
        (colorAverage :> ColorAverage.colorAverage)
        end
    

    method setColorAverage : 'any1. 'any1 -> unit = fun (colorAverage_arg) ->
        let colorAverage_arg = Obj.repr colorAverage_arg in
        begin
        colorAverage <- (Obj.magic colorAverage_arg)
        end [@@warning "-20"]

    initializer
      begin
        colorRange <- ((Obj.magic 0) :> ColorRange.colorRange);
        colorAverage <- ((Obj.magic 0) :> ColorAverage.colorAverage);
        ();
        (self#setColorRange ((new ColorRange.colorRange ())));
        ignore ((self#getColorRange ())#setMaxRed ((-1)));
        ignore ((self#getColorRange ())#setMaxGreen ((-1)));
        ignore ((self#getColorRange ())#setMaxBlue ((-1)));
        ignore ((self#getColorRange ())#setMinRed (256));
        ignore ((self#getColorRange ())#setMinGreen (256));
        ignore ((self#getColorRange ())#setMinBlue (256));
        (self#setColorAverage ((new ColorAverage.colorAverage ())))
      end
  end
let () = java_register_constructor "ImageColorResults" (fun arguments -> Obj.repr (new imageColorResults (Obj.obj arguments)))


