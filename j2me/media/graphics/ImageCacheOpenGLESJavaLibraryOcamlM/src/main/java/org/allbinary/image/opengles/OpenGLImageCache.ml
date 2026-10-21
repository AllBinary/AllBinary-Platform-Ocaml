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
(* package org.allbinary.image.opengles *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.InputStream *)
(* import javax.microedition.khronos.opengles.GL10 *)
(* import javax.microedition.lcdui.Image *)
(* import javax.microedition.lcdui.NullImage *)
(* import org.allbinary.device.NullGL10 *)
(* import org.allbinary.graphics.opengles.renderer.AllBinaryRendererBase3 *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.image.ImageCache *)
(* import org.allbinary.image.ImageCacheFactory *)
(* import org.allbinary.image.PreResourceImageUtil *)
(* import org.allbinary.thread.SynchObject *)

class openGLImageCache () =
  object (self)
    inherit ImageCache.imageCache ()
    val mutable imageCache : Obj.t = Obj.repr 0
    method imageCache : 'r. 'r = Obj.magic imageCache
    method set_imageCache : 'v. 'v -> unit = fun value' -> imageCache <- Obj.repr value'
    val mutable preResourceImageUtil : Obj.t = Obj.repr 0
    method preResourceImageUtil : 'r. 'r = Obj.magic preResourceImageUtil
    method set_preResourceImageUtil : 'v. 'v -> unit = fun value' -> preResourceImageUtil <- Obj.repr value'
    val mutable gl : Obj.t = Obj.repr 0
    method gl : 'r. 'r = Obj.magic gl
    method set_gl : 'v. 'v -> unit = fun value' -> gl <- Obj.repr value'
    val mutable lock : SynchObject.synchObject = (Obj.magic 0)
    method lock = lock
    method set_lock value' = lock <- value'
    val mutable list : BasicArrayList.basicArrayList = (Obj.magic 0)
    method list = list
    method set_list value' = list <- value'
    val mutable renderer : AllBinaryRendererBase3.allBinaryRendererBase3 = (Obj.magic 0)
    method renderer = renderer
    method set_renderer value' = renderer <- value'
    
    

    method addListener : 'any1. 'any1 -> unit = fun (renderer_arg) ->
        let renderer_arg = Obj.repr renderer_arg in
        begin
        renderer <- (Obj.magic renderer_arg)
        end [@@warning "-7"]
    

    method update : 'any1. 'any1 -> unit = fun (gl_arg) ->
        let gl_arg = Obj.repr gl_arg in
        begin
        gl <- Obj.repr ((Obj.magic gl_arg));
        begin (* synchronized *)
            for index = ((list#size ()) - 1) downto 0 do
                let openGLESImage : Obj.t ref = ref ((Obj.repr ((Obj.magic list#objectArray.(index))))) in ();
                if ((Obj.repr (Obj.magic !openGLESImage)) != (Obj.repr (Obj.magic (java_call_static "OpenGLESImage.get_nULL_OPENGL_IMAGE" (Obj.repr ()))))) then begin
                    ignore ((Obj.magic !openGLESImage)#set ((Obj.magic gl_arg)))
                end
            done
        end
        end [@@warning "-7-20"]
    

    method createImage : 'return. string * int * int -> 'return = fun ((caller : string), (width : int), (height : int)) ->
        let width = ref width in
        let height = ref height in
        begin
        let textureSize : int ref = ref (!width) in ();
        if (!height > !width) then begin
            textureSize := !height
        end;
        while (((!textureSize mod 4)) <> 0) do
            textureSize := !textureSize + 1
        done;
        width := !textureSize;
        height := !textureSize;
        let image2 : Obj.t ref = ref ((Obj.repr ((Obj.magic imageCache)#get (caller, !width, !height)))) in ();
        let image : Obj.t ref = ref ((Obj.repr ((Obj.magic preResourceImageUtil)#encapsulate ((Obj.magic !image2))))) in ();
        begin (* synchronized *)
            if ((Obj.repr (Obj.magic !image)) != (Obj.repr (NullImage.get_nULL_IMAGE ()))) then begin
                ignore (list#add ((Obj.magic !image)))
            end
        end;
        (Obj.magic ((Obj.magic !image)))
        end [@@warning "-7"]
    

    method createImageFromInputStream : 'any1 'any2 'return. 'any1 * 'any2 -> 'return = fun (key, _inputStream) ->
        let key = Obj.repr key in
        begin
        let cachedImage : Obj.t ref = ref ((Obj.repr ((Obj.magic imageCache)#getWithKey (key)))) in ();
        let image : Obj.t ref = ref ((Obj.repr ((Obj.magic preResourceImageUtil)#encapsulate ((Obj.magic !cachedImage))))) in ();
        begin (* synchronized *)
            if ((Obj.repr (Obj.magic !image)) != (Obj.repr (NullImage.get_nULL_IMAGE ()))) then begin
                ignore (list#add ((Obj.magic !image)))
            end
        end;
        (Obj.magic ((Obj.magic !image)))
        end [@@warning "-7-20"]
    

    method getGlP : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic gl)))
        end [@@warning "-7"]
    

    method init : 'any1. 'any1 -> unit = fun (image) ->
        let image = Obj.repr image in
        begin
        (try
            begin (* synchronized *)
                if (list#contains ((Obj.magic image))) then begin
                    raise (Failure ("RuntimeException"))
                end;
                ignore (list#add ((Obj.magic image)))
            end;
            ignore (renderer#add ((Obj.magic image)))
        with e -> begin
            ignore (logUtil#put (commonStrings#eXCEPTION, self, commonStrings#iNIT, e))
        end)
        end [@@warning "-7-20"]

    initializer
      begin
        imageCache <- (Obj.repr (ImageCacheFactory.getInstance ()));
        preResourceImageUtil <- (Obj.repr (Obj.magic (java_call_static "PreResourceImageUtil.getInstance" (Obj.repr ()))));
        gl <- (Obj.repr (Obj.magic (java_call_static "NullGL10.get_nULL_GL10" (Obj.repr ()))));
        lock <- ((new SynchObject.synchObject ()) :> SynchObject.synchObject);
        list <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        renderer <- ((new AllBinaryRendererBase3.allBinaryRendererBase3 ()) :> AllBinaryRendererBase3.allBinaryRendererBase3);
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "OpenGLImageCache" (fun arguments -> Obj.repr (new openGLImageCache (Obj.obj arguments)))


