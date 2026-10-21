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
(* import javax.microedition.lcdui.Image *)
(* import org.allbinary.animation.AnimationBehaviorFactory *)
(* import org.allbinary.animation.NullAnimationFactory *)
(* import org.allbinary.animation.image.sprite.OneRowSpriteIndexedAnimationFactory *)
(* import org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory *)
(* import org.allbinary.game.configuration.feature.Features *)
(* import org.allbinary.game.resource.ResourceLoadingLevelFactory *)
(* import org.allbinary.graphics.canvas.transition.progress.ProgressCanvas *)
(* import org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory *)
(* import org.allbinary.graphics.opengles.OpenGLFeatureFactory *)
(* import org.allbinary.image.ImageCache *)
(* import org.allbinary.image.ImageCacheFactory *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.system.os.OperatingSystemFactory *)
(* import org.allbinary.media.image.ImageCompleteUtil *)

class touchButtonResourceAnimationInterfaceFactoryInterfaceFactory ((name : string)) =
  object (self)
    inherit BaseResourceAnimationInterfaceFactoryInterfaceFactory.baseResourceAnimationInterfaceFactoryInterfaceFactory (name, ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashtable ()), ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashtable ()), ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashtable ())) as super
    
    

    method init ((level : int)) : unit =
        begin
        (self#initImageCache ((ImageCacheFactory.getInstance ()), level))
        end [@@warning "-7"]
    

    method initImageCache : 'any1. 'any1 * int -> unit = fun (imageCache, (level : int)) ->
        let imageCache = Obj.repr imageCache in
        try
        begin
        if (self#isInitialized ()) then begin
            raise (Java_return (Obj.repr (())))
        end;
        let portion : int ref = ref (140) in ();
        let loadingString : string ref = ref ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ((java_string_of (Obj.repr self))))#append (" Loading: "))))) in ();
        let index : int ref = ref (0) in ();
        let progressCanvas : ProgressCanvas.progressCanvas ref = ref (((ProgressCanvasFactory.getInstance ()) :> ProgressCanvas.progressCanvas)) in ();
        ignore (!progressCanvas#addPortion (!portion, !loadingString, (let value = !index in index := !index + 1; value)));
        let touchButtonBlankResource : TouchButtonResource.touchButtonResource ref = ref (((TouchButtonBlankResource.getInstance ()) :> TouchButtonResource.touchButtonResource)) in ();
        let touchButtonGenericActionResource : TouchButtonResource.touchButtonResource ref = ref (((TouchButtonGenericActionResource.getInstance ()) :> TouchButtonResource.touchButtonResource)) in ();
        let touchButtonStartResource : TouchButtonResource.touchButtonResource ref = ref (((TouchButtonStartResource.getInstance ()) :> TouchButtonResource.touchButtonResource)) in ();
        let touchButtonUpResource : TouchButtonResource.touchButtonResource ref = ref (((TouchButtonUpResource.getInstance ()) :> TouchButtonResource.touchButtonResource)) in ();
        let touchButtonDownResource : TouchButtonResource.touchButtonResource ref = ref (((TouchButtonDownResource.getInstance ()) :> TouchButtonResource.touchButtonResource)) in ();
        let touchButtonTurnLeftResource : TouchButtonResource.touchButtonResource ref = ref (((TouchButtonTurnLeftResource.getInstance ()) :> TouchButtonResource.touchButtonResource)) in ();
        let touchButtonTurnRightResource : TouchButtonResource.touchButtonResource ref = ref (((TouchButtonTurnRightResource.getInstance ()) :> TouchButtonResource.touchButtonResource)) in ();
        let touchButtonStrafeLeftResource : TouchButtonResource.touchButtonResource ref = ref (((TouchButtonStrafeLeftResource.getInstance ()) :> TouchButtonResource.touchButtonResource)) in ();
        let touchButtonStrafeRightResource : TouchButtonResource.touchButtonResource ref = ref (((TouchButtonStrafeRightResource.getInstance ()) :> TouchButtonResource.touchButtonResource)) in ();
        let touchButtonBlankResourceImage : Obj.t ref = ref ((Obj.repr ((Obj.magic imageCache)#getWithKey (!touchButtonBlankResource#rESOURCE)))) in ();
        let touchButtonGenericActionResourceImage : Obj.t ref = ref ((Obj.repr ((Obj.magic imageCache)#getWithKey (!touchButtonGenericActionResource#rESOURCE)))) in ();
        let touchButtonStartResourceImage : Obj.t ref = ref ((Obj.repr ((Obj.magic imageCache)#getWithKey (!touchButtonStartResource#rESOURCE)))) in ();
        let touchButtonUpResourceImage : Obj.t ref = ref ((Obj.repr ((Obj.magic imageCache)#getWithKey (!touchButtonUpResource#rESOURCE)))) in ();
        let touchButtonDownResourceImage : Obj.t ref = ref ((Obj.repr ((Obj.magic imageCache)#getWithKey (!touchButtonDownResource#rESOURCE)))) in ();
        let touchButtonTurnLeftResourceImage : Obj.t ref = ref ((Obj.repr ((Obj.magic imageCache)#getWithKey (!touchButtonTurnLeftResource#rESOURCE)))) in ();
        let touchButtonTurnRightResourceImage : Obj.t ref = ref ((Obj.repr ((Obj.magic imageCache)#getWithKey (!touchButtonTurnRightResource#rESOURCE)))) in ();
        let touchButtonStrafeLeftResourceImage : Obj.t ref = ref ((Obj.repr ((Obj.magic imageCache)#getWithKey (!touchButtonStrafeLeftResource#rESOURCE)))) in ();
        let touchButtonStrafeRightResourceImage : Obj.t ref = ref ((Obj.repr ((Obj.magic imageCache)#getWithKey (!touchButtonStrafeRightResource#rESOURCE)))) in ();
        let nullAnimationFactory : NullAnimationFactory.nullAnimationFactory ref = ref (((NullAnimationFactory.getFactoryInstance ()) :> NullAnimationFactory.nullAnimationFactory)) in ();
        if (((Obj.magic (java_call_static "OperatingSystemFactory.getInstance" (Obj.repr ())))#getOperatingSystemInstance ())#isOverScan ()) then begin
            ignore ((Obj.magic imageCache)#getWithKey ((TouchButtonStartResource.getInstance ())#hINT))
        end;
        ignore (!progressCanvas#addPortion (!portion, !loadingString, (let value = !index in index := !index + 1; value)));
        let imageCompleteUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "ImageCompleteUtil.getInstance" (Obj.repr ()))))) in ();
        ignore (!progressCanvas#addPortion (!portion, !loadingString, (let value = !index in index := !index + 1; value)));
        ignore ((Obj.magic !imageCompleteUtil)#waitForImage ((Obj.magic !touchButtonBlankResourceImage), !touchButtonBlankResource#rESOURCE));
        ignore (self#add (!touchButtonBlankResource#rESOURCE, (OneRowSpriteIndexedAnimationFactory.createFactory ((Obj.magic !touchButtonBlankResourceImage), (AnimationBehaviorFactory.getInstance ())))));
        ignore (self#add (!touchButtonBlankResource#hINT, !nullAnimationFactory));
        ignore (!progressCanvas#addPortion (!portion, !loadingString, (let value = !index in index := !index + 1; value)));
        ignore ((Obj.magic !imageCompleteUtil)#waitForImage ((Obj.magic !touchButtonGenericActionResourceImage), !touchButtonGenericActionResource#rESOURCE));
        ignore (self#add (!touchButtonGenericActionResource#rESOURCE, (OneRowSpriteIndexedAnimationFactory.createFactory ((Obj.magic !touchButtonGenericActionResourceImage), (AnimationBehaviorFactory.getInstance ())))));
        ignore (self#add (!touchButtonGenericActionResource#hINT, !nullAnimationFactory));
        ignore (!progressCanvas#addPortion (!portion, !loadingString, (let value = !index in index := !index + 1; value)));
        ignore ((Obj.magic !imageCompleteUtil)#waitForImage ((Obj.magic !touchButtonStartResourceImage), !touchButtonStartResource#rESOURCE));
        ignore (self#add (!touchButtonStartResource#rESOURCE, (OneRowSpriteIndexedAnimationFactory.createFactory ((Obj.magic !touchButtonStartResourceImage), (AnimationBehaviorFactory.getInstance ())))));
        ignore (!progressCanvas#addPortion (!portion, !loadingString, (let value = !index in index := !index + 1; value)));
        ignore ((Obj.magic !imageCompleteUtil)#waitForImage ((Obj.magic !touchButtonUpResourceImage), !touchButtonUpResource#rESOURCE));
        ignore (self#add (!touchButtonUpResource#rESOURCE, (OneRowSpriteIndexedAnimationFactory.createFactory ((Obj.magic !touchButtonUpResourceImage), (AnimationBehaviorFactory.getInstance ())))));
        ignore (self#add (!touchButtonUpResource#hINT, !nullAnimationFactory));
        ignore (!progressCanvas#addPortion (!portion, !loadingString, (let value = !index in index := !index + 1; value)));
        ignore ((Obj.magic !imageCompleteUtil)#waitForImage ((Obj.magic !touchButtonDownResourceImage), !touchButtonDownResource#rESOURCE));
        ignore (self#add (!touchButtonDownResource#rESOURCE, (OneRowSpriteIndexedAnimationFactory.createFactory ((Obj.magic !touchButtonDownResourceImage), (AnimationBehaviorFactory.getInstance ())))));
        ignore (self#add (!touchButtonDownResource#hINT, !nullAnimationFactory));
        ignore (!progressCanvas#addPortion (!portion, !loadingString, (let value = !index in index := !index + 1; value)));
        ignore ((Obj.magic !imageCompleteUtil)#waitForImage ((Obj.magic !touchButtonTurnLeftResourceImage), !touchButtonTurnLeftResource#rESOURCE));
        ignore (self#add (!touchButtonTurnLeftResource#rESOURCE, (OneRowSpriteIndexedAnimationFactory.createFactory ((Obj.magic !touchButtonTurnLeftResourceImage), (AnimationBehaviorFactory.getInstance ())))));
        ignore (self#add (!touchButtonTurnLeftResource#hINT, !nullAnimationFactory));
        ignore (!progressCanvas#addPortion (!portion, !loadingString, (let value = !index in index := !index + 1; value)));
        ignore ((Obj.magic !imageCompleteUtil)#waitForImage ((Obj.magic !touchButtonTurnRightResourceImage), !touchButtonTurnRightResource#rESOURCE));
        ignore (self#add (!touchButtonTurnRightResource#rESOURCE, (OneRowSpriteIndexedAnimationFactory.createFactory ((Obj.magic !touchButtonTurnRightResourceImage), (AnimationBehaviorFactory.getInstance ())))));
        ignore (self#add (!touchButtonTurnRightResource#hINT, !nullAnimationFactory));
        ignore (!progressCanvas#addPortion (!portion, !loadingString, (let value = !index in index := !index + 1; value)));
        ignore ((Obj.magic !imageCompleteUtil)#waitForImage ((Obj.magic !touchButtonStrafeLeftResourceImage), !touchButtonStrafeLeftResource#rESOURCE));
        ignore (self#add (!touchButtonStrafeLeftResource#rESOURCE, (OneRowSpriteIndexedAnimationFactory.createFactory ((Obj.magic !touchButtonStrafeLeftResourceImage), (AnimationBehaviorFactory.getInstance ())))));
        ignore (self#add (!touchButtonStrafeLeftResource#hINT, !nullAnimationFactory));
        ignore (!progressCanvas#addPortion (!portion, !loadingString, (let value = !index in index := !index + 1; value)));
        ignore ((Obj.magic !imageCompleteUtil)#waitForImage ((Obj.magic !touchButtonStrafeRightResourceImage), !touchButtonStrafeRightResource#rESOURCE));
        ignore (self#add (!touchButtonStrafeRightResource#rESOURCE, (OneRowSpriteIndexedAnimationFactory.createFactory ((Obj.magic !touchButtonStrafeRightResourceImage), (AnimationBehaviorFactory.getInstance ())))));
        ignore (self#add (!touchButtonStrafeRightResource#hINT, !nullAnimationFactory));
        if (((Obj.magic (java_call_static "OperatingSystemFactory.getInstance" (Obj.repr ())))#getOperatingSystemInstance ())#isOverScan ()) then begin
            let touchButtonStartHintResource : Obj.t ref = ref ((Obj.repr ((Obj.magic imageCache)#getWithKey ((TouchButtonStartResource.getInstance ())#hINT)))) in ();
            ignore (self#add (!touchButtonStartResource#hINT, (OneRowSpriteIndexedAnimationFactory.createFactory ((Obj.magic !touchButtonStartHintResource), (AnimationBehaviorFactory.getInstance ())))))
        end else begin
            ignore (self#add (!touchButtonStartResource#hINT, !nullAnimationFactory))
        end;
        ignore (super#init (level))
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method isLoadingLevel ((level : int)) : bool =
        try
        begin
        let resourceLoadingLevelFactory : ResourceLoadingLevelFactory.resourceLoadingLevelFactory ref = ref (((ResourceLoadingLevelFactory.getInstance ()) :> ResourceLoadingLevelFactory.resourceLoadingLevelFactory)) in ();
        if (level = (!resourceLoadingLevelFactory#lOAD_TOUCH#getLevel ())) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr ((super#isLoadingLevel (level)))))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method isFeature () : bool =
        try
        begin
        if (not ((Features.getInstance ())#isDefault ((OpenGLFeatureFactory.getInstance ())#oPENGL))) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory" (fun arguments -> Obj.repr (new touchButtonResourceAnimationInterfaceFactoryInterfaceFactory (Obj.obj arguments)))

let createFactory () =
        begin
        (new touchButtonResourceAnimationInterfaceFactoryInterfaceFactory ("TouchButton Animations"))
        end
let () = java_register_static "TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory.createFactory" (fun arguments -> Obj.repr (createFactory (Obj.obj arguments)))


