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
(* package org.allbinary.game.configuration *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.util.ABHashtable *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class gameConfigurationSingleton () =
  object
    val mutable list : BasicArrayList.basicArrayList = (Obj.magic 0)
    method list = list
    method set_list value' = list <- value'
    val mutable hashtable : Obj.t = Obj.repr 0
    method hashtable : 'r. 'r = Obj.magic hashtable
    method set_hashtable : 'v. 'v -> unit = fun value' -> hashtable <- Obj.repr value'
    
    

    method getInstanceByName : 'return. string -> 'return = fun ((name : string)) ->
        begin
        (Obj.magic ((Obj.magic ((Obj.magic hashtable)#get (name)))))
        end
    

    method getOptionsBasicArrayList () : BasicArrayList.basicArrayList =
        begin
        (list :> BasicArrayList.basicArrayList)
        end
    

    method add : 'any1. 'any1 -> unit = fun (gameConfiguration) ->
        let gameConfiguration = Obj.repr gameConfiguration in
        begin
        ignore (list#add ((Obj.magic gameConfiguration)))
        end [@@warning "-20"]
    

    method getHashtable : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic hashtable)))
        end

    initializer
      begin
        ();
        ();
        ();
        list <- (new BasicArrayListD.basicArrayListD ());
        hashtable <- Obj.repr (((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashtable ()))
      end
  end [@@warning "-20"]
let () = java_register_constructor "GameConfigurationSingleton" (fun arguments -> Obj.repr (new gameConfigurationSingleton (Obj.obj arguments)))

let sINGLETON = ref ((new gameConfigurationSingleton ()))
let get_sINGLETON () = !sINGLETON
let set_sINGLETON value' = sINGLETON := value'
let () = java_register_static "GameConfigurationSingleton.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))

let getInstance () =
        begin
        !sINGLETON
        end
let () = java_register_static "GameConfigurationSingleton.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


