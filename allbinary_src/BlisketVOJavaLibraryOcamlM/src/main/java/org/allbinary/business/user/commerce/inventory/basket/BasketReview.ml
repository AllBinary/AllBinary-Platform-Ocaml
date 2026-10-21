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
(* package org.allbinary.business.user.commerce.inventory.basket *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashSet *)
(* import java.util.Set *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.user.commerce.inventory.item.Item *)
(* import org.allbinary.business.user.commerce.inventory.item.ItemView *)
(* import org.allbinary.logic.StdUtil *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class basketReview () =
  object
    val mutable items : BasicArrayList.basicArrayList = (Obj.magic 0)
    method items = items
    method set_items value' = items <- value'
    
    

    method isValid () : bool =
        begin
        true
        end
    

    method addItem : 'any1. 'any1 -> unit = fun (item) ->
        let item = Obj.repr item in
        begin
        ignore (items#add ((Obj.magic item)))
        end [@@warning "-20"]
    

    method getItems () : BasicArrayList.basicArrayList =
        begin
        (items :> BasicArrayList.basicArrayList)
        end
    

    method removeItem ((id : string)) : unit =
        begin
        let itemArray : Obj.t array ref = ref ((items#toArray ())) in ();
        let size : int ref = ref ((Array.length !itemArray)) in ();
        for index = 0 to !size - 1 do
            let item : Obj.t ref = ref ((Obj.repr (Obj.magic !itemArray.(index)))) in ();
            if ((((Obj.magic !item)#getId ())#compareTo (id)) == 0) then begin
                ignore (items#remove ((Obj.magic !item)))
            end
        done
        end
    

    method adjustItem ((id : string), (num : string)) : unit =
        begin
        let itemArray : Obj.t array ref = ref ((items#toArray ())) in ();
        let size : int ref = ref ((Array.length !itemArray)) in ();
        for index = 0 to !size - 1 do
            let item : Obj.t ref = ref ((Obj.repr (Obj.magic !itemArray.(index)))) in ();
            if ((((Obj.magic !item)#getId ())#compareTo (id)) == 0) then begin
                ignore ((Obj.magic !item)#setNumber (num))
            end
        done
        end
    

    method getTotalWeight () : string =
        begin
        let weightFloat : float ref = ref (0.) in ();
        let itemArray : Obj.t array ref = ref ((items#toArray ())) in ();
        let size : int ref = ref ((Array.length !itemArray)) in ();
        for index = 0 to !size - 1 do
            let item : Obj.t ref = ref ((Obj.repr (Obj.magic !itemArray.(index)))) in ();
            weightFloat := (!weightFloat +. (((Obj.magic !item)#getWeight ())#floatValue ()))
        done;
        (java_string_of (Obj.repr !weightFloat))
        end
    

    method getNumberOfItems () : int =
        begin
        (Obj.obj (java_new "Integer" (Obj.repr ((items#size ())))))
        end
    

    method getIds : 'return. unit -> 'return = fun () ->
        begin
        let idSet : Obj.t ref = ref ((Obj.repr (new HashSet.hashSet ()))) in ();
        let itemArray : Obj.t array ref = ref ((items#toArray ())) in ();
        let size : int ref = ref ((Array.length !itemArray)) in ();
        for index = 0 to !size - 1 do
            let item : Obj.t ref = ref ((Obj.repr (Obj.magic !itemArray.(index)))) in ();
            ignore ((Obj.magic !idSet)#add (((Obj.magic !item)#getId ())))
        done;
        (Obj.magic ((Obj.magic (Obj.magic !idSet))))
        end
    

    method getNumberOf ((id : string)) : int =
        try
        begin
        let itemArray : Obj.t array ref = ref ((items#toArray ())) in ();
        let size : int ref = ref ((Array.length !itemArray)) in ();
        for index = 0 to !size - 1 do
            let item : Obj.t ref = ref ((Obj.repr (Obj.magic !itemArray.(index)))) in ();
            if ((((Obj.magic !item)#getId ())#compareTo (id)) == 0) then begin
                raise (Java_return (Obj.repr ((Obj.obj (java_new "Integer" (Obj.repr (((Obj.magic !item)#getNumber ()))))))))
            end
        done;
        (Obj.obj (java_new "Integer" (Obj.repr (0))))
        end
        with Java_return value -> Obj.obj value
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        let node : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createElement ((BasketData.get_bASKET ()))))) in ();
        let itemArray : Obj.t array ref = ref ((items#toArray ())) in ();
        let size : int ref = ref ((Array.length !itemArray)) in ();
        for index = 0 to !size - 1 do
            let item : Obj.t ref = ref ((Obj.repr (Obj.magic !itemArray.(index)))) in ();
            ignore ((Obj.magic !node)#appendChild (((new ItemView.itemView ((Obj.magic !item), (new BasicArrayListD.basicArrayListD ())))#toXmlNode ((Obj.magic document)))))
        done;
        (Obj.magic ((Obj.magic !node)))
        end [@@warning "-20"]

    initializer
      begin
        items <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        ();
        ()
      end
  end
let () = java_register_constructor "BasketReview" (fun arguments -> Obj.repr (new basketReview (Obj.obj arguments)))


