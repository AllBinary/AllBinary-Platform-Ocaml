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
(* import org.allbinary.graphics.paint.PaintableInterface *)

class paintableToImageUtil () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "PaintableToImageUtil" (fun arguments -> Obj.repr (new paintableToImageUtil (Obj.obj arguments)))

let instance = (new paintableToImageUtil ())
let get_instance () = instance
let () = java_register_static "PaintableToImageUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getImage : 'any1 'return. 'any1 * int * int -> 'return = fun (paintableInterface, (width : int), (height : int)) ->
        let paintableInterface = Obj.repr paintableInterface in
        begin
        let image : Obj.t ref = ref ((Obj.repr ((GameFeatureImageCacheFactory.getInstance ())#get ((java_get_class (Obj.repr instance)), width, height)))) in ();
        let graphics : Obj.t ref = ref ((Obj.repr ((Obj.magic !image)#getGraphics ()))) in ();
        ignore ((Obj.magic paintableInterface)#paint ((Obj.magic !graphics)));
        (Obj.magic ((Obj.magic !image)))
        end [@@warning "-20"]
let () = java_register_static "PaintableToImageUtil.getImage" (fun arguments -> Obj.repr (getImage (Obj.obj arguments)))


