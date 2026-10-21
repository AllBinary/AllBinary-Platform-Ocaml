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
(* package org.allbinary.time *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.string.CommonLabels *)

class timeDelayHelper ((delay_arg : int)) =
  object (self)
    val mutable startTime : int = 0
    method startTime = startTime
    method set_startTime value' = startTime <- value'
    val mutable elapsedTimeAtPause : int = 0
    method elapsedTimeAtPause = elapsedTimeAtPause
    method set_elapsedTimeAtPause value' = elapsedTimeAtPause <- value'
    val mutable delay : int = 0
    method delay = delay
    method set_delay value' = delay <- value'
    
    

    method isTimeTNT () : bool =
        try
        begin
        let currentTime : int ref = ref ((Float.to_int (Unix.gettimeofday () *. 1000.0))) in ();
        if ((!currentTime - startTime) > delay) then begin
            startTime <- !currentTime;
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value
    

    method isTimeSinceTNT ((delay_arg : int)) : bool =
        try
        begin
        let currentTime : int ref = ref ((Float.to_int (Unix.gettimeofday () *. 1000.0))) in ();
        if ((!currentTime - startTime) > delay_arg) then begin
            startTime <- !currentTime;
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value
    

    method isTime ((currentTime : int)) : bool =
        try
        begin
        if ((currentTime - startTime) > delay) then begin
            startTime <- currentTime;
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value
    

    method isTimeWithoutReset ((currentTime : int)) : bool =
        try
        begin
        if ((currentTime - startTime) > delay) then begin
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value
    

    method isTimeSince ((_delay_arg : int), (currentTime : int)) : bool =
        try
        begin
        if ((currentTime - startTime) > delay) then begin
            startTime <- currentTime;
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value
    

    method getElapsedTNT () : int =
        begin
        ((Float.to_int (Unix.gettimeofday () *. 1000.0)) - startTime)
        end
    

    method getElapsed ((currentTime : int)) : int =
        begin
        (currentTime - startTime)
        end
    

    method isElapsed ((currentTime : int), (time : int)) : bool =
        try
        begin
        if ((self#getElapsed (currentTime)) > time) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value
    

    method isElapsedTNT ((time : int)) : bool =
        try
        begin
        if ((self#getElapsedTNT ()) > time) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value
    

    method setStartTime ((startTime_arg : int)) : unit =
        begin
        startTime <- startTime_arg
        end
    

    method getStartTime () : int =
        begin
        startTime
        end
    

    method setStartTimeTNT () : unit =
        begin
        startTime <- (Float.to_int (Unix.gettimeofday () *. 1000.0))
        end
    

    method pause () : unit =
        begin
        elapsedTimeAtPause <- (self#getElapsedTNT ());
        startTime <- max_int
        end
    

    method resume () : bool =
        try
        begin
        if (elapsedTimeAtPause <> min_int) then begin
            startTime <- ((Float.to_int (Unix.gettimeofday () *. 1000.0)) + elapsedTimeAtPause);
            elapsedTimeAtPause <- min_int;
            (self#setStartTimeTNT ());
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value
    

    method toStringAt ((currentTime : int)) : string =
        try
        begin
        let elapsed : int ref = ref ((self#getElapsed (currentTime))) in ();
        if (!elapsed > 0) then begin
            let commonLabels : CommonLabels.commonLabels ref = ref (((CommonLabels.getInstance ()) :> CommonLabels.commonLabels)) in ();
            let elapsedAsString : string ref = ref ((string_of_int (!elapsed))) in ();
            raise (Java_return (Obj.repr ((java_string_of (Obj.repr (((((((new StringMaker.stringMaker ())#append (!commonLabels#sTART))#appendlong (startTime))#append (!commonLabels#cURRENT))#appendlong (currentTime))#append (!commonLabels#eLAPSED))#append (!elapsedAsString)))))))
        end else begin
            raise (Java_return (Obj.repr ((StringUtil.getInstance ())#eMPTY_STRING)))
        end
        end
        with Java_return value -> Obj.obj value
    

    method toString () : string =
        try
        begin
        let currentTime : int ref = ref ((Float.to_int (Unix.gettimeofday () *. 1000.0))) in ();
        let elapsed : int ref = ref ((self#getElapsed (!currentTime))) in ();
        if (!elapsed > 0) then begin
            let commonLabels : CommonLabels.commonLabels ref = ref (((CommonLabels.getInstance ()) :> CommonLabels.commonLabels)) in ();
            let elapsedAsString : string ref = ref ((string_of_int (!elapsed))) in ();
            raise (Java_return (Obj.repr ((java_string_of (Obj.repr (((((((new StringMaker.stringMaker ())#append (!commonLabels#sTART))#appendlong (startTime))#append (!commonLabels#cURRENT))#appendlong (!currentTime))#append (!commonLabels#eLAPSED))#append (!elapsedAsString)))))))
        end else begin
            raise (Java_return (Obj.repr ((StringUtil.getInstance ())#eMPTY_STRING)))
        end
        end
        with Java_return value -> Obj.obj value

    initializer
      begin
        startTime <- (-1);
        elapsedTimeAtPause <- min_int;
        ();
        ();
        delay <- delay_arg;
        (self#setStartTimeTNT ())
      end
  end
let () = java_register_constructor "TimeDelayHelper" (fun arguments -> Obj.repr (new timeDelayHelper (Obj.obj arguments)))


