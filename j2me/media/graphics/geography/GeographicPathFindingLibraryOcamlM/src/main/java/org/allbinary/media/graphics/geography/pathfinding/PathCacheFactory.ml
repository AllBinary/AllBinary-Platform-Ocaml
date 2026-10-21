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
(* package org.allbinary.media.graphics.geography.pathfinding *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.util.ABHashtable *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListUtil *)

class pathCacheFactory () =
  object
    val mutable basicArrayListUtil : BasicArrayListUtil.basicArrayListUtil = (Obj.magic 0)
    method basicArrayListUtil = basicArrayListUtil
    method set_basicArrayListUtil value' = basicArrayListUtil <- value'
    val mutable hashtable : Obj.t = Obj.repr 0
    method hashtable : 'r. 'r = Obj.magic hashtable
    method set_hashtable : 'v. 'v -> unit = fun value' -> hashtable <- Obj.repr value'
    
    

    method getSize () : int =
        begin
        ((Obj.magic hashtable)#size ())
        end
    

    method add : 'any2. int * 'any2 -> unit = fun ((pathId : int), list) ->
        let list = Obj.repr list in
        begin
        ignore ((Obj.magic hashtable)#put (pathId, (Obj.magic list)))
        end [@@warning "-20"]
    

    method remove ((pathId : int)) : unit =
        begin
        ignore ((Obj.magic hashtable)#remove (pathId))
        end
    

    method removeAll () : unit =
        begin
        ignore ((Obj.magic hashtable)#clear ());
        if (((Obj.magic hashtable)#size ()) > 0) then begin
            raise (Failure ("Did not clear"))
        end
        end
    

    method getOrCreate ((pathIdInteger : int)) : BasicArrayList.basicArrayList =
        begin
        let listCanBeNull : Obj.t ref = ref ((Obj.repr ((Obj.magic hashtable)#get (pathIdInteger)))) in ();
        if (!listCanBeNull == (Obj.magic 0)) then begin
            listCanBeNull := (basicArrayListUtil#getImmutableInstance ())
        end;
        ((Obj.magic !listCanBeNull) :> BasicArrayList.basicArrayList)
        end

    initializer
      begin
        basicArrayListUtil <- ((BasicArrayListUtil.getInstance ()) :> BasicArrayListUtil.basicArrayListUtil);
        hashtable <- (Obj.repr ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashtable ()));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "PathCacheFactory" (fun arguments -> Obj.repr (new pathCacheFactory (Obj.obj arguments)))

let pathFactory = ref ((new pathCacheFactory ()))
let get_pathFactory () = !pathFactory
let set_pathFactory value' = pathFactory := value'
let () = java_register_static "PathCacheFactory.get_pathFactory" (fun _ -> Obj.repr (get_pathFactory ()))

let getInstance () =
        begin
        !pathFactory
        end
let () = java_register_static "PathCacheFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


