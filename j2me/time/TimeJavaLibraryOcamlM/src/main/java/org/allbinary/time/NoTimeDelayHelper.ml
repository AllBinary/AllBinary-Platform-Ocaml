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
(* package org.allbinary.time *)

open Allbinary_java [@@warning "-33"]

class noTimeDelayHelper () =
  object
    inherit TimeDelayHelper.timeDelayHelper (0)
    
    

    method isTimeTNT () : bool =
        begin
        true
        end [@@warning "-7"]
    

    method isTimeSinceTNT ((_delay : int)) : bool =
        begin
        true
        end [@@warning "-7"]
    

    method isTime ((_currentTime : int)) : bool =
        begin
        true
        end [@@warning "-7"]
    

    method isTimeSince ((_delay : int), (_currentTime : int)) : bool =
        begin
        true
        end [@@warning "-7"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "NoTimeDelayHelper" (fun arguments -> Obj.repr (new noTimeDelayHelper (Obj.obj arguments)))

let sINGLETON = (new noTimeDelayHelper ())
let get_sINGLETON () = sINGLETON
let () = java_register_static "NoTimeDelayHelper.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))


