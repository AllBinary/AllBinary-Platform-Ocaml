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
(* package org.allbinary *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import android.app.Activity *)
(* import android.os.Build *)

let nULL_ACTIVITY : Obj.t = (Obj.repr (new Activity.activity ()))
let get_nULL_ACTIVITY () = Obj.magic nULL_ACTIVITY
let () = java_register_static "AndroidUtil.get_nULL_ACTIVITY" (fun _ -> Obj.repr (get_nULL_ACTIVITY ()))
let version : int = (int_of_string ((Build.get_vERSION ())#sDK))
let get_version () = version
let () = java_register_static "AndroidUtil.get_version" (fun _ -> Obj.repr (get_version ()))

let isMemoryRestrictive () : bool =
        try
        begin
        if (version < 30) then begin
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value

and isAndroid () : bool =
        begin
        true
        end

let () = java_register_static "AndroidUtil.isMemoryRestrictive" (fun arguments -> Obj.repr (isMemoryRestrictive (Obj.obj arguments)))
let () = java_register_static "AndroidUtil.isAndroid" (fun arguments -> Obj.repr (isAndroid (Obj.obj arguments)))
class androidUtil () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "AndroidUtil" (fun arguments -> Obj.repr (new androidUtil (Obj.obj arguments)))


