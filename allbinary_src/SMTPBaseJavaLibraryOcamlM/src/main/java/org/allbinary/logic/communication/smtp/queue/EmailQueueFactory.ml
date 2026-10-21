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
(* package org.allbinary.logic.communication.smtp.queue *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

let emailQueueInterface : EmailQueueInterface.emailQueueInterface ref = ref (((Obj.magic (BasicEmailQueue.getInstance ())) :> EmailQueueInterface.emailQueueInterface))
let get_emailQueueInterface () = !emailQueueInterface
let set_emailQueueInterface value' = emailQueueInterface := value'
let () = java_register_static "EmailQueueFactory.get_emailQueueInterface" (fun _ -> Obj.repr (get_emailQueueInterface ()))

let getInstance () : EmailQueueInterface.emailQueueInterface =
        begin
        (!emailQueueInterface :> EmailQueueInterface.emailQueueInterface)
        end

let () = java_register_static "EmailQueueFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class emailQueueFactory () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "EmailQueueFactory" (fun arguments -> Obj.repr (new emailQueueFactory (Obj.obj arguments)))


