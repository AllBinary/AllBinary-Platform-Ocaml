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
(* import java.io.Closeable *)
(* import java.io.DataInputStream *)
(* import java.io.InputStream *)
(* import java.io.OutputStream *)
(* import org.allbinary.TsUtil *)
(* import org.allbinary.logic.io.AbDataOutputStream *)
(* import org.allbinary.logic.io.FileStreamFactory *)
(* import org.allbinary.logic.io.StreamUtil *)
(* import org.allbinary.logic.io.file.FileFactory *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.game.configuration.event.ChangedGameFeatureListener *)
(* import org.allbinary.game.configuration.feature.Feature *)
(* import org.allbinary.game.configuration.feature.Features *)
(* import org.allbinary.game.configuration.feature.MainFeatureFactory *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.io.NullCloseable *)

let instance : Obj.t ref = ref ((Obj.repr (NullUtil.getInstance ())#nULL_OBJECT))
let get_instance () = !instance
let set_instance value' = instance := value'
let () = java_register_static "OpenGLConfiguration.get_instance" (fun _ -> Obj.repr (get_instance ()))
class openGLConfiguration () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable fILE : string = ""
    method fILE = fILE
    method set_fILE value' = fILE <- value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable tsUtil : Obj.t = Obj.repr 0
    method tsUtil : 'r. 'r = Obj.magic tsUtil
    method set_tsUtil : 'v. 'v -> unit = fun value' -> tsUtil <- Obj.repr value'
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
    
    

    method read () : unit =
        begin
        let openGLFeatureFactory : OpenGLFeatureFactory.openGLFeatureFactory ref = ref (((OpenGLFeatureFactory.getInstance ()) :> OpenGLFeatureFactory.openGLFeatureFactory)) in ();
        let fileInputStreamFactory : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "FileStreamFactory.getInstance" (Obj.repr ()))))) in ();
        let fileInputStream : Obj.t ref = ref ((Obj.repr ((Obj.magic !fileInputStreamFactory)#getFileInputStreamInstance ((StringUtil.getInstance ())#eMPTY_STRING, fILE)))) in ();
        let dataInputStream : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "DataInputStream" (Obj.repr ((Obj.magic !fileInputStream))))))) in ();
        let openGLValue : int ref = ref (((Obj.magic !dataInputStream)#readInt ())) in ();
        if (!openGLValue = 0) then begin
            (self#setOpenGL (false))
        end else if (!openGLValue = 1) then begin
            (self#setOpenGL (true))
        end else begin
            raise (Failure ("Invalid OpenGL Setting"))
        end;
        let version : string ref = ref (((Obj.magic !dataInputStream)#readUTF ())) in ();
        if (((Obj.magic tsUtil)#compareTo (!version, (!openGLFeatureFactory#oPENGL_AUTO_SELECT#getName ()))) == 0) then begin
            (self#setVersionSelector (!openGLFeatureFactory#oPENGL_AUTO_SELECT))
        end else if (((Obj.magic tsUtil)#compareTo (!version, (!openGLFeatureFactory#oPENGL_MINIMUM#getName ()))) == 0) then begin
            (self#setVersionSelector (!openGLFeatureFactory#oPENGL_MINIMUM))
        end else begin
            raise (Failure (("OpenGLConfiguration: Error reading version selector: " ^ !version)))
        end;
        let type__arg : string ref = ref (((Obj.magic !dataInputStream)#readUTF ())) in ();
        if (((Obj.magic tsUtil)#compareTo (!type__arg, (!openGLFeatureFactory#oPENGL_AS_GAME_THREAD#getName ()))) == 0) then begin
            (self#setType (!openGLFeatureFactory#oPENGL_AS_GAME_THREAD))
        end else if (((Obj.magic tsUtil)#compareTo (!type__arg, (!openGLFeatureFactory#oPENGL_AND_GAME_HAVE_DIFFERENT_THREADS#getName ()))) == 0) then begin
            (self#setType (!openGLFeatureFactory#oPENGL_AND_GAME_HAVE_DIFFERENT_THREADS))
        end else begin
            raise (Failure ("OpenGLConfiguration: Error reading image color"))
        end;
        let imageColor_arg : string ref = ref (((Obj.magic !dataInputStream)#readUTF ())) in ();
        if (((Obj.magic tsUtil)#compareTo (!imageColor_arg, (!openGLFeatureFactory#iMAGE_COLOR_DEPTH_4444#getName ()))) == 0) then begin
            (self#setImageColor (!openGLFeatureFactory#iMAGE_COLOR_DEPTH_4444))
        end else if (((Obj.magic tsUtil)#compareTo (!imageColor_arg, (!openGLFeatureFactory#iMAGE_COLOR_DEPTH_4444#getName ()))) == 0) then begin
            (self#setImageColor (!openGLFeatureFactory#iMAGE_COLOR_DEPTH_4444))
        end else if (((Obj.magic tsUtil)#compareTo (!imageColor_arg, (!openGLFeatureFactory#iMAGE_COLOR_DEPTH_4444#getName ()))) == 0) then begin
            (self#setImageColor (!openGLFeatureFactory#iMAGE_COLOR_DEPTH_4444))
        end else begin
            raise (Failure (("OpenGLConfiguration: Error reading image color: " ^ java_string_of (Obj.repr (!imageColor_arg)))))
        end;
        let color_arg : string ref = ref (((Obj.magic !dataInputStream)#readUTF ())) in ();
        if (((Obj.magic tsUtil)#compareTo (!color_arg, (!openGLFeatureFactory#oPENGL_COLOR_DEPTH_4444#getName ()))) == 0) then begin
            (self#setColor (!openGLFeatureFactory#oPENGL_COLOR_DEPTH_4444))
        end else if (((Obj.magic tsUtil)#compareTo (!color_arg, (!openGLFeatureFactory#oPENGL_COLOR_DEPTH_565#getName ()))) == 0) then begin
            (self#setColor (!openGLFeatureFactory#oPENGL_COLOR_DEPTH_565))
        end else if (((Obj.magic tsUtil)#compareTo (!color_arg, (!openGLFeatureFactory#oPENGL_COLOR_DEPTH_8888#getName ()))) == 0) then begin
            (self#setColor (!openGLFeatureFactory#oPENGL_COLOR_DEPTH_8888))
        end else begin
            raise (Failure (("OpenGLConfiguration: Error reading color: " ^ java_string_of (Obj.repr (!color_arg)))))
        end;
        ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr (("Read Configuration: " ^ (java_string_of (Obj.repr self))), self, "read"))))
        end
    

    method write () : unit =
        begin
        let closeable : Obj.t ref = ref ((Obj.repr (NullCloseable.get_nULL_CLOSEABLE ()))) in ();
        Fun.protect ~finally:(fun () -> 
            ignore ((StreamUtil.getInstance ())#close ((Obj.magic !closeable)))
        ) (fun () -> (try
            ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr (("Write Configuration: " ^ (java_string_of (Obj.repr self))), self, "write"))));
            let fileInputStreamFactory : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "FileStreamFactory.getInstance" (Obj.repr ()))))) in ();
            let fileOutputStream : Obj.t ref = ref ((Obj.repr ((Obj.magic !fileInputStreamFactory)#getFileOutputStreamInstance ((StringUtil.getInstance ())#eMPTY_STRING, fILE)))) in ();
            let dataOutputStream : AbDataOutputStream.abDataOutputStream ref = ref (((new AbDataOutputStream.abDataOutputStream ((Obj.magic !fileOutputStream))) :> AbDataOutputStream.abDataOutputStream)) in ();
            closeable := Obj.repr (!dataOutputStream);
            if (self#isOpenGL ()) then begin
                ignore (!dataOutputStream#writeInt (1))
            end else begin
                ignore (!dataOutputStream#writeInt (0))
            end;
            ignore (!dataOutputStream#writeUTF (((self#getVersionSelector ())#getName ())));
            ignore (!dataOutputStream#writeUTF (((self#getType ())#getName ())));
            ignore (!dataOutputStream#writeUTF (((self#getImageColor ())#getName ())));
            ignore (!dataOutputStream#writeUTF (((self#getColor ())#getName ())));
            ignore (!dataOutputStream#flush ())
        with e -> begin
            raise e
        end))
        end
    

    method init () : unit =
        begin
        let features : Features.features ref = ref (((Features.getInstance ()) :> Features.features)) in ();
        if ((ChangedGameFeatureListener.getInstance ())#isChangedFeature ((MainFeatureFactory.getInstance ())#sTATIC)) then begin
            let openGLFeatureFactory : OpenGLFeatureFactory.openGLFeatureFactory ref = ref (((OpenGLFeatureFactory.getInstance ()) :> OpenGLFeatureFactory.openGLFeatureFactory)) in ();
            if (self#isOpenGL ()) then begin
                if (((!features#isFeature (!openGLFeatureFactory#oPENGL_2D)) || (!features#isFeature (!openGLFeatureFactory#oPENGL_3D))) || (!features#isFeature (!openGLFeatureFactory#oPENGL_2D_AND_3D))) then begin
                    if (not (!features#isDefault ((OpenGLFeatureFactory.getInstance ())#oPENGL))) then begin
                        ignore ((Obj.magic logUtil)#putF ("Turning on OpenGL as Default", self, commonStrings#iNIT));
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
                    ignore ((Obj.magic logUtil)#putF ("OpenGL is enabled, but this game does not support OpenGL (Probably from installing with the same package name from a game that had OpenGL available)", self, commonStrings#iNIT))
                end
            end else begin
                ignore ((Obj.magic logUtil)#putF ("OpenGL is Off", self, commonStrings#iNIT))
            end
        end else begin
            if ((self#isOpenGL ()) && (not (!features#isDefault ((OpenGLFeatureFactory.getInstance ())#oPENGL)))) then begin
                ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ("OpenGL is set but not Enabled since statics where not cleared (Reboot or Complete exit is Required)", self, commonStrings#iNIT))))
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
        end;
        if !modified then begin
            (self#write ())
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
        fILE <- "OpenGLConfiguration.dat";
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        tsUtil <- (Obj.repr (Obj.magic (java_call_static "TsUtil.getInstance" (Obj.repr ()))));
        opengl <- false;
        type_ <- ((OpenGLFeatureFactory.getInstance ())#oPENGL_AS_GAME_THREAD :> OpenGLFeature.openGLFeature);
        imageColor <- ((OpenGLFeatureFactory.getInstance ())#iMAGE_COLOR_DEPTH_4444 :> OpenGLFeature.openGLFeature);
        color <- ((OpenGLFeatureFactory.getInstance ())#iMAGE_COLOR_DEPTH_4444 :> OpenGLFeature.openGLFeature);
        versionSelector <- ((OpenGLFeatureFactory.getInstance ())#oPENGL_AUTO_SELECT :> OpenGLFeature.openGLFeature);
        ();
        (try
            if ((Obj.magic (java_call_static "FileFactory.getInstance" (Obj.repr ())))#isFile (fILE)) then begin
                (self#read ())
            end else begin
                (self#write ())
            end
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, commonStrings#cONSTRUCTOR, e))
        end)
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


