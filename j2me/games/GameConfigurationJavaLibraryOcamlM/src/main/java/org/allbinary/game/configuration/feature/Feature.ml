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
(* import org.allbinary.game.configuration.event.ChangedGameFeatureListener *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.util.ABHashtable *)

let hashtable : Obj.t ref = ref ((Obj.repr ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashtable ())))
let get_hashtable () = Obj.magic !hashtable
let set_hashtable value' = hashtable := Obj.repr value'
let () = java_register_static "Feature.get_hashtable" (fun _ -> Obj.repr (get_hashtable ()))

let getInstance ((name_arg : string)) =
        begin
        (Obj.magic ((Obj.magic !hashtable)#get (name_arg)))
        end

and add : 'any2. string * 'any2 -> unit = fun ((name_arg : string), gameFeature) ->
        let gameFeature = Obj.repr gameFeature in
        begin
        ignore ((Obj.magic !hashtable)#put (name_arg, (Obj.magic gameFeature)))
        end [@@warning "-20"]

let () = java_register_static "Feature.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
let () = java_register_static "Feature.add" (fun arguments -> Obj.repr (add (Obj.obj arguments)))
class feature ((name_arg : string)) =
  object (self)
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    
    

    method toString () : string =
        begin
        (self#getName ())
        end
    

    method getName () : string =
        begin
        name
        end

    initializer
      begin
        ();
        ();
        name <- name_arg;
        ignore (add (name_arg, self));
        ignore ((ChangedGameFeatureListener.getInstance ())#add (self))
      end
  end
let () = java_register_constructor "Feature" (fun arguments -> Obj.repr (new feature (Obj.obj arguments)))


