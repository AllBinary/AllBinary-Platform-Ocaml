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
[@@@warning "-20"]
(* import android.view.View *)

class viewWrapper (view_arg) =
  object
    inherit BaseViewWrapper.baseViewWrapper ()
    val mutable view : Obj.t = Obj.repr 0
    method view : 'r. 'r = Obj.magic view
    method set_view : 'v. 'v -> unit = fun value' -> view <- Obj.repr value'
    
    

    method invalidate () : unit =
        begin
        ignore ((Obj.magic view)#invalidate ())
        end [@@warning "-7"]
    

    method postInvalidate () : unit =
        begin
        ignore ((Obj.magic view)#postInvalidate ())
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        view <- Obj.repr (view_arg)
      end
  end [@@warning "-20"]
let () = java_register_constructor "ViewWrapper" (fun arguments -> Obj.repr (new viewWrapper (Obj.obj arguments)))


