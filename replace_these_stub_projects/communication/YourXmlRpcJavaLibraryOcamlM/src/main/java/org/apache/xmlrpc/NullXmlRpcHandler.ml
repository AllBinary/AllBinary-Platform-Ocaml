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
(* package org.apache.xmlrpc *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.logic.NullUtil *)

class nullXmlRpcHandler () =
  object
    

    method execute : 'any2. string * 'any2 -> Obj.t = fun ((_method_ : string), _params) ->
        begin
        (Obj.repr ((NullUtil.getInstance ())#nULL_OBJECT))
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "NullXmlRpcHandler" (fun arguments -> Obj.repr (new nullXmlRpcHandler (Obj.obj arguments)))

let nULL_XML_RPC_HANDLER = (new nullXmlRpcHandler ())
let get_nULL_XML_RPC_HANDLER () = nULL_XML_RPC_HANDLER
let () = java_register_static "NullXmlRpcHandler.get_nULL_XML_RPC_HANDLER" (fun _ -> Obj.repr (get_nULL_XML_RPC_HANDLER ()))


