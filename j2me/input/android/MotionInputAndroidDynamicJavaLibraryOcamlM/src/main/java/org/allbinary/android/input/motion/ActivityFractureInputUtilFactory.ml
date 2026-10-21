(*

  AllBinary Open License Version 1
  Copyright (c) 2009 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
   
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.android.input.motion *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.android.ActivityFractureUtil *)
(* import org.allbinary.android.AndroidInfoFactory *)
(* import org.allbinary.android.api1.ActivityFractureUtilAPI1 *)
(* import org.allbinary.android.api16.ActivityFractureUtilAPI16 *)
(* import org.allbinary.android.api19.ActivityFractureUtilAPI19 *)
(* import org.allbinary.android.api5.ActivityFractureUtilAPI5 *)


let getInstance () : ActivityFractureUtil.activityFractureUtil =
        try
        begin
        let sDK_VERSION : int ref = ref (((AndroidInfoFactory.getInstance ())#getVersion ())) in ();
        if (!sDK_VERSION <= 4) then begin
            raise (Java_return (Obj.repr ((ActivityFractureUtilAPI1.getInstance ()))))
        end else if (!sDK_VERSION <= 15) then begin
            raise (Java_return (Obj.repr ((ActivityFractureUtilAPI5.getInstance ()))))
        end else if (!sDK_VERSION <= 16) then begin
            raise (Java_return (Obj.repr ((ActivityFractureUtilAPI16.getInstance ()))))
        end else begin
            raise (Java_return (Obj.repr ((ActivityFractureUtilAPI19.getInstance ()))))
        end
        end
        with Java_return value -> Obj.obj value

let () = java_register_static "ActivityFractureInputUtilFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class activityFractureInputUtilFactory () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "ActivityFractureInputUtilFactory" (fun arguments -> Obj.repr (new activityFractureInputUtilFactory (Obj.obj arguments)))


