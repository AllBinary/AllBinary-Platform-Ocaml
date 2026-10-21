(* Generated Code Do Not Modify *)
(* package org.allbinary.graphics.form *)

open Allbinary_java [@@warning "-33"]

class screenInfo () =
  object
    val mutable sMALL_WIDTH : int = 0
    method sMALL_WIDTH = sMALL_WIDTH
    method set_sMALL_WIDTH value' = sMALL_WIDTH <- value'
    val mutable sMALL_HEIGHT : int = 0
    method sMALL_HEIGHT = sMALL_HEIGHT
    method set_sMALL_HEIGHT value' = sMALL_HEIGHT <- value'
    val mutable mEDIUM_WIDTH : int = 0
    method mEDIUM_WIDTH = mEDIUM_WIDTH
    method set_mEDIUM_WIDTH value' = mEDIUM_WIDTH <- value'
    val mutable mEDIUM_HEIGHT : int = 0
    method mEDIUM_HEIGHT = mEDIUM_HEIGHT
    method set_mEDIUM_HEIGHT value' = mEDIUM_HEIGHT <- value'

    initializer
      begin
        sMALL_WIDTH <- 320;
        sMALL_HEIGHT <- 240;
        mEDIUM_WIDTH <- 800;
        mEDIUM_HEIGHT <- 600;
        ()
      end
  end
let () = java_register_constructor "ScreenInfo" (fun arguments -> Obj.repr (new screenInfo (Obj.obj arguments)))

let instance = (new screenInfo ())
let get_instance () = instance
let () = java_register_static "ScreenInfo.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ScreenInfo.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


