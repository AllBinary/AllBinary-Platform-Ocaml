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
(* package org.allbinary.graphics *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListUtil *)

class relativeRelationship ((point : GPoint.gPoint), (typesAllowedList_arg : BasicArrayList.basicArrayList)) =
  object
    val mutable typesAllowedList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method typesAllowedList = typesAllowedList
    method set_typesAllowedList value' = typesAllowedList <- value'
    val mutable x : int = 0
    method x = x
    method set_x value' = x <- value'
    val mutable y : int = 0
    method y = y
    method set_y value' = y <- value'
    val mutable z : int = 0
    method z = z
    method set_z value' = z <- value'
    
    

    method getX () : int =
        begin
        x
        end
    

    method getY () : int =
        begin
        y
        end
    

    method getZ () : int =
        begin
        z
        end
    

    method getTypesAllowedList () : BasicArrayList.basicArrayList =
        begin
        (typesAllowedList :> BasicArrayList.basicArrayList)
        end
    

    method setTypesAllowedList : 'any1. 'any1 -> unit = fun (typesAllowedList_arg) ->
        let typesAllowedList_arg = Obj.repr typesAllowedList_arg in
        begin
        typesAllowedList <- (Obj.magic typesAllowedList_arg)
        end [@@warning "-20"]

    initializer
      begin
        ();
        ();
        ();
        ();
        ();
        x <- (point#getX ());
        y <- (point#getY ());
        z <- (point#getZ ());
        typesAllowedList <- typesAllowedList_arg
      end
  end
let () = java_register_constructor "RelativeRelationship" (fun arguments -> Obj.repr (new relativeRelationship (Obj.obj arguments)))

let nULL_RELATIVE_RELATIONSHIP = (new relativeRelationship ((Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ())))#zERO_ZERO, ((BasicArrayListUtil.getInstance ())#getImmutableInstance ())))
let get_nULL_RELATIVE_RELATIONSHIP () = nULL_RELATIVE_RELATIONSHIP
let () = java_register_static "RelativeRelationship.get_nULL_RELATIVE_RELATIONSHIP" (fun _ -> Obj.repr (get_nULL_RELATIVE_RELATIONSHIP ()))


