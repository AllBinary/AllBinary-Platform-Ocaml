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
(* package org.allbinary.android *)

open Allbinary_java [@@warning "-33"]
(* import android.app.Activity *)

class activityFractureUtil () =
  object
    

    method process : 'any1. 'any1 -> unit = fun (_activity) ->
        begin
        ()
        end [@@warning "-20"]
    

    method setFullScreen : 'any1. 'any1 -> unit = fun (_activity) ->
        begin
        ()
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "ActivityFractureUtil" (fun arguments -> Obj.repr (new activityFractureUtil (Obj.obj arguments)))


