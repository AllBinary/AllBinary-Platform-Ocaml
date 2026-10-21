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
(* package org.allbinary.android *)

open Allbinary_java [@@warning "-33"]
(* import android.os.Parcelable *)
(* import android.os.Parcel *)

class nullParcelable () =
  object
    

    method describeContents () : int =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method writeToParcel : 'any1. 'any1 * int -> unit = fun (_dest, (_flags : int)) ->
        begin
        ()
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "NullParcelable" (fun arguments -> Obj.repr (new nullParcelable (Obj.obj arguments)))

let nULL_PARCELABLE = (new nullParcelable ())
let get_nULL_PARCELABLE () = nULL_PARCELABLE
let () = java_register_static "NullParcelable.get_nULL_PARCELABLE" (fun _ -> Obj.repr (get_nULL_PARCELABLE ()))


