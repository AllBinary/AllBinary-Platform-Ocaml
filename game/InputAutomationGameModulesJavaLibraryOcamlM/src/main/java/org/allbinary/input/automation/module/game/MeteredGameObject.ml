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
(* package org.allbinary.input.automation.module.game *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.awt.image.BufferedImage *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonSeps *)

class meteredGameObject (bufferedImage, (minX_arg : int), (maxX_arg : int), (y_arg : int)) =
  object (self)
    val mutable ratios : float array = (Obj.magic 0)
    method ratios = ratios
    method set_ratios value' = ratios <- value'
    val mutable good : bool = false
    method good = good
    method set_good value' = good <- value'
    val mutable dropping : bool = false
    method dropping = dropping
    method set_dropping value' = dropping <- value'
    val mutable minX : int = (Obj.magic 0)
    method minX = minX
    method set_minX value' = minX <- value'
    val mutable maxX : int = (Obj.magic 0)
    method maxX = maxX
    method set_maxX value' = maxX <- value'
    val mutable y : int = (Obj.magic 0)
    method y = y
    method set_y value' = y <- value'
    val mutable size : int = (Obj.magic 0)
    method size = size
    method set_size value' = size <- value'
    val mutable rATIOS_LABEL : string = ""
    method rATIOS_LABEL = rATIOS_LABEL
    method set_rATIOS_LABEL value' = rATIOS_LABEL <- value'
    val mutable iS_GOOD_LABEL : string = ""
    method iS_GOOD_LABEL = iS_GOOD_LABEL
    method set_iS_GOOD_LABEL value' = iS_GOOD_LABEL <- value'
    val mutable iS_DROPPPING_LABEL : string = ""
    method iS_DROPPPING_LABEL = iS_DROPPPING_LABEL
    method set_iS_DROPPPING_LABEL value' = iS_DROPPPING_LABEL <- value'
    
    

    method isGood () : bool =
        begin
        good
        end
    

    method setGood ((good_arg : bool)) : unit =
        begin
        good <- good_arg
        end
    

    method isDropping () : bool =
        begin
        dropping
        end
    

    method setDropping ((dropping_arg : bool)) : unit =
        begin
        dropping <- dropping_arg
        end
    

    method getRatios () : float array =
        begin
        ratios
        end
    

    method toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let commonSeps : CommonSeps.commonSeps ref = ref (((CommonSeps.getInstance ()) :> CommonSeps.commonSeps)) in ();
        ignore (!stringBuffer#append (!commonSeps#nEW_LINE));
        ignore (!stringBuffer#append (rATIOS_LABEL));
        for index = 0 to (Array.length (self#getRatios ())) - 1 do
            ignore (!stringBuffer#append ((java_string_of (Obj.repr (self#getRatios ()).(index)))));
            if (index < ((Array.length (self#getRatios ())) - 1)) then begin
                ignore (!stringBuffer#append (!commonSeps#cOMMA_SEP))
            end
        done;
        ignore (!stringBuffer#append (!commonSeps#nEW_LINE));
        ignore (!stringBuffer#append (iS_GOOD_LABEL));
        ignore (!stringBuffer#appendboolean ((self#isGood ())));
        ignore (!stringBuffer#append (!commonSeps#nEW_LINE));
        ignore (!stringBuffer#append (iS_DROPPPING_LABEL));
        ignore (!stringBuffer#appendboolean ((self#isDropping ())));
        (java_string_of (Obj.repr !stringBuffer))
        end
    

    method setRatios ((ratios_arg : float array)) : unit =
        begin
        ratios <- ratios_arg
        end
    

    method getMinX () : int =
        begin
        minX
        end
    

    method setMinX ((minX_arg : int)) : unit =
        begin
        minX <- minX_arg
        end
    

    method getMaxX () : int =
        begin
        maxX
        end
    

    method setMaxX ((maxX_arg : int)) : unit =
        begin
        maxX <- maxX_arg
        end
    

    method getY () : int =
        begin
        y
        end
    

    method setY ((y_arg : int)) : unit =
        begin
        y <- y_arg
        end
    

    method getSize () : int =
        begin
        size
        end
    

    method setSize ((size_arg : int)) : unit =
        begin
        size <- size_arg
        end

    initializer
      begin
        ratios <- (Obj.magic 0);
        good <- false;
        dropping <- false;
        minX <- (Obj.magic 0);
        maxX <- (Obj.magic 0);
        y <- (Obj.magic 0);
        size <- (Obj.magic 0);
        rATIOS_LABEL <- "Ratios: ";
        iS_GOOD_LABEL <- "isGood: ";
        iS_DROPPPING_LABEL <- "isDropping: ";
        ();
        (self#setRatios ((Array.make ((Array.length bufferedImage)) (Obj.magic 0))));
        (self#setMinX (minX_arg));
        (self#setMaxX (maxX_arg));
        (self#setY (y_arg));
        (self#setSize ((maxX_arg - minX_arg)));
        for index = 0 to (Array.length bufferedImage) - 1 do
            let nominator : float ref = ref ((GraphicsAnalysisUtil.getNominator (bufferedImage.(index), (self#getMinX ()), (self#getMaxX ()), (self#getY ())))) in ();
            (self#getRatios ()).(index) <- (!nominator /. (self#getSize ()))
        done;
        if (((self#getRatios ()).(((Array.length bufferedImage) - 1))#doubleValue ()) > 0.93) then begin
            (self#setGood (true))
        end else begin
            (self#setGood (false))
        end;
        if (((self#getRatios ()).(((Array.length bufferedImage) - 1))#doubleValue ()) < ((self#getRatios ()).(0)#doubleValue ())) then begin
            (self#setDropping (true))
        end else begin
            (self#setDropping (false))
        end
      end
  end
let () = java_register_constructor "MeteredGameObject" (fun arguments -> Obj.repr (new meteredGameObject (Obj.obj arguments)))


