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
(* package org.allbinary.logic.communication.http *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.TsUtil *)
(* import org.allbinary.logic.StdUtil *)

class acceptableResponseUtil () =
  object
    val mutable candidateVector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method candidateVector = candidateVector
    method set_candidateVector value' = candidateVector <- value'
    val mutable tagNameVector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method tagNameVector = tagNameVector
    method set_tagNameVector value' = tagNameVector <- value'
    

    method get ((index : int)) : string =
        begin
        (Obj.magic (candidateVector#get (index)))
        end
    

    method getTagName ((index : int)) : string =
        begin
        (Obj.magic (tagNameVector#get (index)))
        end
    

    method size () : int =
        begin
        (candidateVector#size ())
        end

    initializer
      begin
        candidateVector <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        tagNameVector <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        ()
      end
  end
let () = java_register_constructor "AcceptableResponseUtil" (fun arguments -> Obj.repr (new acceptableResponseUtil (Obj.obj arguments)))

let instance = (new acceptableResponseUtil ())
let get_instance () = instance
let () = java_register_static "AcceptableResponseUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "AcceptableResponseUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))

let () =
        begin
        ignore ((Obj.magic (java_call_static "TsUtil.getInstance" (Obj.repr ())))#hashCode ((AcceptableResponseFactory.getInstance ())#hTML))
        end


