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
(* package org.allbinary.graphics.opengles *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Displayable *)
(* import org.allbinary.J2MEUtil *)
(* import org.allbinary.game.configuration.feature.Features *)
(* import org.allbinary.game.displayable.canvas.AllBinaryGameCanvas *)
(* import org.allbinary.game.displayable.canvas.DemoCanvas *)
(* import org.allbinary.game.displayable.canvas.GameInputMappingCanvas *)
(* import org.allbinary.game.displayable.canvas.GameInputMappingInstructionsCanvas *)
(* import org.allbinary.game.displayable.canvas.GameRunnable *)
(* import org.allbinary.game.displayable.canvas.NullDisplayable *)
(* import org.allbinary.game.displayable.canvas.NullWaitGameRunnable *)
(* import org.allbinary.game.layer.SWTUtil *)
(* import org.allbinary.game.score.displayable.HighScoresCanvas *)
(* import org.allbinary.graphics.GraphicsStrings *)
(* import org.allbinary.graphics.displayable.CanvasStrings *)
(* import org.allbinary.graphics.displayable.MyCanvas *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.thread.NullRunnable *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class currentDisplayableFactory () =
  object (self)
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable canvasStrings : CanvasStrings.canvasStrings = (Obj.magic 0)
    method canvasStrings = canvasStrings
    method set_canvasStrings value' = canvasStrings <- value'
    val mutable stringUtil : StringUtil.stringUtil = (Obj.magic 0)
    method stringUtil = stringUtil
    method set_stringUtil value' = stringUtil <- value'
    val mutable sET_DISPLAYABLE : string = ""
    method sET_DISPLAYABLE = sET_DISPLAYABLE
    method set_sET_DISPLAYABLE value' = sET_DISPLAYABLE <- value'
    val mutable sET_RUNNABLE : string = ""
    method sET_RUNNABLE = sET_RUNNABLE
    method set_sET_RUNNABLE value' = sET_RUNNABLE <- value'
    val mutable cLEAR_RUNNABLE : string = ""
    method cLEAR_RUNNABLE = cLEAR_RUNNABLE
    method set_cLEAR_RUNNABLE value' = cLEAR_RUNNABLE <- value'
    val mutable sET_USED_RUNNABLE : string = ""
    method sET_USED_RUNNABLE = sET_USED_RUNNABLE
    method set_sET_USED_RUNNABLE value' = sET_USED_RUNNABLE <- value'
    val mutable rUNNABLE : string = ""
    method rUNNABLE = rUNNABLE
    method set_rUNNABLE value' = rUNNABLE <- value'
    val mutable rUNNABLE_WAS_ALREADY_IN_USE : string = ""
    method rUNNABLE_WAS_ALREADY_IN_USE = rUNNABLE_WAS_ALREADY_IN_USE
    method set_rUNNABLE_WAS_ALREADY_IN_USE value' = rUNNABLE_WAS_ALREADY_IN_USE <- value'
    val mutable dEFAULT_CHILD_NAME_LIST : BasicArrayList.basicArrayList = (Obj.magic 0)
    method dEFAULT_CHILD_NAME_LIST = dEFAULT_CHILD_NAME_LIST
    method set_dEFAULT_CHILD_NAME_LIST value' = dEFAULT_CHILD_NAME_LIST <- value'
    val mutable displayable : Obj.t = Obj.repr 0
    method displayable : 'r. 'r = Obj.magic displayable
    method set_displayable : 'v. 'v -> unit = fun value' -> displayable <- Obj.repr value'
    val mutable openGlReadydisplayable : Obj.t = Obj.repr 0
    method openGlReadydisplayable : 'r. 'r = Obj.magic openGlReadydisplayable
    method set_openGlReadydisplayable : 'v. 'v -> unit = fun value' -> openGlReadydisplayable <- Obj.repr value'
    val mutable runnable : GameRunnable.gameRunnable = (Obj.magic 0)
    method runnable = runnable
    method set_runnable value' = runnable <- value'
    val mutable usedRunnable : GameRunnable.gameRunnable = (Obj.magic 0)
    method usedRunnable = usedRunnable
    method set_usedRunnable value' = usedRunnable <- value'
    
    

    method setMyCanvas : 'any1. 'any1 -> unit = fun (displayable_arg) ->
        let displayable_arg = Obj.repr displayable_arg in
        try
        begin
        if (java_instanceof (Obj.repr (Obj.magic displayable)) "MyCanvas") then begin
            if ((Obj.magic displayable_arg)#hasChild ((Obj.magic (Obj.magic displayable)))) then begin
                ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("Child Displayable is already set for: "))#append ((stringUtil#toString ((Obj.magic displayable_arg))))))), self, sET_DISPLAYABLE))));
                raise (Java_return (Obj.repr (())))
            end
        end;
        (self#setDisplayable ((Obj.magic displayable_arg)))
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method setDisplayable : 'any1. 'any1 -> unit = fun (displayable_arg) ->
        let displayable_arg = Obj.repr displayable_arg in
        begin
        displayable <- Obj.repr ((Obj.magic displayable_arg));
        (self#setOpenGlReadydisplayable ((Obj.magic displayable_arg)))
        end [@@warning "-20"]
    

    method setOpenGlReadydisplayable : 'any1. 'any1 -> unit = fun (openGlReadydisplayable_arg) ->
        let openGlReadydisplayable_arg = Obj.repr openGlReadydisplayable_arg in
        begin
        openGlReadydisplayable <- Obj.repr ((Obj.magic openGlReadydisplayable_arg));
        (self#update ())
        end [@@warning "-20"]
    

    method getOpenGlReadydisplayable : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic openGlReadydisplayable)))
        end
    

    method setRunnable : 'any1. 'any1 -> unit = fun (runnable_arg) ->
        let runnable_arg = Obj.repr runnable_arg in
        begin
        ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (rUNNABLE))#append ((stringUtil#toString ((Obj.magic runnable_arg))))))), self, sET_RUNNABLE))));
        runnable <- (Obj.magic runnable_arg);
        if ((Obj.repr usedRunnable) != (Obj.repr runnable)) then begin
            (self#update ())
        end else begin
            ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (rUNNABLE_WAS_ALREADY_IN_USE))#append ((stringUtil#toString ((Obj.magic runnable_arg))))))), self, sET_RUNNABLE))))
        end
        end [@@warning "-20"]
    

    method clearRunnable () : unit =
        begin
        ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (rUNNABLE))#append ((stringUtil#toString ((NullRunnable.getInstance ()))))))), self, cLEAR_RUNNABLE))));
        (self#setUsedRunnable ((NullWaitGameRunnable.getInstance ())))
        end
    

    method update () : unit =
        begin
        begin (* synchronized *)
            let commonSeps : CommonSeps.commonSeps ref = ref (((CommonSeps.getInstance ()) :> CommonSeps.commonSeps)) in ();
            let features : Features.features ref = ref (((Features.getInstance ()) :> Features.features)) in ();
            let stringMaker : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (!stringMaker#append ((stringUtil#toString ((Obj.magic openGlReadydisplayable)))));
            if ((SWTUtil.get_isSWT ()) && (not (!features#isDefault ((OpenGLFeatureFactory.getInstance ())#oPENGL)))) then begin
                ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr (((((!stringMaker#append (!commonSeps#sPACE))#append ((SWTUtil.get_sWT ())))#append (!commonSeps#sPACE))#append (rUNNABLE))#append ((stringUtil#toString ((NullRunnable.getInstance ()))))))), self, commonStrings#uPDATE))));
                (self#setUsedRunnable ((NullWaitGameRunnable.getInstance ())))
            end else if (J2MEUtil.isHTML ()) then begin
                ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr (((((!stringMaker#append (!commonSeps#sPACE))#append ((GraphicsStrings.getInstance ())#hTML))#append (!commonSeps#sPACE))#append (rUNNABLE))#append ((stringUtil#toString (runnable)))))), self, commonStrings#uPDATE))));
                (self#setUsedRunnable (runnable))
            end else if (((java_instanceof (Obj.repr (Obj.magic openGlReadydisplayable)) "DemoCanvas") || (java_instanceof (Obj.repr (Obj.magic openGlReadydisplayable)) "AllBinaryGameCanvas")) || (!features#isDefault ((OpenGLFeatureFactory.getInstance ())#oPENGL))) then begin
                ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr (((((!stringMaker#append (!commonSeps#sPACE))#append ((java_string_of (Obj.repr (OpenGLFeatureFactory.getInstance ())#oPENGL))))#append (!commonSeps#sPACE))#append (rUNNABLE))#append ((stringUtil#toString (runnable)))))), self, commonStrings#uPDATE))));
                (self#setUsedRunnable (runnable))
            end else begin
                ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr ((!stringMaker#append (rUNNABLE))#append ((stringUtil#toString ((NullRunnable.getInstance ()))))))), self, commonStrings#uPDATE))));
                (self#setUsedRunnable ((NullWaitGameRunnable.getInstance ())))
            end
        end
        end
    

    method getDisplayable : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic displayable)))
        end
    

    method getUsedRunnable () : GameRunnable.gameRunnable =
        begin
        (usedRunnable :> GameRunnable.gameRunnable)
        end
    

    method setUsedRunnable : 'any1. 'any1 -> unit = fun (usedRunnable_arg) ->
        let usedRunnable_arg = Obj.repr usedRunnable_arg in
        begin
        ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr (((((new StringMaker.stringMaker ())#append (rUNNABLE))#append ((stringUtil#toString (runnable))))#append ((CommonSeps.getInstance ())#cOLON_SEP))#append ((stringUtil#toString ((Obj.magic usedRunnable_arg))))))), self, sET_USED_RUNNABLE))));
        usedRunnable <- (Obj.magic usedRunnable_arg)
        end [@@warning "-20"]

    initializer
      begin
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        canvasStrings <- ((CanvasStrings.getInstance ()) :> CanvasStrings.canvasStrings);
        stringUtil <- ((StringUtil.getInstance ()) :> StringUtil.stringUtil);
        sET_DISPLAYABLE <- "setDisplayable";
        sET_RUNNABLE <- "setRunnable";
        cLEAR_RUNNABLE <- "clearRunnable";
        sET_USED_RUNNABLE <- "setUsedRunnable";
        rUNNABLE <- "Runnable: ";
        rUNNABLE_WAS_ALREADY_IN_USE <- "Runnable was already in use: ";
        dEFAULT_CHILD_NAME_LIST <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        displayable <- (Obj.repr (Obj.magic (java_call_static "NullDisplayable.getInstance" (Obj.repr ()))));
        openGlReadydisplayable <- (Obj.repr (Obj.magic (java_call_static "NullDisplayable.getInstance" (Obj.repr ()))));
        runnable <- ((NullWaitGameRunnable.getInstance ()) :> GameRunnable.gameRunnable);
        usedRunnable <- ((NullWaitGameRunnable.getInstance ()) :> GameRunnable.gameRunnable);
        ();
        ignore (dEFAULT_CHILD_NAME_LIST#add (canvasStrings#aBOUT));
        ignore (dEFAULT_CHILD_NAME_LIST#add (canvasStrings#oPTIONS));
        ignore (dEFAULT_CHILD_NAME_LIST#add ((GameInputMappingCanvas.get_nAME ())));
        ignore (dEFAULT_CHILD_NAME_LIST#add ((GameInputMappingInstructionsCanvas.get_nAME ())));
        ignore (dEFAULT_CHILD_NAME_LIST#add ((HighScoresCanvas.get_nAME ())))
      end
  end [@@warning "-20"]
let () = java_register_constructor "CurrentDisplayableFactory" (fun arguments -> Obj.repr (new currentDisplayableFactory (Obj.obj arguments)))

let instance = (new currentDisplayableFactory ())
let get_instance () = instance
let () = java_register_static "CurrentDisplayableFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "CurrentDisplayableFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


