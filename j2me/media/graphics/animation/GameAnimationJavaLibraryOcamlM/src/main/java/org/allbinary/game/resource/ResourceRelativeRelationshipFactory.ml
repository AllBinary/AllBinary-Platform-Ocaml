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
(* package org.allbinary.game.resource *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.graphics.RelativeRelationship *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.util.ABHashtable *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.util.BasicArrayListUtil *)

class resourceRelativeRelationshipFactory () =
  object (self)
    val mutable basicArrayListUtil : BasicArrayListUtil.basicArrayListUtil = (Obj.magic 0)
    method basicArrayListUtil = basicArrayListUtil
    method set_basicArrayListUtil value' = basicArrayListUtil <- value'
    val mutable hashtable : Obj.t = Obj.repr 0
    method hashtable : 'r. 'r = Obj.magic hashtable
    method set_hashtable : 'v. 'v -> unit = fun value' -> hashtable <- Obj.repr value'
    val mutable initialized : bool = false
    method initialized = initialized
    method set_initialized value' = initialized <- value'
    

    method init ((_level : int)) : unit =
        begin
        (self#setInitialized (true))
        end
    

    method getResourceRelativeRelationshipList ((resource : string)) : BasicArrayList.basicArrayList =
        try
        begin
        let listCanBeNull : Obj.t ref = ref ((Obj.repr ((Obj.magic hashtable)#get (resource)))) in ();
        if (!listCanBeNull == (Obj.magic 0)) then begin
            raise (Java_return (Obj.repr ((basicArrayListUtil#getImmutableInstance ()))))
        end;
        ((Obj.magic !listCanBeNull) :> BasicArrayList.basicArrayList)
        end
        with Java_return value -> Obj.obj value
    

    method addResourceRelativeRelationship : 'any2. string * 'any2 -> unit = fun ((resource : string), hardPoint) ->
        let hardPoint = Obj.repr hardPoint in
        begin
        let list : BasicArrayList.basicArrayList ref = ref (((self#getResourceRelativeRelationshipList (resource)) :> BasicArrayList.basicArrayList)) in ();
        if ((Obj.repr !list) == (Obj.repr (basicArrayListUtil#getImmutableInstance ()))) then begin
            list := (new BasicArrayListD.basicArrayListD ())
        end;
        ignore (!list#add ((Obj.magic hardPoint)));
        ignore ((Obj.magic hashtable)#put (resource, !list))
        end [@@warning "-20"]
    

    method isLoadingLevel ((_level : int)) : bool =
        begin
        false
        end
    

    method isFeature () : bool =
        begin
        false
        end
    

    method setInitialized ((initialized_arg : bool)) : unit =
        begin
        initialized <- initialized_arg
        end
    

    method isInitialized () : bool =
        begin
        initialized
        end

    initializer
      begin
        basicArrayListUtil <- ((BasicArrayListUtil.getInstance ()) :> BasicArrayListUtil.basicArrayListUtil);
        hashtable <- (Obj.repr ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashtable ()));
        initialized <- false;
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "ResourceRelativeRelationshipFactory" (fun arguments -> Obj.repr (new resourceRelativeRelationshipFactory (Obj.obj arguments)))


