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
(* package org.allbinary.image *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.InputStream *)
(* import javax.microedition.lcdui.Image *)
(* import javax.microedition.lcdui.NullImage *)
(* import org.allbinary.J2MEUtil *)
(* import org.allbinary.TsUtil *)
(* import org.allbinary.animation.image.LazyImageRotationAnimation *)
(* import org.allbinary.canvas.GameGlobalsFactory *)
(* import org.allbinary.canvas.Processor *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.data.resource.ResourceUtil *)
(* import org.allbinary.game.canvas.ABToGBUtil *)
(* import org.allbinary.game.displayable.canvas.AllBinaryGameCanvas *)
(* import org.allbinary.game.gd.resource.GDLazyResources *)
(* import org.allbinary.game.gd.resource.GDResources *)
(* import org.allbinary.graphics.canvas.transition.progress.ProgressCanvas *)
(* import org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.system.Memory *)
(* import org.allbinary.thread.BaseImageLoadingProcessor *)
(* import org.allbinary.thread.ConcurrentImageLoadingProcessor *)
(* import org.allbinary.thread.SynchObject *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.logic.ABSystemWrapper *)

class imageCache () =
  object (self)
    inherit ImageCacheBase.imageCacheBase ()
    val mutable tsUtil : Obj.t = Obj.repr 0
    method tsUtil : 'r. 'r = Obj.magic tsUtil
    method set_tsUtil : 'v. 'v -> unit = fun value' -> tsUtil <- Obj.repr value'
    val mutable concurrentImageLoadingProcessor : BaseImageLoadingProcessor.baseImageLoadingProcessor = (Obj.magic 0)
    method concurrentImageLoadingProcessor = concurrentImageLoadingProcessor
    method set_concurrentImageLoadingProcessor value' = concurrentImageLoadingProcessor <- value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable commonSeps : CommonSeps.commonSeps = (Obj.magic 0)
    method commonSeps = commonSeps
    method set_commonSeps value' = commonSeps <- value'
    val mutable resourceUtil : Obj.t = Obj.repr 0
    method resourceUtil : 'r. 'r = Obj.magic resourceUtil
    method set_resourceUtil : 'v. 'v -> unit = fun value' -> resourceUtil <- Obj.repr value'
    val mutable gameGlobalsFactory : GameGlobalsFactory.gameGlobalsFactory = (Obj.magic 0)
    method gameGlobalsFactory = gameGlobalsFactory
    method set_gameGlobalsFactory value' = gameGlobalsFactory <- value'
    val mutable gdResources : GDResources.gDResources = (Obj.magic 0)
    method gdResources = gdResources
    method set_gdResources value' = gdResources <- value'
    val mutable loadNowList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method loadNowList = loadNowList
    method set_loadNowList value' = loadNowList <- value'
    val mutable loadSoonList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method loadSoonList = loadSoonList
    method set_loadSoonList value' = loadSoonList <- value'
    val mutable loadList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method loadList = loadList
    method set_loadList value' = loadList <- value'
    val mutable loadAfterList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method loadAfterList = loadAfterList
    method set_loadAfterList value' = loadAfterList <- value'
    val mutable lock : SynchObject.synchObject = (Obj.magic 0)
    method lock = lock
    method set_lock value' = lock <- value'
    val mutable firstTime : bool = false
    method firstTime = firstTime
    method set_firstTime value' = firstTime <- value'
    val mutable totalLoaded : int = 0
    method totalLoaded = totalLoaded
    method set_totalLoaded value' = totalLoaded <- value'
    val mutable progressEnded : bool = false
    method progressEnded = progressEnded
    method set_progressEnded value' = progressEnded <- value'
    val mutable hasAnyLazyAnimationFactories : bool = false
    method hasAnyLazyAnimationFactories = hasAnyLazyAnimationFactories
    method set_hasAnyLazyAnimationFactories value' = hasAnyLazyAnimationFactories <- value'
    val mutable processor : Processor.processor = (Obj.magic 0)
    method processor = processor
    method set_processor value' = processor <- value'
    val mutable endProcessor : Processor.processor = (Obj.magic 0)
    method endProcessor = endProcessor
    method set_endProcessor value' = endProcessor <- value'
    val mutable lOAD_IMAGE_FOR_ANIMATION : string = ""
    method lOAD_IMAGE_FOR_ANIMATION = lOAD_IMAGE_FOR_ANIMATION
    method set_lOAD_IMAGE_FOR_ANIMATION value' = lOAD_IMAGE_FOR_ANIMATION <- value'
    
    

    method firstProcess () : unit =
        begin
        let logUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
        let isHTML : bool ref = ref ((J2MEUtil.isHTML ())) in ();
        if !isHTML then begin
            processor <- (Processor.getInstance ());
            endProcessor <- (new HTMLEndProcessor.hTMLEndProcessor ())
        end else begin
            processor <- (new NotHTMLProcessor.notHTMLProcessor ());
            endProcessor <- (new NotHTMLEndProcessor.notHTMLEndProcessor ());
            (try
                (self#runTask ())
            with e -> begin
                ignore ((Obj.magic !logUtil)#putF (commonStrings#eXCEPTION, self, commonStrings#eND_METHOD_NAME))
            end)
        end
        end [@@warning "-7"]
    

    method addListener : 'any1. 'any1 -> unit = fun (_renderer) ->
        begin
        ()
        end [@@warning "-7"]
    

    method waitForLoadNow () : unit =
        begin
        if firstTime then begin
            let abToGBUtil : ABToGBUtil.aBToGBUtil ref = ref (((ABToGBUtil.getInstance ()) :> ABToGBUtil.aBToGBUtil)) in ();
            let abCanvas : AllBinaryGameCanvas.allBinaryGameCanvas ref = ref (((Obj.magic !abToGBUtil#abCanvas) :> AllBinaryGameCanvas.allBinaryGameCanvas)) in ();
            while (((loadNowList#isEmpty ()) && (((not (!abCanvas#isInitialized ())) || (((!abCanvas#isInitialized ()) && hasAnyLazyAnimationFactories))))) && (not progressEnded)) do
                ignore (Unix.sleepf (Float.of_int (120) /. 1000.0))
            done;
            firstTime <- false
        end
        end [@@warning "-7"]
    

    method loadImageForAnimation () : unit =
        try
        begin
        let lazyImageRotationAnimation : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        begin (* synchronized *)
            if (loadNowList#isEmpty ()) then begin
                ignore (endProcessor#process ());
                if (loadSoonList#isEmpty ()) then begin
                    if (loadAfterList#isEmpty ()) then begin
                        if firstTime then begin
                            ()
                        end else if gameGlobalsFactory#newCanvas then begin
                            ()
                        end else begin
                            (self#loadNextImage ())
                        end;
                        raise (Java_return (Obj.repr (())))
                    end else begin
                        lazyImageRotationAnimation := Obj.repr ((Obj.magic (loadAfterList#get (0))));
                        if (self#loadImageForLazyAnimation ((Obj.magic !lazyImageRotationAnimation))) then begin
                            ignore (loadAfterList#remove ((Obj.magic !lazyImageRotationAnimation)))
                        end
                    end
                end else begin
                    lazyImageRotationAnimation := Obj.repr ((Obj.magic (loadSoonList#get (0))));
                    if (self#loadImageForLazyAnimation ((Obj.magic !lazyImageRotationAnimation))) then begin
                        ignore (loadSoonList#remove ((Obj.magic !lazyImageRotationAnimation)))
                    end
                end;
                raise (Java_return (Obj.repr (())))
            end;
            lazyImageRotationAnimation := Obj.repr ((Obj.magic (loadNowList#get (0))))
        end;
        if (self#loadImageForLazyAnimation ((Obj.magic !lazyImageRotationAnimation))) then begin
            begin (* synchronized *)
                ignore (loadNowList#remove ((Obj.magic !lazyImageRotationAnimation)))
            end;
            if ((Obj.magic !lazyImageRotationAnimation)#layoutIndex != 0) then begin
                let list : BasicArrayList.basicArrayList ref = ref (((self#getAssociated ((Obj.magic !lazyImageRotationAnimation))) :> BasicArrayList.basicArrayList)) in ();
                begin (* synchronized *)
                    let size : int ref = ref ((!list#size ())) in ();
                    if (!size > 0) then begin
                        ignore (loadSoonList#addAllList (!list))
                    end
                end
            end;
            let progressCanvas : ProgressCanvas.progressCanvas ref = ref (((ProgressCanvasFactory.getInstance ()) :> ProgressCanvas.progressCanvas)) in ();
            let isHTML : bool ref = ref ((J2MEUtil.isHTML ())) in ();
            if ((loadNowList#isEmpty ()) && (((not !isHTML) || firstTime))) then begin
                ignore (!progressCanvas#endFromInitialLazyLoadingComplete ())
            end else begin
                if ((totalLoaded mod 10) = 0) then begin
                    ignore (!progressCanvas#addNormalPortion (1, lOAD_IMAGE_FOR_ANIMATION))
                end
            end
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method loadImages () : unit =
        begin
        while ((not (loadList#isEmpty ())) || (not (loadNowList#isEmpty ()))) do
            (self#loadImageForAnimations ());
            (self#loadNextImage ())
        done
        end [@@warning "-7"]
    

    method loadImageForAnimations () : unit =
        begin
        while (not (loadNowList#isEmpty ())) do
            (self#loadImageForAnimation ())
        done
        end [@@warning "-7"]
    

    method loadRemainingAnimations () : unit =
        begin
        while ((not (loadAfterList#isEmpty ())) || (not (loadNowList#isEmpty ()))) do
            while (not (loadNowList#isEmpty ())) do
                (self#loadImageForAnimation ())
            done;
            let lazyImageRotationAnimation : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
            begin (* synchronized *)
                if (not (loadAfterList#isEmpty ())) then begin
                    lazyImageRotationAnimation := Obj.repr ((Obj.magic (loadAfterList#removeAt (0))))
                end
            end;
            if ((Obj.magic !lazyImageRotationAnimation) != (Obj.magic 0)) then begin
                ignore (self#loadImageForLazyAnimation ((Obj.magic !lazyImageRotationAnimation)))
            end
        done
        end [@@warning "-7"]
    

    method loadImageForLazyAnimation : 'any1. 'any1 -> bool = fun (lazyImageRotationAnimation) ->
        let lazyImageRotationAnimation = Obj.repr lazyImageRotationAnimation in
        try
        begin
        let image : Obj.t ref = ref ((Obj.repr ((Obj.magic lazyImageRotationAnimation)#animationInterfaceFactoryInterface#getImage ()))) in ();
        if (self#loadImage ((Obj.magic !image))) then begin
            ignore ((Obj.magic lazyImageRotationAnimation)#setRealAnimation ());
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method loadNextImage () : unit =
        try
        begin
        let image : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        begin (* synchronized *)
            if ((loadList#size ()) = 0) then begin
                raise (Java_return (Obj.repr (())))
            end;
            image := Obj.repr ((Obj.magic (loadList#removeAt (0))))
        end;
        ignore (self#loadImage ((Obj.magic !image)))
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method loadImage : 'any1. 'any1 -> bool = fun (image) ->
        let image = Obj.repr image in
        try
        begin
        if ((Obj.magic image)#isReady ()) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            if (((Obj.magic image)#getImage ()) != (Obj.magic 0)) then begin
                if ((Obj.magic image)#setReady ()) then begin
                    if ((Obj.magic image)#isReady ()) then begin
                        totalLoaded <- totalLoaded + 1;
                        raise (Java_return (Obj.repr (true)))
                    end
                end
            end else begin
                let key : string ref = ref (((Obj.magic image)#getName ())) in ();
                let image2 : Obj.t ref = ref ((Obj.repr (self#creatImage (!key)))) in ();
                if ((Obj.magic !image2)#isReady ()) then begin
                    (self#init ((Obj.magic image), (Obj.magic !image2)));
                    raise (Java_return (Obj.repr (true)))
                end else begin
                    ignore ((Obj.magic image)#setImage (((Obj.magic !image2)#getImage ())))
                end
            end
        end;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method init : 'any1 'any2. 'any1 * 'any2 -> unit = fun (image, image2) ->
        let image = Obj.repr image in
        let image2 = Obj.repr image2 in
        begin
        ignore ((Obj.magic image)#init (((Obj.magic image2)#getImage ())))
        end [@@warning "-7-20"]
    

    method creatImage : 'return. string -> 'return = fun ((key : string)) ->
        begin
        let inputStream : Obj.t ref = ref ((Obj.repr ((Obj.magic resourceUtil)#getResourceAsStream (key)))) in ();
        let image : Obj.t ref = ref ((Obj.repr ((ImageFactory.getInstance ())#createImageFromInputStream ((Obj.magic !inputStream))))) in ();
        ignore ((Obj.magic !image)#setName (key));
        (Obj.magic ((Obj.magic !image)))
        end [@@warning "-7"]
    

    method get : 'return. string * int * int -> 'return = fun ((caller : string), (width : int), (height : int)) ->
        begin
        let foundIndex : int ref = ref ((self#getIndexWH (width, height))) in ();
        let image : Obj.t ref = ref ((Obj.repr (self#getFromAvailable (!foundIndex, width, height)))) in ();
        if ((Obj.repr (Obj.magic !image)) == (Obj.repr (NullImage.get_nULL_IMAGE ()))) then begin
            volume <- (volume + (width * height));
            if (volume > 32000) then begin
                ignore ((Obj.magic tsUtil)#gc ());
                volume <- 0
            end;
            image := Obj.repr ((self#createImage (caller, width, height)));
            if (nextIndex > ((Array.length widths) - 1)) then begin
                if (!foundIndex = (-1)) then begin
                    foundIndex := nextIndex;
                    widths.(nextIndex) <- (Obj.magic (width));
                    heights.(nextIndex) <- (Obj.magic (height));
                    nextIndex <- nextIndex + 1
                end;
                ignore (listOfList.(!foundIndex)#add ((Obj.magic !image)))
            end
        end;
        (Obj.magic ((Obj.magic !image)))
        end [@@warning "-7"]
    

    method getWithKey : 'any1 'return. 'any1 -> 'return = fun (key) ->
        let key = Obj.repr key in
        begin
        let image : Obj.t ref = ref ((Obj.repr (self#getImage (key)))) in ();
        if ((Obj.repr (Obj.magic !image)) == (Obj.repr (NullImage.get_nULL_IMAGE ()))) then begin
            let inputStream : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
            (try
                image := Obj.repr ((self#createImageFromInputStream (key, (Obj.magic !inputStream))))
            with e -> begin
                ignore (logUtil#put ("Exception: Trying Again After GC", self, commonStrings#gET, e));
                ignore (logUtil#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("InputStream: "))#append (((StringUtil.getInstance ())#toString ((Obj.magic !inputStream))))))), self, commonStrings#gET));
                ignore ((Obj.magic tsUtil)#gc ());
                ignore ((Obj.magic tsUtil)#gc ());
                ignore (logUtil#putF ((Memory.getInfo ()), self, commonStrings#gET));
                ignore (Unix.sleepf (Float.of_int (100) /. 1000.0));
                image := Obj.repr ((self#createImageFromInputStream (key, (Obj.magic !inputStream))))
            end);
            ignore (hashtable#put (key, (Obj.magic !image)))
        end;
        (Obj.magic ((Obj.magic !image)))
        end [@@warning "-7"]
    

    method getIndex : 'any1. 'any1 -> int = fun (key) ->
        let key = Obj.repr key in
        try
        begin
        let gdResources_arg : GDResources.gDResources ref = ref (((GDResources.getInstance ()) :> GDResources.gDResources)) in ();
        let resourceStringArray : string array ref = ref (!gdResources_arg#resourceStringArray) in ();
        let size : int ref = ref ((Array.length !resourceStringArray)) in ();
        for index = 0 to !size - 1 do
            if (!resourceStringArray.(index) == key) then begin
                raise (Java_return (Obj.repr (index)))
            end
        done;
        ignore (logUtil#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("unable to find key: "))#append (((StringUtil.getInstance ())#toString (key)))))), self, commonStrings#rUN));
        raise (Failure ("RuntimeException"))
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method createImageFromInputStream : 'any1 'any2 'return. 'any1 * 'any2 -> 'return = fun (key, _inputStream) ->
        let key = Obj.repr key in
        try
        begin
        let gdLazyResources : GDLazyResources.gDLazyResources ref = ref (((GDLazyResources.getInstance ()) :> GDLazyResources.gDLazyResources)) in ();
        let resourceStringArray : string array ref = ref (!gdLazyResources#requiredResourcesBeforeLoadingArray) in ();
        let size : int ref = ref ((Array.length !resourceStringArray)) in ();
        for index = 0 to !size - 1 do
            if (key = !resourceStringArray.(index)) then begin
                raise (Java_return (Obj.repr ((self#creatImage ((Obj.magic key))))))
            end
        done;
        (self#runTask ());
        let index : int ref = ref ((self#getIndex (key))) in ();
        let width : int ref = ref (!gdLazyResources#imageResourceWidthArray.(!index)) in ();
        let height : int ref = ref (!gdLazyResources#imageResourceHeightArray.(!index)) in ();
        let image : Obj.t ref = ref ((Obj.repr (self#createImageLater ((Obj.magic key), !width, !height)))) in ();
        begin (* synchronized *)
            ignore (loadList#add ((Obj.magic !image)))
        end;
        (Obj.magic ((Obj.magic !image)))
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method createImageLater : 'return. string * int * int -> 'return = fun ((key : string), (width : int), (height : int)) ->
        begin
        (Obj.magic ((Obj.magic (java_call_static "Image.createImageLater" (Obj.repr (key, width, height))))))
        end [@@warning "-7"]
    

    method getAssociated : 'any1. 'any1 -> BasicArrayList.basicArrayList = fun (lazyImageRotationAnimation) ->
        let lazyImageRotationAnimation = Obj.repr lazyImageRotationAnimation in
        begin
        let list : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        begin (* synchronized *)
            let lazyImageRotationAnimation2 : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
            let size : int ref = ref ((loadAfterList#size ())) in ();
            for index = 0 to !size - 1 do
                lazyImageRotationAnimation2 := Obj.repr ((Obj.magic (loadAfterList#get (index))));
                if ((Obj.repr (Obj.magic !lazyImageRotationAnimation2)#instanceId) == (Obj.repr (Obj.magic lazyImageRotationAnimation)#instanceId)) then begin
                    ignore (!list#add ((Obj.magic !lazyImageRotationAnimation2)))
                end
            done;
            let size2 : int ref = ref ((!list#size ())) in ();
            for index = 0 to !size2 - 1 do
                ignore (loadAfterList#remove ((!list#get (index))))
            done
        end;
        (!list :> BasicArrayList.basicArrayList)
        end [@@warning "-7-20"]
    

    method add : 'any1. 'any1 -> unit = fun (lazyImageRotationAnimation) ->
        let lazyImageRotationAnimation = Obj.repr lazyImageRotationAnimation in
        begin
        begin (* synchronized *)
            ignore (loadAfterList#add ((Obj.magic lazyImageRotationAnimation)))
        end
        end [@@warning "-7-20"]
    

    method insertFirst : 'any1. 'any1 -> unit = fun (lazyImageRotationAnimation) ->
        let lazyImageRotationAnimation = Obj.repr lazyImageRotationAnimation in
        begin
        if (loadNowList#contains ((Obj.magic lazyImageRotationAnimation))) then begin
            ()
        end else begin
            begin (* synchronized *)
                ignore (loadNowList#add ((Obj.magic lazyImageRotationAnimation)));
                ignore (loadAfterList#remove ((Obj.magic lazyImageRotationAnimation)))
            end
        end;
        (self#runTask ())
        end [@@warning "-7-20"]
    

    method progressEnded () : unit =
        begin
        progressEnded <- true
        end [@@warning "-7"]
    

    method runTask () : unit =
        begin
        ignore (processor#process ())
        end [@@warning "-7"]
    

    method initProgress () : unit =
        begin
        if firstTime then begin
            firstTime <- false
        end
        end [@@warning "-7"]
    

    method isLazy () : bool =
        begin
        true
        end [@@warning "-7"]

    initializer
      begin
        tsUtil <- (Obj.repr (Obj.magic (java_call_static "TsUtil.getInstance" (Obj.repr ()))));
        concurrentImageLoadingProcessor <- ((new ConcurrentImageLoadingProcessor.concurrentImageLoadingProcessor (self)) :> BaseImageLoadingProcessor.baseImageLoadingProcessor);
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        commonSeps <- ((CommonSeps.getInstance ()) :> CommonSeps.commonSeps);
        resourceUtil <- (Obj.repr (Obj.magic (java_call_static "ResourceUtil.getInstance" (Obj.repr ()))));
        gameGlobalsFactory <- ((GameGlobalsFactory.getInstance ()) :> GameGlobalsFactory.gameGlobalsFactory);
        gdResources <- ((GDResources.getInstance ()) :> GDResources.gDResources);
        loadNowList <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        loadSoonList <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        loadList <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        loadAfterList <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        lock <- ((new SynchObject.synchObject ()) :> SynchObject.synchObject);
        firstTime <- true;
        totalLoaded <- 0;
        progressEnded <- false;
        hasAnyLazyAnimationFactories <- false;
        processor <- ((new FirstProcessor.firstProcessor ()) :> Processor.processor);
        endProcessor <- ((Processor.getInstance ()) :> Processor.processor);
        lOAD_IMAGE_FOR_ANIMATION <- "Load Image Animation";
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "ImageCache" (fun arguments -> Obj.repr (new imageCache (Obj.obj arguments)))

let nULL_IMAGE_CACHE = (new imageCache ())
let get_nULL_IMAGE_CACHE () = nULL_IMAGE_CACHE
let () = java_register_static "ImageCache.get_nULL_IMAGE_CACHE" (fun _ -> Obj.repr (get_nULL_IMAGE_CACHE ()))


