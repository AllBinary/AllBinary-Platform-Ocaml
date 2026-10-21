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
(* package org.allbinary.game.identification *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class groupFactory () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable nULL_GROUP_ARRAY : Obj.t = Obj.repr 0
    method nULL_GROUP_ARRAY : 'r. 'r = Obj.magic nULL_GROUP_ARRAY
    method set_nULL_GROUP_ARRAY : 'v. 'v -> unit = fun value' -> nULL_GROUP_ARRAY <- Obj.repr value'
    val mutable list : BasicArrayList.basicArrayList = (Obj.magic 0)
    method list = list
    method set_list value' = list <- value'
    val mutable index : int = 0
    method index = index
    method set_index value' = index <- value'
    

    method getNextGroup : 'return. unit -> 'return = fun () ->
        begin
        let group : Obj.t ref = ref ((Obj.repr (Obj.magic list#objectArray.(index)))) in ();
        index <- index + 1;
        (Obj.magic ((Obj.magic !group)))
        end
    

    method getNextGroupByName : 'return. string -> 'return = fun ((name : string)) ->
        begin
        let group : Obj.t ref = ref ((Obj.repr (self#getNextGroup ()))) in ();
        ignore ((Obj.magic !group)#setName (name));
        (Obj.magic ((Obj.magic !group)))
        end
    

    method init ((groups : int), (nameArray : string array)) : unit =
        begin
        let stringMaker : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let stringUtil : StringUtil.stringUtil ref = ref (((StringUtil.getInstance ()) :> StringUtil.stringUtil)) in ();
        let tEAM : string ref = ref ("Team ") in ();
        ignore (list#clear ());
        index <- 0;
        let size : int ref = ref ((list#size ())) in ();
        while (!size < groups) do
            let name : string ref = ref (!stringUtil#eMPTY_STRING) in ();
            if (!size < (Array.length nameArray)) then begin
                name := nameArray.(!size)
            end else begin
                ignore (!stringMaker#delete (0, (!stringMaker#length ())));
                name := (java_string_of (Obj.repr ((!stringMaker#append (!tEAM))#appendint (!size))))
            end;
            ignore (list#add ((Obj.obj (java_new "Group" (Obj.repr (!name, ((!size + 3))))))));
            size := !size + 1
        done
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        nULL_GROUP_ARRAY <- (Obj.repr (Array.make (0) (Obj.magic 0)));
        list <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        index <- 0;
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "GroupFactory" (fun arguments -> Obj.repr (new groupFactory (Obj.obj arguments)))

let instance = ref ((new groupFactory ()))
let get_instance () = !instance
let set_instance value' = instance := value'
let () = java_register_static "GroupFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        !instance
        end
let () = java_register_static "GroupFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


