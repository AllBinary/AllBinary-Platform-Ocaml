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
(* package org.allbinary.android.view *)

open Allbinary_java [@@warning "-33"]

class baseViewWrapper () =
  object
    

    method invalidate () : unit =
        begin
        ()
        end
    

    method postInvalidate () : unit =
        begin
        ()
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "BaseViewWrapper" (fun arguments -> Obj.repr (new baseViewWrapper (Obj.obj arguments)))

let nULL_VIEW_WRAPPER = (new baseViewWrapper ())
let get_nULL_VIEW_WRAPPER () = nULL_VIEW_WRAPPER
let () = java_register_static "BaseViewWrapper.get_nULL_VIEW_WRAPPER" (fun _ -> Obj.repr (get_nULL_VIEW_WRAPPER ()))


