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
(* package org.allbinary.graphics.canvas.transition.progress *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.android.activity.NullProgressActivity *)
(* import org.allbinary.android.activity.ProgressActivityInterface *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)

class androidTitleProgressBar ((title : string), (backgroundBasicColor : BasicColor.basicColor), (foregroundBasicColor : BasicColor.basicColor)) =
  object (self)
    inherit ProgressCanvas.progressCanvas (title, backgroundBasicColor, foregroundBasicColor) as super
    val mutable showTitleProgressBarRunnable : ShowTitleProgressBarRunnable.showTitleProgressBarRunnable = (Obj.magic 0)
    method showTitleProgressBarRunnable = showTitleProgressBarRunnable
    method set_showTitleProgressBarRunnable value' = showTitleProgressBarRunnable <- value'
    val mutable dismissTitleProgressBarRunnable : DismissTitleProgressBarRunnable.dismissTitleProgressBarRunnable = (Obj.magic 0)
    method dismissTitleProgressBarRunnable = dismissTitleProgressBarRunnable
    method set_dismissTitleProgressBarRunnable value' = dismissTitleProgressBarRunnable <- value'
    val mutable progressDialogPortionSetProgressRunnable : TitleProgressBarPortionSetProgressRunnable.titleProgressBarPortionSetProgressRunnable = (Obj.magic 0)
    method progressDialogPortionSetProgressRunnable = progressDialogPortionSetProgressRunnable
    method set_progressDialogPortionSetProgressRunnable value' = progressDialogPortionSetProgressRunnable <- value'
    val mutable progressDialogSetProgressRunnable : TitleProgressBarSetProgressRunnable.titleProgressBarSetProgressRunnable = (Obj.magic 0)
    method progressDialogSetProgressRunnable = progressDialogSetProgressRunnable
    method set_progressDialogSetProgressRunnable value' = progressDialogSetProgressRunnable <- value'
    val mutable progressActivity : ProgressActivityInterface.progressActivityInterface = (Obj.magic 0)
    method progressActivity = progressActivity
    method set_progressActivity value' = progressActivity <- value'
    val mutable portion : int = 0
    method portion = portion
    method set_portion value' = portion <- value'
    
    

    method init : 'any1. 'any1 -> unit = fun (activity) ->
        let activity = Obj.repr activity in
        begin
        progressActivity <- (Obj.magic activity)
        end [@@warning "-7-20"]
    

    method isInitialized () : bool =
        try
        begin
        if ((Obj.repr progressActivity) != (Obj.repr (NullProgressActivity.get_nULL_PROGRESS_ACTIVITY ()))) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method start () : unit =
        begin
        (try
            ignore ((self#logUtil)#putF ((self#commonStrings)#sTART, self, (self#commonStrings)#sTART_METHOD_NAME));
            ignore (super#start ());
            ignore (progressActivity#runOnUiThread (showTitleProgressBarRunnable))
        with e -> begin
            ignore ((self#logUtil)#put ((self#commonStrings)#eXCEPTION, self, (self#commonStrings)#sTART_METHOD_NAME, e))
        end)
        end [@@warning "-7"]
    

    method end_ () : unit =
        begin
        (try
            ignore ((self#logUtil)#putF ((self#commonStrings)#sTART, self, (self#commonStrings)#eND_METHOD_NAME));
            ignore (progressActivity#runOnUiThread (dismissTitleProgressBarRunnable));
            ignore (super#end_ ())
        with e -> begin
            ignore ((self#logUtil)#put ((self#commonStrings)#eXCEPTION, self, (self#commonStrings)#eND_METHOD_NAME, e))
        end)
        end [@@warning "-7"]
    

    method addPortion ((value : int), (text : string), (index : int)) : unit =
        begin
        (try
            ignore (super#addPortion (value, text, index));
            portion <- value;
            ignore (progressActivity#runOnUiThread (progressDialogPortionSetProgressRunnable))
        with e -> begin
            ignore ((self#logUtil)#put ((self#commonStrings)#eXCEPTION, self, (self#aDD_PORTION), e))
        end)
        end [@@warning "-7"]
    

    method addNormalPortion ((value : int), (text : string)) : unit =
        begin
        (try
            ignore (super#addNormalPortion (value, text));
            portion <- value;
            ignore (progressActivity#runOnUiThread (progressDialogPortionSetProgressRunnable))
        with e -> begin
            ignore ((self#logUtil)#put ((self#commonStrings)#eXCEPTION, self, (self#aDD_PORTION), e))
        end)
        end [@@warning "-7"]
    

    method setValue ((value : int)) : unit =
        begin
        (try
            ignore (super#setValue (value));
            ignore (progressActivity#runOnUiThread (progressDialogSetProgressRunnable))
        with e -> begin
            ignore ((self#logUtil)#put ((self#commonStrings)#eXCEPTION, self, "setValue", e))
        end)
        end [@@warning "-7"]
    

    method waitUntilDisplayed () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method paint : 'any1. 'any1 -> unit = fun (_graphics) ->
        begin
        ()
        end [@@warning "-7-20"]

    initializer
      begin
        showTitleProgressBarRunnable <- ((new ShowTitleProgressBarRunnable.showTitleProgressBarRunnable (self)) :> ShowTitleProgressBarRunnable.showTitleProgressBarRunnable);
        dismissTitleProgressBarRunnable <- ((new DismissTitleProgressBarRunnable.dismissTitleProgressBarRunnable (self)) :> DismissTitleProgressBarRunnable.dismissTitleProgressBarRunnable);
        progressDialogPortionSetProgressRunnable <- ((new TitleProgressBarPortionSetProgressRunnable.titleProgressBarPortionSetProgressRunnable (self)) :> TitleProgressBarPortionSetProgressRunnable.titleProgressBarPortionSetProgressRunnable);
        progressDialogSetProgressRunnable <- ((new TitleProgressBarSetProgressRunnable.titleProgressBarSetProgressRunnable (self)) :> TitleProgressBarSetProgressRunnable.titleProgressBarSetProgressRunnable);
        progressActivity <- ((NullProgressActivity.get_nULL_PROGRESS_ACTIVITY ()) :> ProgressActivityInterface.progressActivityInterface);
        portion <- 0;
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "AndroidTitleProgressBar" (fun arguments -> Obj.repr (new androidTitleProgressBar (Obj.obj arguments)))


