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
(* import javax.microedition.lcdui.Graphics *)
(* import javax.microedition.lcdui.Image *)
(* import org.allbinary.animation.Animation *)

class animationFrameToImageUtil () =
  object
    

    method getInstanceTranslate : 'any3 'return. int * int * 'any3 -> 'return = fun ((width : int), (height : int), animationInterface) ->
        let animationInterface = Obj.repr animationInterface in
        begin
        let image : Obj.t ref = ref ((Obj.repr ((GameFeatureImageCacheFactory.getInstance ())#get ((java_get_class (Obj.repr instance)), ((((width * 3)) asr 1)), ((((height * 3)) asr 1)))))) in ();
        let graphics : Obj.t ref = ref ((Obj.repr ((Obj.magic !image)#getGraphics ()))) in ();
        let tranlateX : int ref = ref (((width asr 2))) in ();
        let tranlateY : int ref = ref (((height asr 2))) in ();
        ignore ((Obj.magic !graphics)#translate (!tranlateX, !tranlateY));
        ignore ((Obj.magic animationInterface)#paintXY ((Obj.magic !graphics), 0, 0));
        ignore ((Obj.magic !graphics)#translate ((-!tranlateX), (-!tranlateY)));
        (Obj.magic ((Obj.magic !image)))
        end [@@warning "-20"]
    

    method getInstanceWH : 'any3 'return. int * int * 'any3 -> 'return = fun ((width : int), (height : int), animationInterface) ->
        let animationInterface = Obj.repr animationInterface in
        begin
        let image : Obj.t ref = ref ((Obj.repr ((GameFeatureImageCacheFactory.getInstance ())#get ((java_get_class (Obj.repr instance)), width, height)))) in ();
        let graphics : Obj.t ref = ref ((Obj.repr ((Obj.magic !image)#getGraphics ()))) in ();
        ignore ((Obj.magic animationInterface)#paintXY ((Obj.magic !graphics), 0, 0));
        (Obj.magic ((Obj.magic !image)))
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "AnimationFrameToImageUtil" (fun arguments -> Obj.repr (new animationFrameToImageUtil (Obj.obj arguments)))

let instance = (new animationFrameToImageUtil ())
let get_instance () = instance
let () = java_register_static "AnimationFrameToImageUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "AnimationFrameToImageUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


