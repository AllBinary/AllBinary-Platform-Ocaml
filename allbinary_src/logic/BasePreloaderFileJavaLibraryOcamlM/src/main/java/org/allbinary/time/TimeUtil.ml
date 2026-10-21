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
[@@@warning "-20"]
(* import java.util.Calendar *)

let calendar : java_calendar = ((java_calendar_get_instance ()) :> java_calendar)
let get_calendar () = calendar
let () = java_register_static "TimeUtil.get_calendar" (fun _ -> Obj.repr (get_calendar ()))
class timeUtil () =
  object (self)
    

    method setCalendar ((calendar_arg : java_calendar), (yearString : string), (monthString : string), (dayString : string), (hourString : string)) : unit =
        begin
        let year : int ref = ref (((Obj.obj (java_new "Integer" (Obj.repr (yearString))))#intValue ())) in ();
        let month : int ref = ref (((Obj.obj (java_new "Integer" (Obj.repr (monthString))))#intValue ())) in ();
        let day : int ref = ref (((Obj.obj (java_new "Integer" (Obj.repr (dayString))))#intValue ())) in ();
        let hour : int ref = ref (((Obj.obj (java_new "Integer" (Obj.repr (hourString))))#intValue ())) in ();
        ignore (calendar_arg#set (!year, !month, !day, !hour, 0))
        end
    

    (* Java overload setCalendar(Calendar, String, String, String, String, String, String) is not converted: OCaml has one method per name *)
    

    method setExpirationCalendar ((calendar_arg : java_calendar), (yearsString : string), (monthsString : string), (daysString : string), (hoursString : string), (minutesString : string), (secondsString : string)) : unit =
        begin
        let year : int ref = ref (((calendar_arg#get ((Obj.magic (java_call_static "Calendar.get_yEAR" (Obj.repr ()))))) + ((Obj.obj (java_new "Integer" (Obj.repr (yearsString))))#intValue ()))) in ();
        let month : int ref = ref (((calendar_arg#get ((Obj.magic (java_call_static "Calendar.get_mONTH" (Obj.repr ()))))) + ((Obj.obj (java_new "Integer" (Obj.repr (monthsString))))#intValue ()))) in ();
        let day : int ref = ref (((calendar_arg#get ((Obj.magic (java_call_static "Calendar.get_dAY_OF_MONTH" (Obj.repr ()))))) + ((Obj.obj (java_new "Integer" (Obj.repr (daysString))))#intValue ()))) in ();
        let hour : int ref = ref (((calendar_arg#get ((Obj.magic (java_call_static "Calendar.get_hOUR" (Obj.repr ()))))) + ((Obj.obj (java_new "Integer" (Obj.repr (hoursString))))#intValue ()))) in ();
        let minute : int ref = ref (((calendar_arg#get ((Obj.magic (java_call_static "Calendar.get_mINUTE" (Obj.repr ()))))) + ((Obj.obj (java_new "Integer" (Obj.repr (minutesString))))#intValue ()))) in ();
        let second : int ref = ref (((calendar_arg#get ((Obj.magic (java_call_static "Calendar.get_sECOND" (Obj.repr ()))))) + ((Obj.obj (java_new "Integer" (Obj.repr (secondsString))))#intValue ()))) in ();
        ignore (calendar_arg#set (!year, !month, !day, !hour, !minute, !second))
        end
    

    method getTotalTime ((yearString : string), (monthString : string), (dayString : string), (hourString : string), (minuteString : string), (secondString : string)) : int =
        begin
        let time : int ref = ref ((calendar#getTimeInMillis ())) in ();
        (self#setExpirationCalendar (calendar, yearString, monthString, dayString, hourString, minuteString, secondString));
        let timeDelta : int ref = ref ((calendar#getTimeInMillis ())) in ();
        (!timeDelta - !time)
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "TimeUtil" (fun arguments -> Obj.repr (new timeUtil (Obj.obj arguments)))

let instance = (new timeUtil ())
let get_instance () = instance
let () = java_register_static "TimeUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "TimeUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


