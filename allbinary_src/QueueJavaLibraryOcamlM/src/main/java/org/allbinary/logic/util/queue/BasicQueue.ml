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
(* package org.allbinary.logic.util.queue *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class basicQueue () =
  object
    val mutable queueVector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method queueVector = queueVector
    method set_queueVector value' = queueVector <- value'
    
    

    method offer : 'any1. 'any1 -> bool = fun (anyType) ->
        let anyType = Obj.repr anyType in
        begin
        ignore (queueVector#add (anyType));
        true
        end
    

    method remove : 'any1. 'any1 -> unit = fun (anyType) ->
        let anyType = Obj.repr anyType in
        begin
        ignore (queueVector#remove (anyType))
        end
    

    method removeLast () : Obj.t =
        begin
        let anyType : Obj.t ref = ref ((Obj.repr (queueVector#get (((queueVector#size ()) - 1))))) in ();
        ignore (queueVector#remove (!anyType));
        (Obj.repr (!anyType))
        end

    initializer
      begin
        queueVector <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        ();
        ()
      end
  end
let () = java_register_constructor "BasicQueue" (fun arguments -> Obj.repr (new basicQueue (Obj.obj arguments)))


