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
(* package org.allbinary.debug *)

open Allbinary_java [@@warning "-33"]

class noDebug () =
  object
    

    method start () : unit =
        begin
        ()
        end
    

    method stop () : unit =
        begin
        ()
        end
    

    method getMaxTime () : int =
        begin
        10000
        end
    

    method getStartTime () : int =
        begin
        0
        end
    

    method isRunning () : bool =
        begin
        false
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "NoDebug" (fun arguments -> Obj.repr (new noDebug (Obj.obj arguments)))

let sINGLETON : DebugInterface.debugInterface ref = ref (((new noDebug ()) :> DebugInterface.debugInterface))
let get_sINGLETON () = !sINGLETON
let set_sINGLETON value' = sINGLETON := value'
let () = java_register_static "NoDebug.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))

let getInstance () : DebugInterface.debugInterface =
        begin
        (!sINGLETON :> DebugInterface.debugInterface)
        end
let () = java_register_static "NoDebug.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


