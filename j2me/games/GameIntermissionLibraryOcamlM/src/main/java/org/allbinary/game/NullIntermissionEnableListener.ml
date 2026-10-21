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
(* package org.allbinary.game *)

open Allbinary_java [@@warning "-33"]

class nullIntermissionEnableListener () =
  object
    
    

    method notifyIntermission ((_enable : bool)) : unit =
        begin
        ()
        end

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "NullIntermissionEnableListener" (fun arguments -> Obj.repr (new nullIntermissionEnableListener (Obj.obj arguments)))

let sINGLETON : IntermissionEnableListenerInterface.intermissionEnableListenerInterface = ((new nullIntermissionEnableListener ()) :> IntermissionEnableListenerInterface.intermissionEnableListenerInterface)
let get_sINGLETON () = sINGLETON
let () = java_register_static "NullIntermissionEnableListener.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))

let getInstance () : IntermissionEnableListenerInterface.intermissionEnableListenerInterface =
        begin
        (sINGLETON :> IntermissionEnableListenerInterface.intermissionEnableListenerInterface)
        end
let () = java_register_static "NullIntermissionEnableListener.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


