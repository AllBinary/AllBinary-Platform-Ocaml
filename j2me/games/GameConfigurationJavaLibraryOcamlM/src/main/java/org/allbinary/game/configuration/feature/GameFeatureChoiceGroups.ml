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
(* package org.allbinary.game.configuration.feature *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.util.ABHashtable *)
(* import org.allbinary.util.BasicArrayList *)

class gameFeatureChoiceGroups () =
  object
    val mutable hashtable : Obj.t = Obj.repr 0
    method hashtable : 'r. 'r = Obj.magic hashtable
    method set_hashtable : 'v. 'v -> unit = fun value' -> hashtable <- Obj.repr value'
    
    

    method get : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic hashtable)))
        end
    

    method add : 'any2. string * 'any2 -> unit = fun ((name : string), list) ->
        let list = Obj.repr list in
        begin
        ignore ((Obj.magic hashtable)#put (name, (Obj.magic list)))
        end [@@warning "-20"]

    initializer
      begin
        hashtable <- (Obj.repr ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashtable ()));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "GameFeatureChoiceGroups" (fun arguments -> Obj.repr (new gameFeatureChoiceGroups (Obj.obj arguments)))

let gameFeatureChoiceGroupsExclusive = ref ((new gameFeatureChoiceGroups ()))
let get_gameFeatureChoiceGroupsExclusive () = !gameFeatureChoiceGroupsExclusive
let set_gameFeatureChoiceGroupsExclusive value' = gameFeatureChoiceGroupsExclusive := value'
let () = java_register_static "GameFeatureChoiceGroups.get_gameFeatureChoiceGroupsExclusive" (fun _ -> Obj.repr (get_gameFeatureChoiceGroupsExclusive ()))

let gameFeatureChoiceGroupsMultiple = ref ((new gameFeatureChoiceGroups ()))
let get_gameFeatureChoiceGroupsMultiple () = !gameFeatureChoiceGroupsMultiple
let set_gameFeatureChoiceGroupsMultiple value' = gameFeatureChoiceGroupsMultiple := value'
let () = java_register_static "GameFeatureChoiceGroups.get_gameFeatureChoiceGroupsMultiple" (fun _ -> Obj.repr (get_gameFeatureChoiceGroupsMultiple ()))

let getExclusiveInstance () =
        begin
        !gameFeatureChoiceGroupsExclusive
        end

and getMultipleInstance () =
        begin
        !gameFeatureChoiceGroupsMultiple
        end
let () = java_register_static "GameFeatureChoiceGroups.getExclusiveInstance" (fun arguments -> Obj.repr (getExclusiveInstance (Obj.obj arguments)))
let () = java_register_static "GameFeatureChoiceGroups.getMultipleInstance" (fun arguments -> Obj.repr (getMultipleInstance (Obj.obj arguments)))


