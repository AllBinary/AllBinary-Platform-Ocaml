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
(* package org.allbinary.graphics.color *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class basicColorUtil () =
  object
    val mutable zERO_ARRAY : Obj.t = Obj.repr 0
    method zERO_ARRAY : 'r. 'r = Obj.magic zERO_ARRAY
    method set_zERO_ARRAY : 'v. 'v -> unit = fun value' -> zERO_ARRAY <- Obj.repr value'
    val mutable aLPHA : int = 0
    method aLPHA = aLPHA
    method set_aLPHA value' = aLPHA <- value'
    val mutable isAlpha : bool = false
    method isAlpha = isAlpha
    method set_isAlpha value' = isAlpha <- value'
    val mutable ffOpaque : bool = false
    method ffOpaque = ffOpaque
    method set_ffOpaque value' = ffOpaque <- value'
    

    method getRGB ((red : int), (green : int), (blue : int)) : int =
        begin
        let value : int ref = ref (0) in ();
        if isAlpha then begin
            if ffOpaque then begin
                value := aLPHA
            end
        end;
        value := (((red lsl 16)) lor !value);
        value := (((green lsl 8)) lor !value);
        value := (blue lor !value);
        !value
        end
    

    method getARGB ((alphaValue : int), (r : int), (g : int), (b : int)) : int =
        begin
        (((((((alphaValue lsl 24)) land aLPHA)) + ((((r lsl 16)) land 0x00FF0000))) + ((((g lsl 8)) land 0x0000FF00))) + ((b land 0x000000FF)))
        end
    

    method get ((alphaValue : int), (color : int)) : int =
        begin
        (((((alphaValue lsl 24)) land aLPHA)) + color)
        end
    

    method invert ((color : int)) : int =
        begin
        (((0xFFFFFF - color)) lor aLPHA)
        end

    initializer
      begin
        zERO_ARRAY <- (Obj.repr (Array.make (0) (Obj.magic 0)));
        aLPHA <- 0xFF000000;
        isAlpha <- true;
        ffOpaque <- true;
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "BasicColorUtil" (fun arguments -> Obj.repr (new basicColorUtil (Obj.obj arguments)))

let instance = (new basicColorUtil ())
let get_instance () = instance
let () = java_register_static "BasicColorUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "BasicColorUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


