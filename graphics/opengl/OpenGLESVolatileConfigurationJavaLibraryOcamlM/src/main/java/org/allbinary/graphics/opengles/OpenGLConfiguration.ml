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
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.game.configuration.event.ChangedGameFeatureListener *)
(* import org.allbinary.game.configuration.feature.Feature *)
(* import org.allbinary.game.configuration.feature.Features *)
(* import org.allbinary.game.configuration.feature.MainFeatureFactory *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.string.StringUtil *)

let instance : Obj.t ref = ref ((Obj.repr (NullUtil.getInstance ())#nULL_OBJECT))
let get_instance () = !instance
let set_instance value' = instance := value'
let () = java_register_static "OpenGLConfiguration.get_instance" (fun _ -> Obj.repr (get_instance ()))
class openGLConfiguration () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable opengl : bool = false
    method opengl = opengl
    method set_opengl value' = opengl <- value'
    val mutable type_ : OpenGLFeature.openGLFeature = (Obj.magic 0)
    method type_ = type_
    method set_type_ value' = type_ <- value'
    val mutable imageColor : OpenGLFeature.openGLFeature = (Obj.magic 0)
    method imageColor = imageColor
    method set_imageColor value' = imageColor <- value'
    val mutable color : OpenGLFeature.openGLFeature = (Obj.magic 0)
    method color = color
    method set_color value' = color <- value'
    val mutable versionSelector : OpenGLFeature.openGLFeature = (Obj.magic 0)
    method versionSelector = versionSelector
    method set_versionSelector value' = versionSelector <- value'
    
    

    method write () : unit =
        begin
        ()
        end
    

    method init () : unit =
        begin
        let features : Features.features ref = ref (((Features.getInstance ()) :> Features.features)) in ();
        if ((ChangedGameFeatureListener.getInstance ())#isChangedFeature ((MainFeatureFactory.getInstance ())#sTATIC)) then begin
            if (self#isOpenGL ()) then begin
                if (not (!features#isDefault ((OpenGLFeatureFactory.getInstance ())#oPENGL))) then begin
                    ignore ((Obj.magic logUtil)#putF ("Turning on OpenGL", self, commonStrings#iNIT));
                    ignore (!features#addDefault ((OpenGLFeatureFactory.getInstance ())#oPENGL));
                    ignore ((Obj.magic logUtil)#putF (("Using OpenGL Type Feature: " ^ java_string_of (Obj.repr ((self#getType ())))), self, commonStrings#iNIT));
                    ignore (!features#addDefault ((self#getType ())));
                    ignore ((Obj.magic logUtil)#putF (("Using OpenGL ImageColor Feature: " ^ java_string_of (Obj.repr ((self#getImageColor ())))), self, commonStrings#iNIT));
                    ignore (!features#addDefault ((self#getImageColor ())));
                    ignore ((Obj.magic logUtil)#putF (("Using OpenGL Color Feature: " ^ java_string_of (Obj.repr ((self#getColor ())))), self, commonStrings#iNIT));
                    ignore (!features#addDefault ((self#getColor ())));
                    ignore ((Obj.magic logUtil)#putF (("Using OpenGL Version Selector Feature: " ^ java_string_of (Obj.repr ((self#getVersionSelector ())))), self, commonStrings#iNIT));
                    ignore (!features#addDefault ((self#getVersionSelector ())))
                end
            end else begin
                ignore ((Obj.magic logUtil)#putF ("OpenGL is Off", self, commonStrings#iNIT))
            end
        end else begin
            if ((self#isOpenGL ()) && (not (!features#isDefault ((OpenGLFeatureFactory.getInstance ())#oPENGL)))) then begin
                ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ("OpenGL is set but not Enabled since Statics where not cleared (Reboot or Complete exit is Required)", self, commonStrings#iNIT))))
            end
        end;
        ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr self)), self, commonStrings#iNIT))))
        end
    

    method update : 'any1. 'any1 * bool -> unit = fun (gameFeature, (colorLocked : bool)) ->
        let gameFeature = Obj.repr gameFeature in
        begin
        let features : Features.features ref = ref (((Features.getInstance ()) :> Features.features)) in ();
        let openGLFeatureFactory : OpenGLFeatureFactory.openGLFeatureFactory ref = ref (((OpenGLFeatureFactory.getInstance ()) :> OpenGLFeatureFactory.openGLFeatureFactory)) in ();
        let modified : bool ref = ref (false) in ();
        if ((Obj.repr (Obj.magic gameFeature)) == (Obj.repr !openGLFeatureFactory#oPENGL)) then begin
            if (!features#isFeature ((Obj.magic gameFeature))) then begin
                if (not (self#isOpenGL ())) then begin
                    (self#setOpenGL (true));
                    modified := true
                end
            end else begin
                if (self#isOpenGL ()) then begin
                    (self#setOpenGL (false));
                    modified := true
                end
            end
        end;
        if (((Obj.repr (Obj.magic gameFeature)) == (Obj.repr !openGLFeatureFactory#oPENGL_AND_GAME_HAVE_DIFFERENT_THREADS)) || ((Obj.repr (Obj.magic gameFeature)) == (Obj.repr !openGLFeatureFactory#oPENGL_AS_GAME_THREAD))) then begin
            if (!features#isFeature ((Obj.magic gameFeature))) then begin
                if ((Obj.repr (Obj.magic gameFeature)) != (Obj.repr (self#getType ()))) then begin
                    (self#setType ((Obj.magic (Obj.magic gameFeature))));
                    modified := true
                end
            end
        end;
        if ((((Obj.repr (Obj.magic gameFeature)) == (Obj.repr !openGLFeatureFactory#iMAGE_COLOR_DEPTH_4444)) || ((Obj.repr (Obj.magic gameFeature)) == (Obj.repr !openGLFeatureFactory#iMAGE_COLOR_DEPTH_565))) || ((Obj.repr (Obj.magic gameFeature)) == (Obj.repr !openGLFeatureFactory#iMAGE_COLOR_DEPTH_8888))) then begin
            if (!features#isFeature ((Obj.magic gameFeature))) then begin
                if ((Obj.repr (self#getImageColor ())) != (Obj.repr (Obj.magic gameFeature))) then begin
                    (self#setImageColor ((Obj.magic (Obj.magic gameFeature))));
                    if colorLocked then begin
                        if ((Obj.repr (Obj.magic gameFeature)) == (Obj.repr !openGLFeatureFactory#iMAGE_COLOR_DEPTH_4444)) then begin
                            (self#setColor (!openGLFeatureFactory#oPENGL_COLOR_DEPTH_4444))
                        end else if ((Obj.repr (Obj.magic gameFeature)) == (Obj.repr !openGLFeatureFactory#iMAGE_COLOR_DEPTH_565)) then begin
                            (self#setColor (!openGLFeatureFactory#oPENGL_COLOR_DEPTH_565))
                        end else if ((Obj.repr (Obj.magic gameFeature)) == (Obj.repr !openGLFeatureFactory#iMAGE_COLOR_DEPTH_8888)) then begin
                            (self#setColor (!openGLFeatureFactory#oPENGL_COLOR_DEPTH_8888))
                        end
                    end;
                    modified := true
                end
            end
        end;
        if ((((Obj.repr (Obj.magic gameFeature)) == (Obj.repr !openGLFeatureFactory#oPENGL_COLOR_DEPTH_4444)) || ((Obj.repr (Obj.magic gameFeature)) == (Obj.repr !openGLFeatureFactory#oPENGL_COLOR_DEPTH_565))) || ((Obj.repr (Obj.magic gameFeature)) == (Obj.repr !openGLFeatureFactory#oPENGL_COLOR_DEPTH_8888))) then begin
            if (!features#isFeature ((Obj.magic gameFeature))) then begin
                if ((Obj.repr (self#getColor ())) != (Obj.repr (Obj.magic gameFeature))) then begin
                    (self#setColor ((Obj.magic (Obj.magic gameFeature))));
                    modified := true
                end
            end
        end;
        if (((Obj.repr (Obj.magic gameFeature)) == (Obj.repr !openGLFeatureFactory#oPENGL_AUTO_SELECT)) || ((Obj.repr (Obj.magic gameFeature)) == (Obj.repr !openGLFeatureFactory#oPENGL_MINIMUM))) then begin
            if (!features#isFeature ((Obj.magic gameFeature))) then begin
                (self#setVersionSelector ((Obj.magic (Obj.magic gameFeature))))
            end;
            modified := true
        end
        end [@@warning "-20"]
    

    method setOpenGL ((opengl_arg : bool)) : unit =
        begin
        opengl <- opengl_arg
        end
    

    method isOpenGL () : bool =
        begin
        opengl
        end
    

    method setImageColor : 'any1. 'any1 -> unit = fun (imageColor_arg) ->
        let imageColor_arg = Obj.repr imageColor_arg in
        begin
        imageColor <- (Obj.magic imageColor_arg)
        end [@@warning "-20"]
    

    method getImageColor () : OpenGLFeature.openGLFeature =
        begin
        (imageColor :> OpenGLFeature.openGLFeature)
        end
    

    method setColor : 'any1. 'any1 -> unit = fun (color_arg) ->
        let color_arg = Obj.repr color_arg in
        begin
        color <- (Obj.magic color_arg)
        end [@@warning "-20"]
    

    method getColor () : OpenGLFeature.openGLFeature =
        begin
        (color :> OpenGLFeature.openGLFeature)
        end
    

    method setVersionSelector : 'any1. 'any1 -> unit = fun (versionSelector_arg) ->
        let versionSelector_arg = Obj.repr versionSelector_arg in
        begin
        versionSelector <- (Obj.magic versionSelector_arg)
        end [@@warning "-20"]
    

    method getVersionSelector () : OpenGLFeature.openGLFeature =
        begin
        (versionSelector :> OpenGLFeature.openGLFeature)
        end
    

    method setType : 'any1. 'any1 -> unit = fun (type__arg) ->
        let type__arg = Obj.repr type__arg in
        begin
        type_ <- (Obj.magic type__arg)
        end [@@warning "-20"]
    

    method getType () : OpenGLFeature.openGLFeature =
        begin
        (type_ :> OpenGLFeature.openGLFeature)
        end
    

    method toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let stringUtil : StringUtil.stringUtil ref = ref (((StringUtil.getInstance ()) :> StringUtil.stringUtil)) in ();
        ignore (!stringBuffer#append (" isOpenGL: "));
        ignore (!stringBuffer#appendboolean ((self#isOpenGL ())));
        ignore (!stringBuffer#append (" VersionSelector: "));
        ignore (!stringBuffer#append ((!stringUtil#toString ((self#getVersionSelector ())))));
        ignore (!stringBuffer#append (" Type: "));
        ignore (!stringBuffer#append ((!stringUtil#toString ((self#getType ())))));
        ignore (!stringBuffer#append (" Image Color: "));
        ignore (!stringBuffer#append ((!stringUtil#toString ((self#getImageColor ())))));
        ignore (!stringBuffer#append (" Color: "));
        ignore (!stringBuffer#append ((!stringUtil#toString ((self#getColor ())))));
        (java_string_of (Obj.repr !stringBuffer))
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        opengl <- false;
        type_ <- ((OpenGLFeatureFactory.getInstance ())#oPENGL_AS_GAME_THREAD :> OpenGLFeature.openGLFeature);
        imageColor <- ((OpenGLFeatureFactory.getInstance ())#iMAGE_COLOR_DEPTH_4444 :> OpenGLFeature.openGLFeature);
        color <- ((OpenGLFeatureFactory.getInstance ())#iMAGE_COLOR_DEPTH_4444 :> OpenGLFeature.openGLFeature);
        versionSelector <- ((OpenGLFeatureFactory.getInstance ())#oPENGL_AUTO_SELECT :> OpenGLFeature.openGLFeature);
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "OpenGLConfiguration" (fun arguments -> Obj.repr (new openGLConfiguration (Obj.obj arguments)))

let getInstance () =
        begin
        if ((Obj.repr !instance) == (Obj.repr (NullUtil.getInstance ())#nULL_OBJECT)) then begin
            instance := (new openGLConfiguration ())
        end;
        (Obj.magic !instance)
        end
let () = java_register_static "OpenGLConfiguration.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


