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
(* package org.allbinary.media.image *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Image *)
(* import org.allbinary.image.GameFeatureImageCacheFactory *)

class imageCreationUtil () =
  object (self)
    
    

    method createImageWH : 'return. int * int -> 'return = fun ((width : int), (height : int)) ->
        begin
        let image : Obj.t ref = ref ((Obj.repr ((GameFeatureImageCacheFactory.getInstance ())#get ((java_get_class (Obj.repr self)), width, height)))) in ();
        (Obj.magic ((Obj.magic !image)))
        end
    

    method createImage : 'return. int * int * float * float -> 'return = fun ((width : int), (height : int), (maxScaleX : float), (maxScaleY : float)) ->
        begin
        let image : Obj.t ref = ref ((Obj.repr ((GameFeatureImageCacheFactory.getInstance ())#get ((java_get_class (Obj.repr self)), ((int_of_float ((((float_of_int (width)) *. maxScaleX)))) + 1), ((int_of_float ((((float_of_int (height)) *. maxScaleY)))) + 1))))) in ();
        (Obj.magic ((Obj.magic !image)))
        end

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "ImageCreationUtil" (fun arguments -> Obj.repr (new imageCreationUtil (Obj.obj arguments)))

let instance = (new imageCreationUtil ())
let get_instance () = instance
let () = java_register_static "ImageCreationUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ImageCreationUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


