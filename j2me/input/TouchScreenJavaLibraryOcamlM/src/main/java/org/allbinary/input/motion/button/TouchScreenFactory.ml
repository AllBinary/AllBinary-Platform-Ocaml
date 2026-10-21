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
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.string.CommonStrings *)

class touchScreenFactory () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable touch : bool = false
    method touch = touch
    method set_touch value' = touch <- value'
    val mutable multiTouch : bool = false
    method multiTouch = multiTouch
    method set_multiTouch value' = multiTouch <- value'
    val mutable multiTouchDistinct : bool = false
    method multiTouchDistinct = multiTouchDistinct
    method set_multiTouchDistinct value' = multiTouchDistinct <- value'
    val mutable touchScreenType : TouchScreenType.touchScreenType = (Obj.magic 0)
    method touchScreenType = touchScreenType
    method set_touchScreenType value' = touchScreenType <- value'
    
    

    method setMultiTouch ((multiTouch_arg : bool)) : unit =
        begin
        multiTouch <- multiTouch_arg
        end
    

    method isMultiTouch () : bool =
        begin
        multiTouch
        end
    

    method setTouch ((touch_arg : bool)) : unit =
        begin
        touch <- touch_arg
        end
    

    method isTouch () : bool =
        begin
        touch
        end
    

    method setMultiTouchDistinct ((multiTouchDistinct_arg : bool)) : unit =
        begin
        multiTouchDistinct <- multiTouchDistinct_arg
        end
    

    method isMultiTouchDistinct () : bool =
        begin
        multiTouchDistinct
        end
    

    method setTouchScreenType : 'any1. 'any1 -> unit = fun (touchScreenType_arg) ->
        let touchScreenType_arg = Obj.repr touchScreenType_arg in
        begin
        touchScreenType <- (Obj.magic touchScreenType_arg)
        end [@@warning "-20"]
    

    method getTouchScreenType () : TouchScreenType.touchScreenType =
        begin
        (touchScreenType :> TouchScreenType.touchScreenType)
        end
    

    method toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ("TouchScreen: "));
        ignore (!stringBuffer#appendboolean ((self#isTouch ())));
        ignore (!stringBuffer#append (" MultiTouch: "));
        ignore (!stringBuffer#appendboolean ((self#isMultiTouch ())));
        ignore (!stringBuffer#append (" Distinct MultiTouch: "));
        ignore (!stringBuffer#appendboolean ((self#isMultiTouchDistinct ())));
        ignore (!stringBuffer#append (" TouchScreenType: "));
        ignore (!stringBuffer#append (((StringUtil.getInstance ())#toString ((self#getTouchScreenType ())))));
        (java_string_of (Obj.repr !stringBuffer))
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        touch <- false;
        multiTouch <- false;
        multiTouchDistinct <- false;
        touchScreenType <- ((TouchScreenTypesFactory.getInstance ())#nOTOUCH :> TouchScreenType.touchScreenType);
        ();
        (try
            (self#setTouch (true));
            (self#setMultiTouch (false))
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, sINGLETON, !commonStrings#gET_INSTANCE, e))
        end)
      end
  end [@@warning "-20"]
let () = java_register_constructor "TouchScreenFactory" (fun arguments -> Obj.repr (new touchScreenFactory (Obj.obj arguments)))

let sINGLETON = (new touchScreenFactory ())
let get_sINGLETON () = sINGLETON
let () = java_register_static "TouchScreenFactory.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))

let getInstance () =
        begin
        sINGLETON
        end
let () = java_register_static "TouchScreenFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


