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
(* package org.allbinary.media.graphics.geography.map *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Font *)
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.java.bool.BooleanFactory *)
(* import org.allbinary.animation.Animation *)
(* import org.allbinary.animation.AnimationBehavior *)
(* import org.allbinary.animation.text.TextAnimation *)
(* import org.allbinary.game.layer.AllBinaryTiledLayer *)
(* import org.allbinary.graphics.GPoint *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.graphics.font.MyFontProcessor *)
(* import org.allbinary.graphics.font.UpdateMyFontInterface *)
(* import org.allbinary.graphics.font.UpdateMyFontProcessor *)
(* import org.allbinary.logic.math.BasicDecimal *)

let nULL_GEOGRPAHIC_MAP_HISTORY_ARRAY = (Array.make (0) (Obj.magic 0))
let get_nULL_GEOGRPAHIC_MAP_HISTORY_ARRAY () = nULL_GEOGRPAHIC_MAP_HISTORY_ARRAY
let () = java_register_static "GeographicMapCellHistory.get_nULL_GEOGRPAHIC_MAP_HISTORY_ARRAY" (fun _ -> Obj.repr (get_nULL_GEOGRPAHIC_MAP_HISTORY_ARRAY ()))
class geographicMapCellHistory () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable booleanFactory : BooleanFactory.booleanFactory = (Obj.magic 0)
    method booleanFactory = booleanFactory
    method set_booleanFactory value' = booleanFactory <- value'
    val mutable list : BasicArrayList.basicArrayList = (Obj.magic 0)
    method list = list
    method set_list value' = list <- value'
    val mutable visitedList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method visitedList = visitedList
    method set_visitedList value' = visitedList <- value'
    val mutable mISSED_INFO : string = ""
    method mISSED_INFO = mISSED_INFO
    method set_mISSED_INFO value' = mISSED_INFO <- value'
    val mutable animation : Obj.t = Obj.repr 0
    method animation : 'r. 'r = Obj.magic animation
    method set_animation : 'v. 'v -> unit = fun value' -> animation <- Obj.repr value'
    val mutable myFontProcessor : MyFontProcessor.myFontProcessor = (Obj.magic 0)
    method myFontProcessor = myFontProcessor
    method set_myFontProcessor value' = myFontProcessor <- value'
    val mutable totalVisited : int = 0
    method totalVisited = totalVisited
    method set_totalVisited value' = totalVisited <- value'
    val mutable halfWidth : int = 0
    method halfWidth = halfWidth
    method set_halfWidth value' = halfWidth <- value'
    val mutable fontHeight : int = 0
    method fontHeight = fontHeight
    method set_fontHeight value' = fontHeight <- value'
    val mutable rED : int = 0
    method rED = rED
    method set_rED value' = rED <- value'
    
    

    method updateMeasurement : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        let font : Obj.t ref = ref ((Obj.repr ((Obj.magic graphics)#getFont ()))) in ();
        fontHeight <- ((Obj.magic !font)#getHeight ());
        myFontProcessor <- (MyFontProcessor.getInstance ())
        end [@@warning "-20"]
    

    method getTotalVisited () : int =
        begin
        totalVisited
        end
    

    method getTotalNotVisited () : int =
        begin
        ((self#getSize ()) - totalVisited)
        end
    

    method getSize () : int =
        begin
        (list#size ())
        end
    

    method trackAll : 'any1. 'any1 -> unit = fun (list_arg) ->
        let list_arg = Obj.repr list_arg in
        begin
        let size : int ref = ref (((Obj.magic list_arg)#size ())) in ();
        ignore (list#ensureCapacity (!size));
        ignore (visitedList#ensureCapacity (!size));
        let geographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((Obj.magic 0) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
        for index = 0 to !size - 1 do
            geographicMapCellPosition := (Obj.magic ((Obj.magic list_arg)#get (index)));
            (self#track (!geographicMapCellPosition))
        done
        end [@@warning "-20"]
    

    method track : 'any1. 'any1 -> unit = fun (geographicMapCellPosition) ->
        let geographicMapCellPosition = Obj.repr geographicMapCellPosition in
        begin
        if (not (list#contains ((Obj.magic geographicMapCellPosition)))) then begin
            ignore (list#add ((Obj.magic geographicMapCellPosition)));
            ignore (visitedList#add (booleanFactory#fALSE))
        end
        end [@@warning "-20"]
    

    method getTracked () : BasicArrayList.basicArrayList =
        begin
        (list :> BasicArrayList.basicArrayList)
        end
    

    method getVisited () : BasicArrayList.basicArrayList =
        begin
        (visitedList :> BasicArrayList.basicArrayList)
        end
    

    method getAfterIfNotLast : 'any1. 'any1 -> GeographicMapCellPosition.geographicMapCellPosition = fun (geographicMapCellPosition) ->
        let geographicMapCellPosition = Obj.repr geographicMapCellPosition in
        try
        begin
        let localList : BasicArrayList.basicArrayList ref = ref ((list :> BasicArrayList.basicArrayList)) in ();
        let index : int ref = ref ((!localList#indexOf ((Obj.magic geographicMapCellPosition)))) in ();
        if ((!localList#size ()) > (!index + 1)) then begin
            raise (Java_return (Obj.repr ((Obj.magic (!localList#get ((!index + 1)))))))
        end;
        ((Obj.magic geographicMapCellPosition) :> GeographicMapCellPosition.geographicMapCellPosition)
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method getFirstUnvisited () : GeographicMapCellPosition.geographicMapCellPosition =
        try
        begin
        let localList : BasicArrayList.basicArrayList ref = ref ((list :> BasicArrayList.basicArrayList)) in ();
        let localVisitedList : BasicArrayList.basicArrayList ref = ref ((visitedList :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((!localVisitedList#size ())) in ();
        let value : bool ref = ref ((Obj.magic 0)) in ();
        for index = 0 to !size - 1 do
            value := (Obj.magic (visitedList#get (index)));
            if ((Obj.repr !value) == (Obj.repr booleanFactory#fALSE)) then begin
                raise (Java_return (Obj.repr ((Obj.magic (!localList#get (index))))))
            end
        done;
        ((Obj.magic (!localList#get (0))) :> GeographicMapCellPosition.geographicMapCellPosition)
        end
        with Java_return value -> Obj.obj value
    

    method getFirstUnvisitedIndex () : int =
        try
        begin
        let localVisitedList : BasicArrayList.basicArrayList ref = ref ((visitedList :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((!localVisitedList#size ())) in ();
        let value : bool ref = ref ((Obj.magic 0)) in ();
        for index = 0 to !size - 1 do
            value := (Obj.magic (visitedList#get (index)));
            if ((Obj.repr !value) == (Obj.repr booleanFactory#fALSE)) then begin
                raise (Java_return (Obj.repr (index)))
            end
        done;
        0
        end
        with Java_return value -> Obj.obj value
    

    method getInPathButNotTracked : 'any1. 'any1 -> BasicArrayList.basicArrayList = fun (pathList) ->
        let pathList = Obj.repr pathList in
        begin
        let inPathButNotTrackedList : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        let localList : BasicArrayList.basicArrayList ref = ref ((list :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref (((Obj.magic pathList)#size ())) in ();
        let geographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((Obj.magic 0) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
        for index = 0 to !size - 1 do
            geographicMapCellPosition := (Obj.magic ((Obj.magic pathList)#get (index)));
            if (not (!localList#contains (!geographicMapCellPosition))) then begin
                ignore (!inPathButNotTrackedList#add (!geographicMapCellPosition))
            end
        done;
        (!inPathButNotTrackedList :> BasicArrayList.basicArrayList)
        end [@@warning "-20"]
    

    method isVisited : 'any1. 'any1 -> bool = fun (geographicMapCellPosition) ->
        let geographicMapCellPosition = Obj.repr geographicMapCellPosition in
        try
        begin
        let index : int ref = ref ((list#indexOf ((Obj.magic geographicMapCellPosition)))) in ();
        if (!index <> (-1)) then begin
            let value : bool ref = ref ((Obj.magic (visitedList#get (!index)))) in ();
            if ((Obj.repr !value) == (Obj.repr booleanFactory#tRUE)) then begin
                raise (Java_return (Obj.repr (true)))
            end
        end else begin
            ()
        end;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method visit : 'any1. 'any1 -> bool = fun (geographicMapCellPosition) ->
        let geographicMapCellPosition = Obj.repr geographicMapCellPosition in
        try
        begin
        let index : int ref = ref ((list#indexOf ((Obj.magic geographicMapCellPosition)))) in ();
        let value : bool ref = ref ((Obj.magic 0)) in ();
        if (!index <> (-1)) then begin
            value := (Obj.magic (visitedList#get (!index)));
            let tRUE : bool ref = ref (booleanFactory#tRUE) in ();
            if ((Obj.repr !value) != (Obj.repr !tRUE)) then begin
                ignore (visitedList#set (!index, !tRUE));
                totalVisited <- totalVisited + 1;
                raise (Java_return (Obj.repr (true)))
            end
        end else begin
            ()
        end;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method isAllVisited () : bool =
        try
        begin
        if (totalVisited = ((self#getSize ()) - 1)) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value
    

    method isAllVisited2 () : bool =
        try
        begin
        if (totalVisited = (self#getSize ())) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value
    

    method isPortionVisited : 'any1. 'any1 -> bool = fun (basicDecimal) ->
        let basicDecimal = Obj.repr basicDecimal in
        try
        begin
        let size : int ref = ref ((self#getSize ())) in ();
        let numberRequired : int ref = ref ((((!size lsl ((Obj.magic basicDecimal)#getScaledFactor ()))) / (java_to_int (Obj.repr (((Obj.magic basicDecimal)#getUnscaled ())))))) in ();
        let numberNotVisited : int ref = ref ((((self#getSize ()) - 1) - totalVisited)) in ();
        if ((!size - !numberNotVisited) > !numberRequired) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method reset () : unit =
        begin
        let localVisitedList : BasicArrayList.basicArrayList ref = ref ((visitedList :> BasicArrayList.basicArrayList)) in ();
        let localFalseBoolean : bool ref = ref (booleanFactory#fALSE) in ();
        let size : int ref = ref ((!localVisitedList#size ())) in ();
        for index = (!size - 1) downto 0 do
            ignore (!localVisitedList#set (index, !localFalseBoolean))
        done;
        totalVisited <- 0
        end
    

    method paintNotVisitedRelativeToPoint : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 -> unit = fun (graphics, tiledLayer, point) ->
        let graphics = Obj.repr graphics in
        let tiledLayer = Obj.repr tiledLayer in
        let point = Obj.repr point in
        begin
        let x : int ref = ref ((((Obj.magic point)#getX ()) - ((Obj.magic tiledLayer)#getXP ()))) in ();
        let y : int ref = ref ((((Obj.magic point)#getY ()) - ((Obj.magic tiledLayer)#getYP ()))) in ();
        if (halfWidth = 0) then begin
            halfWidth <- (((((Obj.magic graphics)#getFont ())#stringWidth (mISSED_INFO)) asr 1))
        end;
        let height : int ref = ref ((2 * fontHeight)) in ();
        ignore ((Obj.magic animation)#paintXY ((Obj.magic graphics), (!x + halfWidth), (!y + (!height))))
        end [@@warning "-20"]
    

    method paintNotVisited : 'any1 'any2. 'any1 * 'any2 -> unit = fun (graphics, geographicMapInterface) ->
        let graphics = Obj.repr graphics in
        let geographicMapInterface = Obj.repr geographicMapInterface in
        begin
        (try
            ignore (myFontProcessor#process ((Obj.magic graphics)));
            ignore ((Obj.magic graphics)#setColor (rED));
            let localVisitedList : BasicArrayList.basicArrayList ref = ref ((visitedList :> BasicArrayList.basicArrayList)) in ();
            let size : int ref = ref ((!localVisitedList#size ())) in ();
            let geographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((Obj.magic 0) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
            let isCellVisitedBoolean : bool ref = ref ((Obj.magic 0)) in ();
            let index : int ref = ref (!size) in ();
            while ((index := !index - 1; !index) >= 0) do
                geographicMapCellPosition := (Obj.magic (list#get (!index)));
                isCellVisitedBoolean := (Obj.magic (!localVisitedList#get (!index)));
                if (not !isCellVisitedBoolean) then begin
                    (self#paintNotVisitedRelativeToPoint ((Obj.magic graphics), ((Obj.magic geographicMapInterface)#getAllBinaryTiledLayer ()), (!geographicMapCellPosition#getPoint ())))
                end
            done
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, "paintNotVisited", e))
        end)
        end [@@warning "-20"]
    

    method init () : unit =
        begin
        ignore (list#clear ());
        ignore (visitedList#clear ());
        totalVisited <- 0
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        booleanFactory <- ((BooleanFactory.getInstance ()) :> BooleanFactory.booleanFactory);
        ();
        ();
        mISSED_INFO <- "Missed";
        animation <- (Obj.repr (new TextAnimation.textAnimation (mISSED_INFO, (AnimationBehavior.getInstance ()))));
        myFontProcessor <- ((new UpdateMyFontProcessor.updateMyFontProcessor (self)) :> MyFontProcessor.myFontProcessor);
        totalVisited <- 0;
        halfWidth <- 0;
        fontHeight <- 0;
        rED <- ((BasicColorFactory.getInstance ())#rED#intValue ());
        ();
        list <- (new BasicArrayListD.basicArrayListD ());
        visitedList <- (new BasicArrayListD.basicArrayListD ());
        (self#init ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "GeographicMapCellHistory" (fun arguments -> Obj.repr (new geographicMapCellHistory (Obj.obj arguments)))


