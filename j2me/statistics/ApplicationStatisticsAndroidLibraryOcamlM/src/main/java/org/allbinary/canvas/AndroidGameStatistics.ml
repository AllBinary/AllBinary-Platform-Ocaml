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
(* import android.view.View *)
(* import org.allbinary.android.view.BaseViewWrapper *)
(* import org.allbinary.android.view.ViewWrapper *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)

class androidGameStatistics () =
  object (self)
    inherit BaseGameStatistics.baseGameStatistics () as super
    val mutable view : BaseViewWrapper.baseViewWrapper = (Obj.magic 0)
    method view = view
    method set_view value' = view <- value'
    val mutable totalOnDraws : int = 0
    method totalOnDraws = totalOnDraws
    method set_totalOnDraws value' = totalOnDraws <- value'
    val mutable aNDROID_STRING_ARRAY : string array = (Obj.magic 0)
    method aNDROID_STRING_ARRAY = aNDROID_STRING_ARRAY
    method set_aNDROID_STRING_ARRAY value' = aNDROID_STRING_ARRAY <- value'
    val mutable tOTAL_ONDRAWS : string = ""
    method tOTAL_ONDRAWS = tOTAL_ONDRAWS
    method set_tOTAL_ONDRAWS value' = tOTAL_ONDRAWS <- value'
    val mutable oNDRAWS_RATE : string = ""
    method oNDRAWS_RATE = oNDRAWS_RATE
    method set_oNDRAWS_RATE value' = oNDRAWS_RATE <- value'
    
    

    method initView : 'any1. 'any1 -> unit = fun (view_arg) ->
        let view_arg = Obj.repr view_arg in
        begin
        ignore (super#init ());
        view <- (new ViewWrapper.viewWrapper ((Obj.magic view_arg)));
        totalOnDraws <- 0
        end [@@warning "-7-20"]
    

    method process () : unit =
        begin
        ignore (view#postInvalidate ())
        end [@@warning "-7"]
    

    method nextOnDraw () : unit =
        begin
        totalOnDraws <- totalOnDraws + 1
        end [@@warning "-7"]
    

    method toStringArray () : string array =
        begin
        let stringArray : string array ref = ref ((super#toStringArray ())) in ();
        for index = 0 to (Array.length !stringArray) - 1 do
            aNDROID_STRING_ARRAY.(index) <- !stringArray.(index)
        done;
        let totalTime : int ref = ref (((self#getTimeDelayHelper ())#getElapsed ((self#gameTickTimeDelayHelper)#startTime))) in ();
        totalTime := ((!totalTime / 10000));
        aNDROID_STRING_ARRAY.(10) <- tOTAL_ONDRAWS;
        aNDROID_STRING_ARRAY.(11) <- (string_of_int (totalOnDraws));
        aNDROID_STRING_ARRAY.(12) <- oNDRAWS_RATE;
        aNDROID_STRING_ARRAY.(13) <- (string_of_int ((totalOnDraws / !totalTime)));
        aNDROID_STRING_ARRAY
        end [@@warning "-7"]
    

    method toString () : string =
        try
        begin
        let totalTime : int ref = ref (((self#getTimeDelayHelper ())#getElapsed ((self#gameTickTimeDelayHelper)#startTime))) in ();
        totalTime := ((!totalTime / 1000));
        if (!totalTime > 0) then begin
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (!stringBuffer#append ((super#toStringAt (!totalTime))));
            if (totalOnDraws > 0) then begin
                ignore (!stringBuffer#append (tOTAL_ONDRAWS));
                ignore (!stringBuffer#append ((string_of_int (totalOnDraws))));
                ignore (!stringBuffer#append (oNDRAWS_RATE));
                let drawsOverTime : string ref = ref ((string_of_int ((totalOnDraws / !totalTime)))) in ();
                ignore (!stringBuffer#append (!drawsOverTime))
            end;
            raise (Java_return (Obj.repr ((java_string_of (Obj.repr !stringBuffer)))))
        end else begin
            raise (Java_return (Obj.repr ((self#nOT))))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]

    initializer
      begin
        view <- ((BaseViewWrapper.get_nULL_VIEW_WRAPPER ()) :> BaseViewWrapper.baseViewWrapper);
        totalOnDraws <- 0;
        aNDROID_STRING_ARRAY <- (Array.make (14) (Obj.magic 0));
        tOTAL_ONDRAWS <- " Total onDraws: ";
        oNDRAWS_RATE <- " onDraws(/10) Sec: ";
        ();
        let stringUtil : StringUtil.stringUtil ref = ref (((StringUtil.getInstance ()) :> StringUtil.stringUtil)) in ();
        for index = 0 to (Array.length aNDROID_STRING_ARRAY) - 1 do
            aNDROID_STRING_ARRAY.(index) <- !stringUtil#eMPTY_STRING
        done
      end
  end
let () = java_register_constructor "AndroidGameStatistics" (fun arguments -> Obj.repr (new androidGameStatistics (Obj.obj arguments)))


