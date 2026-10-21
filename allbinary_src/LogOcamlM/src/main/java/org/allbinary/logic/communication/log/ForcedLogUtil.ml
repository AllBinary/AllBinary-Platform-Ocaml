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
(* package org.allbinary.logic.communication.log *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)


let log : 'any2. string * 'any2 -> unit = fun ((message : string), anyType) ->
        let anyType = Obj.repr anyType in
        begin
        (try
            raise (Failure (message))
        with e -> begin
            ignore (Obj.magic (java_call_static "PreLogUtil.putOE" (Obj.repr ((CommonStrings.getInstance ())#eXCEPTION, anyType, "log", e))))
        end)
        end

let () = java_register_static "ForcedLogUtil.log" (fun arguments -> Obj.repr (log (Obj.obj arguments)))
class forcedLogUtil () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "ForcedLogUtil" (fun arguments -> Obj.repr (new forcedLogUtil (Obj.obj arguments)))


