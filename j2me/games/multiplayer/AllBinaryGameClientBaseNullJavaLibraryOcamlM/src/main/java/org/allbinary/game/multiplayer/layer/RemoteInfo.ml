(*
 
  To change this license header, choose License Headers in Project Properties. 
  To change this template file, choose Tools | Templates 
  and open the template in the editor.  
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.multiplayer.layer *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.string.StringUtil *)

let nEW_PLAYER_ID : int = 0
let get_nEW_PLAYER_ID () = nEW_PLAYER_ID
let () = java_register_static "RemoteInfo.get_nEW_PLAYER_ID" (fun _ -> Obj.repr (get_nEW_PLAYER_ID ()))
class remoteInfo ((_username : string), (_actorSessionId : int), (_playerInputId : int), (_id : int)) =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "RemoteInfo" (fun arguments -> Obj.repr (new remoteInfo (Obj.obj arguments)))

let rEMOTE_INFO = (new remoteInfo ((StringUtil.getInstance ())#eMPTY_STRING, (-1), (-1), nEW_PLAYER_ID))
let get_rEMOTE_INFO () = rEMOTE_INFO
let () = java_register_static "RemoteInfo.get_rEMOTE_INFO" (fun _ -> Obj.repr (get_rEMOTE_INFO ()))


