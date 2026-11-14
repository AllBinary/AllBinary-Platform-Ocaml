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
(* package org.allbinary.animation.image *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Image *)
(* import org.allbinary.animation.Animation *)
(* import org.allbinary.animation.AnimationBehaviorFactory *)
(* import org.allbinary.animation.AnimationInterfaceFactoryInterface *)
(* import org.allbinary.animation.NullAnimationFactory *)
(* import org.allbinary.image.AnimationFactoryImageScaleUtil *)
(* import org.allbinary.logic.communication.log.ForcedLogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.media.ScaleProperties *)
(* import org.allbinary.string.CommonLabels *)
(* import org.allbinary.string.CommonSeps *)

class baseImageAnimationFactory (image_arg, (sequenceArray_arg : int array), (width : int), (height : int), (dx : int), (dy : int), (animationBehaviorFactory_arg : AnimationBehaviorFactory.animationBehaviorFactory)) =
  object (self)
    val mutable animationFactoryImageScaleUtil : Obj.t = Obj.repr 0
    method animationFactoryImageScaleUtil : 'r. 'r = Obj.magic animationFactoryImageScaleUtil
    method set_animationFactoryImageScaleUtil : 'v. 'v -> unit = fun value' -> animationFactoryImageScaleUtil <- Obj.repr value'
    val mutable image : Obj.t = Obj.repr 0
    method image : 'r. 'r = Obj.magic image
    method set_image : 'v. 'v -> unit = fun value' -> image <- Obj.repr value'
    val mutable animationBehaviorFactory : AnimationBehaviorFactory.animationBehaviorFactory = (Obj.magic 0)
    method animationBehaviorFactory = animationBehaviorFactory
    method set_animationBehaviorFactory value' = animationBehaviorFactory <- value'
    val mutable sequenceArray : int array = (Obj.magic 0)
    method sequenceArray = sequenceArray
    method set_sequenceArray value' = sequenceArray <- value'
    val mutable animationFactoryInitializationVisitor : AnimationFactoryInitializationVisitor.animationFactoryInitializationVisitor = (Obj.magic 0)
    method animationFactoryInitializationVisitor = animationFactoryInitializationVisitor
    method set_animationFactoryInitializationVisitor value' = animationFactoryInitializationVisitor <- value'
    val mutable scaleProperties : ScaleProperties.scaleProperties = (Obj.magic 0)
    method scaleProperties = scaleProperties
    method set_scaleProperties value' = scaleProperties <- value'
    
    

    method getInstance : 'return. int -> 'return = fun ((instanceId : int)) ->
        begin
        (Obj.magic (((NullAnimationFactory.getFactoryInstance ())#getInstance (instanceId))))
        end
    

    method getImage : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic image)))
        end
    

    method getSequenceArray () : int array =
        begin
        sequenceArray
        end
    

    method setInitialScale : 'any1. 'any1 -> unit = fun (scaleProperties_arg) ->
        let scaleProperties_arg = Obj.repr scaleProperties_arg in
        begin
        scaleProperties <- (Obj.magic scaleProperties_arg);
        if scaleProperties#shouldScale then begin
            scaleProperties#set_scaleWidth ((java_to_int (Obj.repr (((animationFactoryInitializationVisitor#width * scaleProperties#scaleX))))));
            scaleProperties#set_scaleHeight ((java_to_int (Obj.repr (((animationFactoryInitializationVisitor#height * scaleProperties#scaleY))))))
        end else begin
            ()
        end
        end [@@warning "-20"]
    

    method getAnimationFactoryInitializationVisitorP : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (animationFactoryInitializationVisitor))
        end
    

    method getScalePropertiesP : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (scaleProperties))
        end
    

    method toString () : string =
        begin
        let commonSeps : CommonSeps.commonSeps ref = ref (((CommonSeps.getInstance ()) :> CommonSeps.commonSeps)) in ();
        let commonLabels : CommonLabels.commonLabels ref = ref (((CommonLabels.getInstance ()) :> CommonLabels.commonLabels)) in ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (("Object@" ^ string_of_int (Oo.id self))));
        ignore (!stringBuffer#append (!commonLabels#hEIGHT_LABEL));
        ignore (!stringBuffer#appendint (((Obj.magic image)#getHeight ())));
        ignore (!stringBuffer#append (!commonSeps#sPACE));
        ignore (!stringBuffer#append ((java_string_of (Obj.repr animationFactoryInitializationVisitor))));
        (java_string_of (Obj.repr !stringBuffer))
        end

    initializer
      begin
        animationFactoryImageScaleUtil <- (Obj.repr (Obj.magic (java_call_static "AnimationFactoryImageScaleUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        ();
        ();
        scaleProperties <- ((ScaleProperties.get_instance ()) :> ScaleProperties.scaleProperties);
        ();
        animationFactoryInitializationVisitor <- (new AnimationFactoryInitializationVisitor.animationFactoryInitializationVisitor ());
        image <- Obj.repr (image_arg);
        animationFactoryInitializationVisitor#set_width (width);
        animationFactoryInitializationVisitor#set_height (height);
        animationBehaviorFactory <- animationBehaviorFactory_arg;
        sequenceArray <- sequenceArray_arg;
        animationFactoryInitializationVisitor#set_dx (dx);
        animationFactoryInitializationVisitor#set_dy (dy)
      end
  end [@@warning "-20"]
let () = java_register_constructor "BaseImageAnimationFactory" (fun arguments -> Obj.repr (new baseImageAnimationFactory (Obj.obj arguments)))

let createFactoryBase : 'any1 'any5 'return. 'any1 * int array * int * int * 'any5 -> 'return = fun (image_arg, (sequenceArray_arg : int array), (width : int), (height : int), animationBehaviorFactory_arg) ->
        let image_arg = Obj.repr image_arg in
        let animationBehaviorFactory_arg = Obj.repr animationBehaviorFactory_arg in
        begin
        (Obj.magic ((new baseImageAnimationFactory ((Obj.magic image_arg), sequenceArray_arg, width, height, 0, 0, (Obj.magic animationBehaviorFactory_arg)))))
        end [@@warning "-20"]
let () = java_register_static "BaseImageAnimationFactory.createFactoryBase" (fun arguments -> Obj.repr (createFactoryBase (Obj.obj arguments)))


