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
(* package org.allbinary.input.motion.button *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import android.app.Activity *)
(* import android.content.res.Configuration *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)

class touchScreenTypeFactory () =
  object (self)
    

    method update : 'any1. 'any1 -> unit = fun (activity) ->
        let activity = Obj.repr activity in
        begin
        let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        let touchScreenFactory : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "TouchScreenFactory.getInstance" (Obj.repr ()))))) in ();
        let touchScreenTypesFactory : TouchScreenTypesFactory.touchScreenTypesFactory ref = ref (((TouchScreenTypesFactory.getInstance ()) :> TouchScreenTypesFactory.touchScreenTypesFactory)) in ();
        let configuration : Obj.t ref = ref ((Obj.repr (((Obj.magic activity)#getResources ())#getConfiguration ()))) in ();
        let touchScreen : int ref = ref ((Obj.magic !configuration)#touchscreen) in ();
        if (!touchScreen = (Configuration.get_tOUCHSCREEN_FINGER ())) then begin
            ignore ((Obj.magic !touchScreenFactory)#setTouchScreenType (!touchScreenTypesFactory#fINGER));
            if (not ((Obj.magic !touchScreenFactory)#isTouch ())) then begin
                ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ("Not Really Exception: This indicates that a touch screen does exist but is not API8 so we will try it", self, !commonStrings#pROCESS))));
                ignore ((Obj.magic !touchScreenFactory)#setTouch (true))
            end
        end else if (!touchScreen = (Configuration.get_tOUCHSCREEN_STYLUS ())) then begin
            ignore ((Obj.magic !touchScreenFactory)#setTouchScreenType (!touchScreenTypesFactory#sTYLUS));
            if (not ((Obj.magic !touchScreenFactory)#isTouch ())) then begin
                ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ("Not Really Exception: This indicates that a touch screen does exist but is not API8 so we will try it", self, !commonStrings#pROCESS))));
                ignore ((Obj.magic !touchScreenFactory)#setTouch (true))
            end
        end else if (!touchScreen = (Configuration.get_tOUCHSCREEN_NOTOUCH ())) then begin
            ignore ((Obj.magic !touchScreenFactory)#setTouchScreenType (!touchScreenTypesFactory#nOTOUCH))
        end else if (!touchScreen = (Configuration.get_tOUCHSCREEN_UNDEFINED ())) then begin
            ignore ((Obj.magic !touchScreenFactory)#setTouchScreenType (!touchScreenTypesFactory#uNDEFINED))
        end
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "TouchScreenTypeFactory" (fun arguments -> Obj.repr (new touchScreenTypeFactory (Obj.obj arguments)))

let instance = (new touchScreenTypeFactory ())
let get_instance () = instance
let () = java_register_static "TouchScreenTypeFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "TouchScreenTypeFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


