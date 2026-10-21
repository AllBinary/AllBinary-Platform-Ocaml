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
(* package org.allbinary.android.api5 *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import android.app.Activity *)
(* import org.allbinary.input.motion.button.TouchScreenTypeFactory *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.android.api1.ActivityFractureUtilAPI1 *)
(* import org.allbinary.input.motion.button.TouchScreenFactory *)

class activityFractureUtilAPI5 () =
  object (self)
    inherit ActivityFractureUtilAPI1.activityFractureUtilAPI1 ()
    val mutable fEATURE_TOUCHSCREEN_MULTITOUCH : string = ""
    method fEATURE_TOUCHSCREEN_MULTITOUCH = fEATURE_TOUCHSCREEN_MULTITOUCH
    method set_fEATURE_TOUCHSCREEN_MULTITOUCH value' = fEATURE_TOUCHSCREEN_MULTITOUCH <- value'
    val mutable fEATURE_TOUCHSCREEN : string = ""
    method fEATURE_TOUCHSCREEN = fEATURE_TOUCHSCREEN
    method set_fEATURE_TOUCHSCREEN value' = fEATURE_TOUCHSCREEN <- value'
    val mutable fEATURE_TOUCHSCREEN_MULTITOUCH_DISTINCT : string = ""
    method fEATURE_TOUCHSCREEN_MULTITOUCH_DISTINCT = fEATURE_TOUCHSCREEN_MULTITOUCH_DISTINCT
    method set_fEATURE_TOUCHSCREEN_MULTITOUCH_DISTINCT value' = fEATURE_TOUCHSCREEN_MULTITOUCH_DISTINCT <- value'
    

    method process : 'any1. 'any1 -> unit = fun (activity) ->
        let activity = Obj.repr activity in
        begin
        let touchScreenFactory : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "TouchScreenFactory.getInstance" (Obj.repr ()))))) in ();
        let touchScreenTypeFactory : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "TouchScreenTypeFactory.getInstance" (Obj.repr ()))))) in ();
        ignore ((Obj.magic !touchScreenFactory)#setTouch ((self#isTouch ((Obj.magic activity)))));
        ignore ((Obj.magic !touchScreenFactory)#setMultiTouch ((self#isMultiTouch ((Obj.magic activity)))));
        ignore ((Obj.magic !touchScreenFactory)#setMultiTouchDistinct ((self#isMultiTouchDistinct ((Obj.magic activity)))));
        ignore ((Obj.magic !touchScreenTypeFactory)#update ((Obj.magic activity)));
        let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr (Obj.magic !touchScreenFactory))), self, !commonStrings#pROCESS))))
        end [@@warning "-7-20"]
    

    method isTouch : 'any1. 'any1 -> bool = fun (activity) ->
        let activity = Obj.repr activity in
        begin
        (self#isFeature ((Obj.magic activity), fEATURE_TOUCHSCREEN))
        end [@@warning "-7-20"]
    

    method isMultiTouch : 'any1. 'any1 -> bool = fun (activity) ->
        let activity = Obj.repr activity in
        begin
        (self#isFeature ((Obj.magic activity), fEATURE_TOUCHSCREEN_MULTITOUCH))
        end [@@warning "-7-20"]
    

    method isMultiTouchDistinct : 'any1. 'any1 -> bool = fun (activity) ->
        let activity = Obj.repr activity in
        begin
        (self#isFeature ((Obj.magic activity), fEATURE_TOUCHSCREEN_MULTITOUCH_DISTINCT))
        end [@@warning "-7-20"]
    

    method isFeature : 'any1. 'any1 * string -> bool = fun (activity, (property : string)) ->
        let activity = Obj.repr activity in
        begin
        (((Obj.magic activity)#getPackageManager ())#hasSystemFeature (property))
        end [@@warning "-7-20"]

    initializer
      begin
        fEATURE_TOUCHSCREEN_MULTITOUCH <- "android.hardware.touchscreen.multitouch";
        fEATURE_TOUCHSCREEN <- "android.hardware.touchscreen";
        fEATURE_TOUCHSCREEN_MULTITOUCH_DISTINCT <- "android.hardware.touchscreen.multitouch.distinct";
        ()
      end
  end
let () = java_register_constructor "ActivityFractureUtilAPI5" (fun arguments -> Obj.repr (new activityFractureUtilAPI5 (Obj.obj arguments)))

let instance5 = (new activityFractureUtilAPI5 ())
let get_instance5 () = instance5
let () = java_register_static "ActivityFractureUtilAPI5.get_instance5" (fun _ -> Obj.repr (get_instance5 ()))

let getInstance () =
        begin
        instance5
        end
let () = java_register_static "ActivityFractureUtilAPI5.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


