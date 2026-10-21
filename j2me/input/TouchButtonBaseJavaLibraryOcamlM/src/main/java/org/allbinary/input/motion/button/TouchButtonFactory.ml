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
(* package org.allbinary.input.motion.button *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListUtil *)

class touchButtonFactory () =
  object (self)
    val mutable lIST : BasicArrayList.basicArrayList = (Obj.magic 0)
    method lIST = lIST
    method set_lIST value' = lIST <- value'
    val mutable list : BasicArrayList.basicArrayList = (Obj.magic 0)
    method list = list
    method set_list value' = list <- value'
    val mutable savedList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method savedList = savedList
    method set_savedList value' = savedList <- value'
    val mutable saved : bool = false
    method saved = saved
    method set_saved value' = saved <- value'
    
    

    method defaultList () : unit =
        begin
        list <- lIST;
        (self#toggle (false, lIST))
        end
    

    method toggle : 'any2. bool * 'any2 -> unit = fun ((save : bool), list_arg) ->
        let list_arg = Obj.repr list_arg in
        begin
        if ((Obj.repr (Obj.magic list_arg)) != (Obj.repr ((BasicArrayListUtil.getInstance ())#getImmutableInstance ()))) then begin
            savedList <- (Obj.magic list_arg);
            if (not saved) then begin
                list <- savedList
            end
        end else begin
            if save then begin
                if (not saved) then begin
                    saved <- true;
                    savedList <- list;
                    list <- lIST
                end else begin
                    ()
                end
            end else begin
                list <- savedList;
                saved <- false
            end
        end
        end [@@warning "-20"]
    

    method setList : 'any1. 'any1 -> unit = fun (list_arg) ->
        let list_arg = Obj.repr list_arg in
        begin
        if ((Obj.magic list_arg) == (Obj.magic 0)) then begin
            raise (Failure ("Null List"))
        end;
        list <- (Obj.magic list_arg)
        end [@@warning "-20"]
    

    method getList () : BasicArrayList.basicArrayList =
        begin
        (list :> BasicArrayList.basicArrayList)
        end

    initializer
      begin
        lIST <- (((BasicArrayListUtil.getInstance ())#getImmutableInstance ()) :> BasicArrayList.basicArrayList);
        list <- (lIST :> BasicArrayList.basicArrayList);
        savedList <- (lIST :> BasicArrayList.basicArrayList);
        saved <- false;
        ();
        ()
      end
  end
let () = java_register_constructor "TouchButtonFactory" (fun arguments -> Obj.repr (new touchButtonFactory (Obj.obj arguments)))

let sINGLETON = (new touchButtonFactory ())
let get_sINGLETON () = sINGLETON
let () = java_register_static "TouchButtonFactory.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))

let getInstance () =
        begin
        sINGLETON
        end
let () = java_register_static "TouchButtonFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


