(* Generated Code Do Not Modify *)
(* package org.allbinary.time *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.Calendar *)
(* import java.util.TimeZone *)

class timeTypeUtil () =
  object (self)
    val mutable nIGHT : string = ""
    method nIGHT = nIGHT
    method set_nIGHT value' = nIGHT <- value'
    val mutable dAY : string = ""
    method dAY = dAY
    method set_dAY value' = dAY <- value'
    

    method isNight () : bool =
        begin
        let hoursOfDay : int ref = ref ((self#getHourOfDay ())) in ();
        ((!hoursOfDay < 6) || (!hoursOfDay > 18))
        end
    

    method getHourOfDay () : int =
        begin
        let calendar : java_calendar ref = ref (((java_calendar_get_instance ()) :> java_calendar)) in ();
        (!calendar#get ((Obj.magic (java_call_static "Calendar.get_hOUR_OF_DAY" (Obj.repr ())))))
        end
    

    method getNightOrDay () : string =
        begin
        (if (self#isNight ()) then nIGHT else dAY)
        end
    

    (* Java overload getHourOfDay(LONG) is not converted: OCaml has one method per name *)
    

    (* Java overload isNight(LONG) is not converted: OCaml has one method per name *)
    

    (* Java overload getNightOrDay(LONG) is not converted: OCaml has one method per name *)

    initializer
      begin
        nIGHT <- "Night";
        dAY <- "Day";
        ()
      end
  end
let () = java_register_constructor "TimeTypeUtil" (fun arguments -> Obj.repr (new timeTypeUtil (Obj.obj arguments)))

let instance = (new timeTypeUtil ())
let get_instance () = instance
let () = java_register_static "TimeTypeUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "TimeTypeUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


