(* Generated Code Do Not Modify *)
(* package org.allbinary.configuration *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.configuration.feature.Feature *)
(* import org.allbinary.game.configuration.feature.Features *)
(* import org.allbinary.game.configuration.feature.MainFeatureFactory *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonStrings *)

let instance : Obj.t ref = ref ((Obj.repr (NullUtil.getInstance ())#nULL_OBJECT))
let get_instance () = !instance
let set_instance value' = instance := value'
let () = java_register_static "ApplicationConfiguration.get_instance" (fun _ -> Obj.repr (get_instance ()))
class applicationConfiguration () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable fullscreen : bool = false
    method fullscreen = fullscreen
    method set_fullscreen value' = fullscreen <- value'
    val mutable showTitleBar : bool = false
    method showTitleBar = showTitleBar
    method set_showTitleBar value' = showTitleBar <- value'
    val mutable progressBarView : bool = false
    method progressBarView = progressBarView
    method set_progressBarView value' = progressBarView <- value'
    
    

    method read () : unit =
        begin
        (self#setFullscreen (true));
        (self#setProgressBarView (false));
        (self#setShowTitleBar (false));
        ignore ((Obj.magic logUtil)#putF (("Read Configuration: " ^ (java_string_of (Obj.repr self))), self, "read"))
        end
    

    method write () : unit =
        begin
        ()
        end
    

    method update : 'any1. 'any1 -> unit = fun (gameFeature) ->
        let gameFeature = Obj.repr gameFeature in
        begin
        if ((Obj.repr (Obj.magic gameFeature)) == (Obj.repr (MainFeatureFactory.getInstance ())#fULL_SCREEN)) then begin
            let features : Features.features ref = ref (((Features.getInstance ()) :> Features.features)) in ();
            if (!features#isFeature ((Obj.magic gameFeature))) then begin
                if (not (self#isFullscreen ())) then begin
                    (self#setFullscreen (true));
                    (self#write ())
                end
            end else begin
                if (self#isFullscreen ()) then begin
                    (self#setFullscreen (false));
                    (self#write ())
                end
            end
        end
        end [@@warning "-20"]
    

    method setFullscreen ((fullscreen_arg : bool)) : unit =
        begin
        fullscreen <- fullscreen_arg
        end
    

    method isFullscreen () : bool =
        begin
        fullscreen
        end
    

    method setShowTitleBar ((showTitleBar_arg : bool)) : unit =
        begin
        showTitleBar <- showTitleBar_arg
        end
    

    method isShowTitleBar () : bool =
        begin
        showTitleBar
        end
    

    method setProgressBarView ((progressBarView_arg : bool)) : unit =
        begin
        progressBarView <- progressBarView_arg
        end
    

    method isProgressBarView () : bool =
        begin
        progressBarView
        end
    

    method toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ("isFullscreen: "));
        ignore (!stringBuffer#appendboolean ((self#isFullscreen ())));
        ignore (!stringBuffer#append (" isProgressBarView: "));
        ignore (!stringBuffer#appendboolean ((self#isProgressBarView ())));
        ignore (!stringBuffer#append (" isShowTitleBar: "));
        ignore (!stringBuffer#appendboolean ((self#isShowTitleBar ())));
        (java_string_of (Obj.repr !stringBuffer))
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        fullscreen <- true;
        showTitleBar <- false;
        progressBarView <- false;
        ();
        (try
            (self#read ())
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, !commonStrings#cONSTRUCTOR, e))
        end)
      end
  end [@@warning "-20"]
let () = java_register_constructor "ApplicationConfiguration" (fun arguments -> Obj.repr (new applicationConfiguration (Obj.obj arguments)))

let getInstance () =
        begin
        if ((Obj.repr !instance) == (Obj.repr (NullUtil.getInstance ())#nULL_OBJECT)) then begin
            instance := (new applicationConfiguration ())
        end;
        (Obj.magic !instance)
        end
let () = java_register_static "ApplicationConfiguration.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


