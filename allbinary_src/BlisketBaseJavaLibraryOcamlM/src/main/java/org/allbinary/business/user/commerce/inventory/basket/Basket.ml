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
(* import java.io.Serializable *)
(* import java.util.HashMap *)
(* import java.util.Set *)
(* import org.allbinary.business.user.commerce.inventory.item.ItemInterface *)
(* import org.allbinary.business.user.commerce.money.Money *)
(* import org.allbinary.business.user.commerce.money.MoneyException *)
(* import org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity *)
(* import org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory *)
(* import org.allbinary.logic.StdUtil *)

class basket () =
  object (self)
    val mutable items : java_hash_map = (Obj.magic 0)
    method items = items
    method set_items value' = items <- value'
    
    

    method addItem ((id : string), (num : string)) : unit =
        begin
        if (items#containsKey (id)) then begin
            let oldNumStr : string ref = ref ((Obj.obj (java_new "String" (Obj.repr ((Obj.magic (items#get (id)))))))) in ();
            let oldNumInt : int ref = ref ((string_of_int (!oldNumStr))) in ();
            let numInt : int ref = ref ((string_of_int (num))) in ();
            let newNumInt : int ref = ref ((Obj.obj (java_new "Integer" (Obj.repr ((!oldNumInt + !numInt)))))) in ();
            ignore (items#put (id, (string_of_int !newNumInt)))
        end else begin
            ignore (items#put (id, num))
        end
        end
    

    method removeItem ((id : string)) : unit =
        begin
        ignore (items#remove (id))
        end
    

    method adjustItem ((id : string), (num : string)) : unit =
        begin
        if (((string_of_int (num))#intValue ()) > 0) then begin
            ignore (items#put (id, num))
        end else begin
            ignore (items#remove (id))
        end
        end
    

    method getTotalWeight () : string =
        begin
        let itemsAndNumberInBasket : java_hash_map ref = ref (((self#getItems ()) :> java_hash_map)) in ();
        let totalWeight : Money.money ref = ref (((new Money.money ()) :> Money.money)) in ();
        if ((!itemsAndNumberInBasket#size ()) > 0) then begin
            let items_arg : Obj.t ref = ref ((Obj.repr (!itemsAndNumberInBasket#keySet ()))) in ();
            let product : string ref = ref ("") in ();
            let weightFloat : float ref = ref ((Obj.magic 0)) in ();
            let itemArray : Obj.t array ref = ref (((Obj.magic !items_arg)#toArray ())) in ();
            let size : int ref = ref ((Array.length !itemArray)) in ();
            for index = 0 to !size - 1 do
                product := (Obj.obj (java_new "String" (Obj.repr ((Obj.magic !itemArray.(index))))));
                weightFloat := ((new InventoryEntity.inventoryEntity ())#getWeight (!product));
                weightFloat := (((self#getNumberOf (!product))#floatValue ()) * !weightFloat);
                ignore (!totalWeight#add ((java_float_string !weightFloat)))
            done
        end;
        (java_string_of (Obj.repr !totalWeight))
        end
    

    method getNumberOfItems () : int =
        begin
        (Obj.obj (java_new "Integer" (Obj.repr ((items#size ())))))
        end
    

    method getIds : 'return. unit -> 'return = fun () ->
        begin
        let set : Obj.t ref = ref ((Obj.repr (items#keySet ()))) in ();
        (Obj.magic ((Obj.magic !set)))
        end
    

    method getItems () : java_hash_map =
        begin
        (items :> java_hash_map)
        end
    

    method getNumberOf ((product : string)) : int =
        begin
        let numStr : string ref = ref ((Obj.magic (items#get (product)))) in ();
        (string_of_int (!numStr))
        end
    

    method getSubTotal () : Money.money =
        begin
        let itemsAndNumberInBasket : java_hash_map ref = ref (((self#getItems ()) :> java_hash_map)) in ();
        let subTotal : Money.money ref = ref (((new Money.money ()) :> Money.money)) in ();
        if ((!itemsAndNumberInBasket#size ()) > 0) then begin
            let items_arg : Obj.t ref = ref ((Obj.repr (!itemsAndNumberInBasket#keySet ()))) in ();
            let inventoryEntityFactory : InventoryEntityFactory.inventoryEntityFactory ref = ref (((InventoryEntityFactory.getInstance ()) :> InventoryEntityFactory.inventoryEntityFactory)) in ();
            let inventoryEntity : InventoryEntity.inventoryEntity ref = ref (((Obj.magic (!inventoryEntityFactory#getInventoryEntityInstance ())) :> InventoryEntity.inventoryEntity)) in ();
            let itemArray : Obj.t array ref = ref (((Obj.magic !items_arg)#toArray ())) in ();
            let size : int ref = ref ((Array.length !itemArray)) in ();
            for index = 0 to !size - 1 do
                let product : string ref = ref ((Obj.obj (java_new "String" (Obj.repr ((Obj.magic !itemArray.(index))))))) in ();
                let itemInterface : ItemInterface.itemInterface ref = ref (((!inventoryEntity#getItem (!product)) :> ItemInterface.itemInterface)) in ();
                let productTotal : Money.money ref = ref (((!itemInterface#getPrice ()) :> Money.money)) in ();
                ignore (!productTotal#multiply (((self#getNumberOf (!product))#intValue ())));
                ignore (!subTotal#add ((java_string_of (Obj.repr !productTotal))))
            done
        end;
        (!subTotal :> Money.money)
        end

    initializer
      begin
        items <- (((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map);
        ();
        ()
      end
  end
let () = java_register_constructor "Basket" (fun arguments -> Obj.repr (new basket (Obj.obj arguments)))


