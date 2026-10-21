(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.android.activity *)

open Allbinary_java [@@warning "-33"]
(* import android.view.View *)

class nullKeyInputViewComposite () =
  object
    

    method setKeyInputView : 'any1. 'any1 -> unit = fun (_keyInputView) ->
        begin
        ()
        end [@@warning "-20"]
    

    method getRootView : 'return. unit -> 'return = fun () ->
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getView : 'return. unit -> 'return = fun () ->
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method runOnUiThread ((_action : java_runnable)) : unit =
        begin
        ()
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "NullKeyInputViewComposite" (fun arguments -> Obj.repr (new nullKeyInputViewComposite (Obj.obj arguments)))

let nULL_KEY_INPUT_VIEW_COMPOSITE = (new nullKeyInputViewComposite ())
let get_nULL_KEY_INPUT_VIEW_COMPOSITE () = nULL_KEY_INPUT_VIEW_COMPOSITE
let () = java_register_static "NullKeyInputViewComposite.get_nULL_KEY_INPUT_VIEW_COMPOSITE" (fun _ -> Obj.repr (get_nULL_KEY_INPUT_VIEW_COMPOSITE ()))


