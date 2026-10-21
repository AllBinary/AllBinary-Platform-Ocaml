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
(* import org.allbinary.image.ImageCache *)

class imageScaleUtil () =
  object (self)
    
    

    method createImage2 : 'any1 'any2 'return. 'any1 * 'any2 * float * float * float * float * bool -> 'return = fun (imageCache, originalImage, (scaleNominatorX : float), (scaleDenominatorX : float), (scaleNominatorY : float), (scaleDenominatorY : float), (cached : bool)) ->
        let imageCache = Obj.repr imageCache in
        let originalImage = Obj.repr originalImage in
        begin
        (Obj.magic ((self#createImage3 ((Obj.magic imageCache), (Obj.magic originalImage), scaleNominatorX, scaleDenominatorX, scaleNominatorY, scaleDenominatorY, cached, true))))
        end [@@warning "-20"]
    

    method createImage3 : 'any1 'any2 'return. 'any1 * 'any2 * float * float * float * float * bool * bool -> 'return = fun (_imageCache, originalImage, (_scaleNominatorX : float), (_scaleDenominatorX : float), (_scaleNominatorY : float), (_scaleDenominatorY : float), (_cached : bool), (_mutable_ : bool)) ->
        let originalImage = Obj.repr originalImage in
        begin
        (Obj.magic ((Obj.magic originalImage)))
        end [@@warning "-20"]

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "ImageScaleUtil" (fun arguments -> Obj.repr (new imageScaleUtil (Obj.obj arguments)))

let instance = (new imageScaleUtil ())
let get_instance () = instance
let () = java_register_static "ImageScaleUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ImageScaleUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


