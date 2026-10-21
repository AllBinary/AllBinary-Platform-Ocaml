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
(* package org.allbinary.media.audio *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)

class allBinaryMediaManagerShutdown () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "AllBinaryMediaManagerShutdown" (fun arguments -> Obj.repr (new allBinaryMediaManagerShutdown (Obj.obj arguments)))

let instance = (new allBinaryMediaManagerShutdown ())
let get_instance () = instance
let () = java_register_static "AllBinaryMediaManagerShutdown.get_instance" (fun _ -> Obj.repr (get_instance ()))

let shutdown : 'any1. 'any1 -> unit = fun (soundsFactoryInterface) ->
        let soundsFactoryInterface = Obj.repr soundsFactoryInterface in
        begin
        let logUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
        let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        ignore ((Obj.magic !logUtil)#putF (!commonStrings#sTART, instance, "shutdown"));
        ignore (Obj.magic (java_call_static "AllBinaryMediaManager.shutdown" (Obj.repr ((Obj.magic soundsFactoryInterface)))))
        end [@@warning "-20"]
let () = java_register_static "AllBinaryMediaManagerShutdown.shutdown" (fun arguments -> Obj.repr (shutdown (Obj.obj arguments)))


