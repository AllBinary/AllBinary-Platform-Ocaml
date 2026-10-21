(* Generated Code Do Not Modify *)
(* package org.allbinary.time *)

open Allbinary_java [@@warning "-33"]
(* import java.util.Calendar *)
(* import org.junit.jupiter.api.Assertions *)
(* import org.junit.jupiter.api.DisplayName *)
(* import org.junit.jupiter.api.Test *)


let millisForHourLocal ((hour_arg : int)) : int =
        begin
        let cal : java_calendar ref = ref (((java_calendar_get_instance ()) :> java_calendar)) in ();
        ignore (!cal#set ((Calendar.get_hOUR_OF_DAY ()), hour_arg));
        ignore (!cal#set ((Calendar.get_mINUTE ()), 0));
        ignore (!cal#set ((Calendar.get_sECOND ()), 0));
        ignore (!cal#set ((Calendar.get_mILLISECOND ()), 0));
        (!cal#getTimeInMillis ())
        end

let () = java_register_static "TimeTypeTest.millisForHourLocal" (fun arguments -> Obj.repr (millisForHourLocal (Obj.obj arguments)))
class timeTypeTest () =
  object
    

    method isNight_returnsTrue_for_hours_less_than_6 () : unit =
        begin
        (* Otherwise - statement - ForEachStmt *) ()
        end
    

    method isNight_returnsTrue_for_hours_greater_than_18 () : unit =
        begin
        (* Otherwise - statement - ForEachStmt *) ()
        end
    

    method isNight_returnsFalse_for_boundary_hours_6_and_18 () : unit =
        begin
        (* Otherwise - statement - ForEachStmt *) ()
        end
    

    method getNightOrDay_returns_expected_label () : unit =
        begin
        let nightUtil : TimeTypeUtil.timeTypeUtil ref = ref (((new TestableTimeTypeUtil.testableTimeTypeUtil (0)) :> TimeTypeUtil.timeTypeUtil)) in ();
        ignore (Assertions.assertEquals (!nightUtil#nIGHT, (!nightUtil#getNightOrDay ())));
        let dayUtil : TimeTypeUtil.timeTypeUtil ref = ref (((new TestableTimeTypeUtil.testableTimeTypeUtil (12)) :> TimeTypeUtil.timeTypeUtil)) in ();
        ignore (Assertions.assertEquals (!dayUtil#dAY, (!dayUtil#getNightOrDay ())))
        end
    

    method getHourOfDay_long_converts_epoch_to_local_hour () : unit =
        begin
        let util : TimeTypeUtil.timeTypeUtil ref = ref (((new TimeTypeUtil.timeTypeUtil ()) :> TimeTypeUtil.timeTypeUtil)) in ();
        (* Otherwise - statement - ForEachStmt *) ()
        end
    

    method isNight_long_expected_ranges () : unit =
        begin
        let util : TimeTypeUtil.timeTypeUtil ref = ref (((new TimeTypeUtil.timeTypeUtil ()) :> TimeTypeUtil.timeTypeUtil)) in ();
        (* Otherwise - statement - ForEachStmt *) ();
        (* Otherwise - statement - ForEachStmt *) ()
        end
    

    method getNightOrDay_long_consistency () : unit =
        begin
        let util : TimeTypeUtil.timeTypeUtil ref = ref (((new TimeTypeUtil.timeTypeUtil ()) :> TimeTypeUtil.timeTypeUtil)) in ();
        let nightMillis : int ref = ref ((millisForHourLocal (0))) in ();
        let dayMillis : int ref = ref ((millisForHourLocal (12))) in ();
        ignore (Assertions.assertEquals (!util#nIGHT, (!util#getNightOrDay (!nightMillis))));
        ignore (Assertions.assertEquals (!util#dAY, (!util#getNightOrDay (!dayMillis))))
        end
    

    method boundaries_day_for_long_based_api () : unit =
        begin
        let util : TimeTypeUtil.timeTypeUtil ref = ref (((new TimeTypeUtil.timeTypeUtil ()) :> TimeTypeUtil.timeTypeUtil)) in ();
        (* Otherwise - statement - ForEachStmt *) ()
        end
    

    method constants_accessible_and_stable () : unit =
        begin
        let util : TimeTypeUtil.timeTypeUtil ref = ref (((new TimeTypeUtil.timeTypeUtil ()) :> TimeTypeUtil.timeTypeUtil)) in ();
        ignore (Assertions.assertEquals ("Night", !util#nIGHT));
        ignore (Assertions.assertEquals ("Day", !util#dAY))
        end
    

    method getInstance_returns_same_singleton () : unit =
        begin
        let a : TimeTypeUtil.timeTypeUtil ref = ref (((TimeTypeUtil.getInstance ()) :> TimeTypeUtil.timeTypeUtil)) in ();
        let b : TimeTypeUtil.timeTypeUtil ref = ref (((TimeTypeUtil.getInstance ()) :> TimeTypeUtil.timeTypeUtil)) in ();
        ignore (Assertions.assertSame (!a, !b))
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "TimeTypeTest" (fun arguments -> Obj.repr (new timeTypeTest (Obj.obj arguments)))


