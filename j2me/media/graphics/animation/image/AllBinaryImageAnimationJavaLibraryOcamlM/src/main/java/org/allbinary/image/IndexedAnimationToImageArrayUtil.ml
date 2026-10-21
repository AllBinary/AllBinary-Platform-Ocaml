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
(* import javax.microedition.lcdui.Image *)
(* import org.allbinary.animation.IndexedAnimation *)


let getInstance : 'any3 'return. int * int * 'any3 -> 'return = fun ((width : int), (height : int), sequentialAnimationInterface) ->
        let sequentialAnimationInterface = Obj.repr sequentialAnimationInterface in
        begin
        let size : int ref = ref (((Obj.magic sequentialAnimationInterface)#getAnimationSize ())) in ();
        let imageArray : Obj.t ref = ref ((Obj.repr (Array.make (!size) (Obj.magic 0)))) in ();
        for index = 0 to !size - 1 do
            ignore ((Obj.magic sequentialAnimationInterface)#setFrame (index));
            (Obj.magic !imageArray).(index) <- ((AnimationFrameToImageUtil.getInstance ())#getInstanceWH (width, height, (Obj.magic sequentialAnimationInterface)))
        done;
        (Obj.magic ((Obj.magic !imageArray)))
        end [@@warning "-20"]

let () = java_register_static "IndexedAnimationToImageArrayUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class indexedAnimationToImageArrayUtil () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "IndexedAnimationToImageArrayUtil" (fun arguments -> Obj.repr (new indexedAnimationToImageArrayUtil (Obj.obj arguments)))


