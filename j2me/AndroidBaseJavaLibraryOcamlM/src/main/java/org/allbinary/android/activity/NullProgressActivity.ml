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

class nullProgressActivity () =
  object
    

    method runOnUiThread ((_action : java_runnable)) : unit =
        begin
        ()
        end
    

    method onDismissTitleProgressBar () : unit =
        begin
        ()
        end
    

    method onShowTitleProgressBar ((_value : int), (_indeterminate : bool)) : unit =
        begin
        ()
        end
    

    method onTitleProgressBarSetProgress ((_value : int)) : unit =
        begin
        ()
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "NullProgressActivity" (fun arguments -> Obj.repr (new nullProgressActivity (Obj.obj arguments)))

let nULL_PROGRESS_ACTIVITY = (new nullProgressActivity ())
let get_nULL_PROGRESS_ACTIVITY () = nULL_PROGRESS_ACTIVITY
let () = java_register_static "NullProgressActivity.get_nULL_PROGRESS_ACTIVITY" (fun _ -> Obj.repr (get_nULL_PROGRESS_ACTIVITY ()))


