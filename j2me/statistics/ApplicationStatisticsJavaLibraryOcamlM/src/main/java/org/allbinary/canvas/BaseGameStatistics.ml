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
(* package org.allbinary.canvas *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.math.PrimitiveLongSingleton *)
(* import org.allbinary.logic.math.ScaleFactorFactory *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.time.GameTickTimeDelayHelper *)
(* import org.allbinary.time.GameTickTimeDelayHelperFactory *)
(* import org.allbinary.time.TimeDelayHelper *)

class baseGameStatistics () =
  object (self)
    val mutable timeDelayHelper : TimeDelayHelper.timeDelayHelper = (Obj.magic 0)
    method timeDelayHelper = timeDelayHelper
    method set_timeDelayHelper value' = timeDelayHelper <- value'
    val mutable updateDelayHelper : TimeDelayHelper.timeDelayHelper = (Obj.magic 0)
    method updateDelayHelper = updateDelayHelper
    method set_updateDelayHelper value' = updateDelayHelper <- value'
    val mutable totalRefreshes : int = 0
    method totalRefreshes = totalRefreshes
    method set_totalRefreshes value' = totalRefreshes <- value'
    val mutable totalFrames : int = 0
    method totalFrames = totalFrames
    method set_totalFrames value' = totalFrames <- value'
    val mutable gameTickTimeDelayHelper : GameTickTimeDelayHelper.gameTickTimeDelayHelper = (Obj.magic 0)
    method gameTickTimeDelayHelper = gameTickTimeDelayHelper
    method set_gameTickTimeDelayHelper value' = gameTickTimeDelayHelper <- value'
    val mutable dEFAULT_SCALE_FACTOR : int = 0
    method dEFAULT_SCALE_FACTOR = dEFAULT_SCALE_FACTOR
    method set_dEFAULT_SCALE_FACTOR value' = dEFAULT_SCALE_FACTOR <- value'
    val mutable nOT : string = ""
    method nOT = nOT
    method set_nOT value' = nOT <- value'
    val mutable eMPTY_STRING : string = ""
    method eMPTY_STRING = eMPTY_STRING
    method set_eMPTY_STRING value' = eMPTY_STRING <- value'
    val mutable sTRING_ARRAY : string array = (Obj.magic 0)
    method sTRING_ARRAY = sTRING_ARRAY
    method set_sTRING_ARRAY value' = sTRING_ARRAY <- value'
    val mutable sPACE_CHAR : char = '\000'
    method sPACE_CHAR = sPACE_CHAR
    method set_sPACE_CHAR value' = sPACE_CHAR <- value'
    val mutable pLUS_CHAR : char = '\000'
    method pLUS_CHAR = pLUS_CHAR
    method set_pLUS_CHAR value' = pLUS_CHAR <- value'
    val mutable x_CHAR : char = '\000'
    method x_CHAR = x_CHAR
    method set_x_CHAR value' = x_CHAR <- value'
    val mutable cHAR_ARRAY : char array array = (Obj.magic 0)
    method cHAR_ARRAY = cHAR_ARRAY
    method set_cHAR_ARRAY value' = cHAR_ARRAY <- value'
    val mutable primitiveLongSingleton : PrimitiveLongSingleton.primitiveLongSingleton = (Obj.magic 0)
    method primitiveLongSingleton = primitiveLongSingleton
    method set_primitiveLongSingleton value' = primitiveLongSingleton <- value'
    
    

    method init () : unit =
        begin
        ignore (timeDelayHelper#setStartTimeTNT ());
        totalRefreshes <- 0;
        totalFrames <- 0
        end
    

    method add ((_string : string)) : unit =
        begin
        ()
        end
    

    method process () : unit =
        begin
        ()
        end
    

    method nextFrame () : unit =
        begin
        totalFrames <- totalFrames + 1
        end
    

    method nextRefresh () : unit =
        begin
        totalRefreshes <- totalRefreshes + 1
        end
    

    method getRefreshRate () : int =
        try
        begin
        let elapsed : int ref = ref ((timeDelayHelper#getElapsed (gameTickTimeDelayHelper#startTime))) in ();
        if (!elapsed > 1) then begin
            let time : int ref = ref (((totalRefreshes / ((!elapsed asr dEFAULT_SCALE_FACTOR))))) in ();
            raise (Java_return (Obj.repr (!time)))
        end else begin
            raise (Java_return (Obj.repr (0)))
        end
        end
        with Java_return value -> Obj.obj value
    

    method getTimeDelayHelper () : TimeDelayHelper.timeDelayHelper =
        begin
        (timeDelayHelper :> TimeDelayHelper.timeDelayHelper)
        end
    

    method to2DCharArray () : char array array =
        begin
        let totalTime : int ref = ref ((timeDelayHelper#getElapsed (gameTickTimeDelayHelper#startTime))) in ();
        totalTime := ((!totalTime asr dEFAULT_SCALE_FACTOR));
        if ((!totalTime > 0) && (updateDelayHelper#isTime (gameTickTimeDelayHelper#startTime))) then begin
            let framesPerSec : int ref = ref (((totalFrames / !totalTime))) in ();
            if (!framesPerSec < 10) then begin
                cHAR_ARRAY.(1).(0) <- sPACE_CHAR;
                cHAR_ARRAY.(1).(1) <- primitiveLongSingleton#nUMBER_CHAR_ARRAY.(!framesPerSec)
            end else if (!framesPerSec < 100) then begin
                let tens : int ref = ref ((!framesPerSec / 10)) in ();
                let removeTens : int ref = ref ((!tens * 10)) in ();
                cHAR_ARRAY.(1).(0) <- primitiveLongSingleton#nUMBER_CHAR_ARRAY.(!tens);
                cHAR_ARRAY.(1).(1) <- primitiveLongSingleton#nUMBER_CHAR_ARRAY.((!framesPerSec - !removeTens))
            end else begin
                cHAR_ARRAY.(1).(0) <- pLUS_CHAR;
                cHAR_ARRAY.(1).(1) <- pLUS_CHAR
            end;
            let refreshesPerSec : int ref = ref (((totalRefreshes / !totalTime))) in ();
            if (!refreshesPerSec < 10) then begin
                cHAR_ARRAY.(3).(0) <- x_CHAR;
                cHAR_ARRAY.(3).(1) <- primitiveLongSingleton#nUMBER_CHAR_ARRAY.(!refreshesPerSec)
            end else if (!refreshesPerSec < 100) then begin
                let tens : int ref = ref ((!refreshesPerSec / 10)) in ();
                let removeTens : int ref = ref ((!tens * 10)) in ();
                cHAR_ARRAY.(3).(0) <- primitiveLongSingleton#nUMBER_CHAR_ARRAY.((!refreshesPerSec / 10));
                cHAR_ARRAY.(3).(1) <- primitiveLongSingleton#nUMBER_CHAR_ARRAY.((!refreshesPerSec - !removeTens))
            end else begin
                cHAR_ARRAY.(3).(0) <- pLUS_CHAR;
                cHAR_ARRAY.(3).(1) <- pLUS_CHAR
            end
        end;
        cHAR_ARRAY
        end
    

    method toStringArray () : string array =
        begin
        let totalTime : int ref = ref ((timeDelayHelper#getElapsed (gameTickTimeDelayHelper#startTime))) in ();
        totalTime := ((!totalTime / 10000));
        if (!totalTime > 0) then begin
            sTRING_ARRAY.(1) <- (string_of_int (!totalTime));
            sTRING_ARRAY.(3) <- (string_of_int (totalFrames));
            sTRING_ARRAY.(5) <- (string_of_int ((totalFrames / !totalTime)));
            sTRING_ARRAY.(7) <- (string_of_int (totalRefreshes));
            sTRING_ARRAY.(9) <- (string_of_int ((totalRefreshes / !totalTime)))
        end else begin
            let string : string ref = ref (eMPTY_STRING) in ();
            sTRING_ARRAY.(1) <- !string;
            sTRING_ARRAY.(3) <- !string;
            sTRING_ARRAY.(5) <- !string;
            sTRING_ARRAY.(7) <- !string;
            sTRING_ARRAY.(9) <- !string
        end;
        sTRING_ARRAY
        end
    

    method toStringAt ((totalTime : int)) : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (sTRING_ARRAY.(0)));
        ignore (!stringBuffer#appendlong (totalTime));
        ignore (!stringBuffer#append (sTRING_ARRAY.(2)));
        ignore (!stringBuffer#appendlong (totalFrames));
        ignore (!stringBuffer#append (sTRING_ARRAY.(4)));
        ignore (!stringBuffer#appendlong ((totalFrames / totalTime)));
        if (totalRefreshes > 0) then begin
            ignore (!stringBuffer#append (sTRING_ARRAY.(6)));
            ignore (!stringBuffer#appendlong (totalRefreshes));
            ignore (!stringBuffer#append (sTRING_ARRAY.(8)));
            ignore (!stringBuffer#appendlong ((totalRefreshes / totalTime)));
            ignore (!stringBuffer#append ((CommonSeps.getInstance ())#nEW_LINE))
        end;
        (java_string_of (Obj.repr !stringBuffer))
        end
    

    method toString () : string =
        try
        begin
        let totalTime : int ref = ref ((timeDelayHelper#getElapsed (gameTickTimeDelayHelper#startTime))) in ();
        totalTime := ((!totalTime / 1000));
        if (!totalTime > 0) then begin
            raise (Java_return (Obj.repr ((self#toStringAt (!totalTime)))))
        end else begin
            raise (Java_return (Obj.repr (nOT)))
        end
        end
        with Java_return value -> Obj.obj value

    initializer
      begin
        timeDelayHelper <- ((new TimeDelayHelper.timeDelayHelper (2147483647)) :> TimeDelayHelper.timeDelayHelper);
        updateDelayHelper <- ((new TimeDelayHelper.timeDelayHelper (2000)) :> TimeDelayHelper.timeDelayHelper);
        totalRefreshes <- 0;
        totalFrames <- 0;
        gameTickTimeDelayHelper <- ((GameTickTimeDelayHelperFactory.getInstance ()) :> GameTickTimeDelayHelper.gameTickTimeDelayHelper);
        dEFAULT_SCALE_FACTOR <- (ScaleFactorFactory.getInstance ())#dEFAULT_SCALE_FACTOR;
        nOT <- "Not enough Time to Calculate";
        eMPTY_STRING <- (StringUtil.getInstance ())#eMPTY_STRING;
        sTRING_ARRAY <- [| " Total Time: "; eMPTY_STRING; " Total Frames: "; eMPTY_STRING; " Frames/10 Sec: "; eMPTY_STRING; " Total Paints: "; eMPTY_STRING; " Paints/10 Sec: "; eMPTY_STRING |];
        sPACE_CHAR <- ' ';
        pLUS_CHAR <- '+';
        x_CHAR <- 'X';
        cHAR_ARRAY <- [| [| 'F'; 'r'; 'a'; 'm'; 'e'; 's'; '/'; '1'; '0'; ' '; 'S'; 'e'; 'c'; ':' |]; [| 'X'; 'X' |]; [| 'P'; 'a'; 'i'; 'n'; 't'; 's'; '/'; '1'; '0'; ' '; 'S'; 'e'; 'c'; ':' |]; [| 'X'; 'X' |] |];
        primitiveLongSingleton <- ((PrimitiveLongSingleton.getInstance ()) :> PrimitiveLongSingleton.primitiveLongSingleton);
        ();
        ()
      end
  end
let () = java_register_constructor "BaseGameStatistics" (fun arguments -> Obj.repr (new baseGameStatistics (Obj.obj arguments)))


