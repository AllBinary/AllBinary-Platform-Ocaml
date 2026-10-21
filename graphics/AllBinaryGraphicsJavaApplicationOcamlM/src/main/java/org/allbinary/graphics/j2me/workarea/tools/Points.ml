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
(* package org.allbinary.graphics.j2me.workarea.tools *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class points () =
  object
    val mutable pointVector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method pointVector = pointVector
    method set_pointVector value' = pointVector <- value'
    
    

    method init () : unit =
        begin
        ignore (pointVector#clear ())
        end
    

    method getPoints () : BasicArrayList.basicArrayList =
        begin
        (pointVector :> BasicArrayList.basicArrayList)
        end
    

    method addPoints : 'any1. 'any1 -> unit = fun (vector) ->
        let vector = Obj.repr vector in
        begin
        ignore (pointVector#addAll2 ((Obj.magic vector)))
        end [@@warning "-20"]
    

    method isValid () : bool =
        try
        begin
        if ((pointVector#size ()) > 1) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value
    

    method getSize () : int =
        begin
        (pointVector#size ())
        end

    initializer
      begin
        ();
        ();
        pointVector <- (new BasicArrayListD.basicArrayListD ())
      end
  end
let () = java_register_constructor "Points" (fun arguments -> Obj.repr (new points (Obj.obj arguments)))


