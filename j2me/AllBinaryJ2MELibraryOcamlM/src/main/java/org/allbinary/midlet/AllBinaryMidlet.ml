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
(* package org.allbinary.midlet *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Command *)
(* import javax.microedition.lcdui.CommandListener *)
(* import javax.microedition.lcdui.Display *)
(* import javax.microedition.lcdui.Displayable *)
(* import javax.microedition.lcdui.NullCanvas *)
(* import javax.microedition.midlet.MIDlet *)
(* import javax.microedition.midlet.MIDletStateChangeException *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.ForcedLogUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.util.event.EventStrings *)
(* import org.allbinary.string.CommonLabels *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.system.Memory *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.util.ABHashtable *)

let nULL_ALLBINARY_MIDLET : Obj.t ref = ref ((Obj.repr (NullUtil.getInstance ())#nULL_OBJECT))
let get_nULL_ALLBINARY_MIDLET () = !nULL_ALLBINARY_MIDLET
let set_nULL_ALLBINARY_MIDLET value' = nULL_ALLBINARY_MIDLET := value'
let () = java_register_static "AllBinaryMidlet.get_nULL_ALLBINARY_MIDLET" (fun _ -> Obj.repr (get_nULL_ALLBINARY_MIDLET ()))
class allBinaryMidlet () =
  object (self)
    inherit MIDlet.mIDlet ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable sET_DISPLAY : string = ""
    method sET_DISPLAY = sET_DISPLAY
    method set_sET_DISPLAY value' = sET_DISPLAY <- value'
    val mutable sETTING_ : string = ""
    method sETTING_ = sETTING_
    method set_sETTING_ value' = sETTING_ <- value'
    val mutable _DISPLAY_ : string = ""
    method _DISPLAY_ = _DISPLAY_
    method set__DISPLAY_ value' = _DISPLAY_ <- value'
    val mutable sETTING_NO_TITLE : string = ""
    method sETTING_NO_TITLE = sETTING_NO_TITLE
    method set_sETTING_NO_TITLE value' = sETTING_NO_TITLE <- value'
    val mutable hashtable : Obj.t = Obj.repr 0
    method hashtable : 'r. 'r = Obj.magic hashtable
    method set_hashtable : 'v. 'v -> unit = fun value' -> hashtable <- Obj.repr value'
    val mutable midletDestroyed : bool = false
    method midletDestroyed = midletDestroyed
    method set_midletDestroyed value' = midletDestroyed <- value'
    
    

    method setDisplay : 'any1. 'any1 -> unit = fun (newDisplay) ->
        let newDisplay = Obj.repr newDisplay in
        begin
        let title : string ref = ref ((StringUtil.getInstance ())#eMPTY_STRING) in ();
        if ((Obj.repr (Obj.magic newDisplay)) != (Obj.repr (Obj.magic (java_call_static "NullCanvas.get_nULL_CANVAS" (Obj.repr ()))))) then begin
            title := ((Obj.magic newDisplay)#getTitle ());
            if (!title <> (Obj.magic 0)) then begin
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((((new StringMaker.stringMaker ())#append (sETTING_))#append (!title))#append (_DISPLAY_))#append (((StringUtil.getInstance ())#toString ((Obj.magic newDisplay))))))), self, sET_DISPLAY))
            end else begin
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (sETTING_NO_TITLE))#append (((StringUtil.getInstance ())#toString ((Obj.magic newDisplay))))))), self, sET_DISPLAY))
            end
        end;
        let display : Obj.t ref = ref ((Obj.repr (self#getDisplay ()))) in ();
        ignore ((Obj.magic !display)#setCurrent ((Obj.magic newDisplay)))
        end [@@warning "-7-20"]
    

    method getDisplay : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic (java_call_static "Display.getDisplay" (Obj.repr (self))))))
        end [@@warning "-7"]
    

    method getCurrentDisplayable : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (((Obj.magic (java_call_static "Display.getDisplay" (Obj.repr (self))))#getCurrent ())))
        end [@@warning "-7"]
    

    method setDestroyed ((destroyed : bool)) : unit =
        begin
        midletDestroyed <- destroyed
        end [@@warning "-7"]
    

    method isDestroyed () : bool =
        begin
        midletDestroyed
        end [@@warning "-7"]
    

    method startApp () : unit =
        begin
        ignore (ForcedLogUtil.log ((EventStrings.getInstance ())#pERFORMANCE_MESSAGE, self))
        end [@@warning "-7"]
    

    method pauseApp () : unit =
        begin
        ignore (ForcedLogUtil.log ((EventStrings.getInstance ())#pERFORMANCE_MESSAGE, self))
        end [@@warning "-7"]
    

    method destroyAppInRunnable ((_unconditional : bool), (_isProgress : bool)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method destroyApp ((_unconditional : bool)) : unit =
        begin
        let mETHOD_NAME : string ref = ref ("AllBinaryMidlet::destroyApp") in ();
        (try
            ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, !mETHOD_NAME));
            ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((Memory.getInfo ()), self, !mETHOD_NAME))));
            (self#setDestroyed (true))
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, !mETHOD_NAME, e))
        end)
        end [@@warning "-7"]
    

    method setStartStateHashtable : 'any1. 'any1 -> unit = fun (hashtable_arg) ->
        let hashtable_arg = Obj.repr hashtable_arg in
        begin
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ((CommonLabels.getInstance ())#sTART_LABEL))#append (((StringUtil.getInstance ())#toString ((Obj.magic hashtable_arg))))))), self, "setStartStateHashtable"));
        hashtable <- Obj.repr ((Obj.magic hashtable_arg))
        end [@@warning "-7-20"]
    

    method getStartStateHashtable : 'return. unit -> 'return = fun () ->
        begin
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ((CommonLabels.getInstance ())#sTART_LABEL))#append (((StringUtil.getInstance ())#toString ((Obj.magic hashtable))))))), self, "getStartStateHashtable"));
        (Obj.magic ((Obj.magic hashtable)))
        end [@@warning "-7"]
    

    method getCurrentStateHashtable : 'return. unit -> 'return = fun () ->
        begin
        ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, "getStateHashtable"));
        (Obj.magic ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#nULL_TABLE))
        end [@@warning "-7"]
    

    method commandAction : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_command, _displayable) ->
        begin
        ()
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        sET_DISPLAY <- "setDisplay";
        sETTING_ <- "Setting: ";
        _DISPLAY_ <- " Display: ";
        sETTING_NO_TITLE <- "Setting: No Title, Display: ";
        hashtable <- (Obj.repr ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashtable ()));
        midletDestroyed <- false;
        ();
        ignore ((Obj.magic logUtil)#putF (commonStrings#cONSTRUCTOR, self, "AllBinaryMidlet::AllBinaryMidlet"))
      end
  end [@@warning "-20"]
let () = java_register_constructor "AllBinaryMidlet" (fun arguments -> Obj.repr (new allBinaryMidlet (Obj.obj arguments)))

let getNullInstance () =
        begin
        if ((Obj.repr !nULL_ALLBINARY_MIDLET) == (Obj.repr (NullUtil.getInstance ())#nULL_OBJECT)) then begin
            nULL_ALLBINARY_MIDLET := (new allBinaryMidlet ())
        end;
        (Obj.magic !nULL_ALLBINARY_MIDLET)
        end
let () = java_register_static "AllBinaryMidlet.getNullInstance" (fun arguments -> Obj.repr (getNullInstance (Obj.obj arguments)))


