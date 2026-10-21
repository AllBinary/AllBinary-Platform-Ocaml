(* Generated Code Do Not Modify *)
(* package org.allbinary.graphics.opengles *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.khronos.opengles.GL10 *)
(* import javax.microedition.lcdui.Image *)
(* import org.allbinary.device.LoadTextures *)
(* import org.allbinary.device.OpenGLESGraphics *)
(* import org.allbinary.graphics.canvas.transition.progress.ProgressCanvas *)
(* import org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory *)
(* import org.allbinary.graphics.displayable.CanvasStrings *)
(* import org.allbinary.graphics.displayable.DisplayInfoSingleton *)
(* import org.allbinary.graphics.opengles.renderer.RendererStrings *)
(* import org.allbinary.image.PreResourceImageUtil *)
(* import org.allbinary.image.opengles.OpenGLESImage *)
(* import org.allbinary.image.opengles.OpenGLImageCache *)
(* import org.allbinary.image.opengles.OpenGLImageCacheFactory *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.string.CommonLabels *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.thread.SynchObject *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class openGLUtil () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable renderStrings : RendererStrings.rendererStrings = (Obj.magic 0)
    method renderStrings = renderStrings
    method set_renderStrings value' = renderStrings <- value'
    val mutable canvasStrings : CanvasStrings.canvasStrings = (Obj.magic 0)
    method canvasStrings = canvasStrings
    method set_canvasStrings value' = canvasStrings <- value'
    val mutable displayInfoSingleton : DisplayInfoSingleton.displayInfoSingleton = (Obj.magic 0)
    method displayInfoSingleton = displayInfoSingleton
    method set_displayInfoSingleton value' = displayInfoSingleton <- value'
    val mutable preResourceImageUtil : Obj.t = Obj.repr 0
    method preResourceImageUtil : 'r. 'r = Obj.magic preResourceImageUtil
    method set_preResourceImageUtil : 'v. 'v -> unit = fun value' -> preResourceImageUtil <- Obj.repr value'
    val mutable lockObject : SynchObject.synchObject = (Obj.magic 0)
    method lockObject = lockObject
    method set_lockObject value' = lockObject <- value'
    val mutable anyType : SynchObject.synchObject = (Obj.magic 0)
    method anyType = anyType
    method set_anyType value' = anyType <- value'
    val mutable list : BasicArrayList.basicArrayList = (Obj.magic 0)
    method list = list
    method set_list value' = list <- value'
    val mutable runnableList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method runnableList = runnableList
    method set_runnableList value' = runnableList <- value'
    val mutable created : bool = false
    method created = created
    method set_created value' = created <- value'
    val mutable surfaceCreatedAndInitialized : bool = false
    method surfaceCreatedAndInitialized = surfaceCreatedAndInitialized
    method set_surfaceCreatedAndInitialized value' = surfaceCreatedAndInitialized <- value'
    

    method onSurfaceCreated : 'any1. 'any1 -> unit = fun (_gl) ->
        begin
        (try
            if (not created) then begin
                created <- true;
                ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr ((CommonLabels.getInstance ())#sTART_LABEL)) ^ (java_string_of (Obj.repr (Obj.magic (java_call_static "OpenGLCapabilities.getInstance" (Obj.repr ())))))), self, renderStrings#oN_SURFACE_CREATED))))
            end
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, renderStrings#oN_SURFACE_CREATED, e))
        end)
        end [@@warning "-20"]
    

    (* Java overload onSurfaceCreated(GL10, LoadTextures) is not converted: OCaml has one method per name *)
    

    method onSurfaceChanged : 'any1 'any2. 'any1 * 'any2 -> unit = fun (gl, graphics) ->
        let gl = Obj.repr gl in
        let graphics = Obj.repr graphics in
        begin
        if (not surfaceCreatedAndInitialized) then begin
            ignore ((Obj.magic graphics)#init ());
            surfaceCreatedAndInitialized <- true
        end;
        ignore ((Obj.magic graphics)#update ());
        let progressCanvas : ProgressCanvas.progressCanvas ref = ref (((ProgressCanvasFactory.getInstance ()) :> ProgressCanvas.progressCanvas)) in ();
        ignore (!progressCanvas#update ((Obj.magic graphics)));
        ignore (((Obj.magic (Obj.magic (java_call_static "OpenGLImageCacheFactory.getInstance" (Obj.repr ())))))#update ((Obj.magic gl)));
        (self#processRunnables ());
        (self#set ((Obj.magic gl)))
        end [@@warning "-20"]
    

    method addImage : 'any1 'return. 'any1 -> 'return = fun (image) ->
        let image = Obj.repr image in
        try
        begin
        let encapsulateImage : Obj.t ref = ref ((Obj.repr ((Obj.magic preResourceImageUtil)#encapsulate ((Obj.magic image))))) in ();
        if ((Obj.repr (Obj.magic !encapsulateImage)) != (Obj.repr (Obj.magic image))) then begin
            begin (* synchronized *)
                ignore (list#add ((Obj.magic !encapsulateImage)))
            end;
            raise (Java_return (Obj.repr ((Obj.magic !encapsulateImage))))
        end;
        (Obj.magic ((Obj.magic image)))
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method clear () : unit =
        begin
        begin (* synchronized *)
            ignore (list#clear ())
        end
        end
    

    method addRunnable ((runnable : java_runnable)) : unit =
        begin
        begin (* synchronized *)
            if (not (runnableList#contains (runnable))) then begin
                ignore (runnableList#add (runnable));
                ignore (displayInfoSingleton#add (canvasStrings#sCALED_IMAGES))
            end
        end
        end
    

    method processRunnables () : unit =
        begin
        begin (* synchronized *)
            let runnable : java_runnable ref = ref (((Obj.magic 0) :> java_runnable)) in ();
            let size : int ref = ref ((runnableList#size ())) in ();
            for index = 0 to !size - 1 do
                runnable := (Obj.magic (runnableList#get (index)));
                ignore (!runnable#run ())
            done;
            ignore (runnableList#clear ())
        end
        end
    

    method set : 'any1. 'any1 -> unit = fun (gl) ->
        let gl = Obj.repr gl in
        begin
        let size : int ref = ref ((list#size ())) in ();
        let image : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        for index2 = 0 to !size - 1 do
            image := Obj.repr ((Obj.magic (list#get (index2))));
            ignore ((Obj.magic !image)#set ((Obj.magic gl)))
        done
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        renderStrings <- ((RendererStrings.getInstance ()) :> RendererStrings.rendererStrings);
        canvasStrings <- ((CanvasStrings.getInstance ()) :> CanvasStrings.canvasStrings);
        displayInfoSingleton <- ((DisplayInfoSingleton.getInstance ()) :> DisplayInfoSingleton.displayInfoSingleton);
        preResourceImageUtil <- (Obj.repr (Obj.magic (java_call_static "PreResourceImageUtil.getInstance" (Obj.repr ()))));
        lockObject <- ((new SynchObject.synchObject ()) :> SynchObject.synchObject);
        anyType <- ((new SynchObject.synchObject ()) :> SynchObject.synchObject);
        list <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        runnableList <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        created <- false;
        surfaceCreatedAndInitialized <- false;
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "OpenGLUtil" (fun arguments -> Obj.repr (new openGLUtil (Obj.obj arguments)))

let instance = (new openGLUtil ())
let get_instance () = instance
let () = java_register_static "OpenGLUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "OpenGLUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


