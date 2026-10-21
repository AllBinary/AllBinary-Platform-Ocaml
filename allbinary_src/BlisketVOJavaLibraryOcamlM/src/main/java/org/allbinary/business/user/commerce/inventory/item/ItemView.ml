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
(* package org.allbinary.business.user.commerce.inventory.item *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import java.util.Set *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.user.address.StreetAddressData *)
(* import org.allbinary.data.tree.dom.ModDomHelper *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class itemView ((itemInterface_arg : OrderItemInterface.orderItemInterface), (vector_arg : BasicArrayList.basicArrayList)) =
  object
    val mutable itemInterface : OrderItemInterface.orderItemInterface = (Obj.magic 0)
    method itemInterface = itemInterface
    method set_itemInterface value' = itemInterface <- value'
    val mutable vector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method vector = vector
    method set_vector value' = vector <- value'
    
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        let hashMap : java_hash_map ref = ref (((itemInterface#toHashMap ()) :> java_hash_map)) in ();
        let keySet : Obj.t ref = ref ((Obj.repr (!hashMap#keySet ()))) in ();
        let node : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createElement ((ItemData.get_iTEM ()))))) in ();
        let basicItemView : BasicItemView.basicItemView ref = ref (((new BasicItemView.basicItemView (itemInterface, vector)) :> BasicItemView.basicItemView)) in ();
        ignore ((Obj.magic !node)#appendChild ((!basicItemView#toXmlNode ((Obj.magic document)))));
        let stringUtil : StringUtil.stringUtil ref = ref (((StringUtil.getInstance ()) :> StringUtil.stringUtil)) in ();
        let nameArray : Obj.t array ref = ref (((Obj.magic !keySet)#toArray ())) in ();
        let size : int ref = ref ((Array.length !nameArray)) in ();
        for index = 0 to !size - 1 do
            let name : string ref = ref ((Obj.magic !nameArray.(index))) in ();
            let value : string ref = ref ((Obj.magic (!hashMap#get (!name)))) in ();
            value := (!stringUtil#getNonNull (!value));
            ignore ((Obj.magic !node)#appendChild ((ModDomHelper.createNameValueNodes ((Obj.magic document), !name, !value))))
        done;
        let shippingAddressNode : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createElement ((StreetAddressData.get_nAME ()))))) in ();
        ignore ((Obj.magic !shippingAddressNode)#appendChild (((itemInterface#getShippingAddress ())#toXmlNode ((Obj.magic document)))));
        (Obj.magic ((Obj.magic !node)))
        end [@@warning "-20"]

    initializer
      begin
        ();
        ();
        ();
        itemInterface <- itemInterface_arg;
        vector <- vector_arg
      end
  end
let () = java_register_constructor "ItemView" (fun arguments -> Obj.repr (new itemView (Obj.obj arguments)))


