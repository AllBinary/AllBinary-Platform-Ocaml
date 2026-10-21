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
(* package views.generic.inventory *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.user.commerce.inventory.item.BasicItemData *)
(* import org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringValidationUtil *)

class inventoryColumnUtil () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable basicItemData : BasicItemData.basicItemData = (Obj.magic 0)
    method basicItemData = basicItemData
    method set_basicItemData value' = basicItemData <- value'
    

    method getColumnWhereLike : 'any1. 'any1 * string * string -> BasicArrayList.basicArrayList = fun (inventoryEntity, (category : string), (column : string)) ->
        let inventoryEntity = Obj.repr inventoryEntity in
        begin
        ignore ((Obj.magic logUtil)#putF (("Start Category: " ^ category), self, "getKeywords"));
        let keywords : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        let vectorOfHashMaps : BasicArrayList.basicArrayList ref = ref ((((Obj.magic inventoryEntity)#getAllRows ()) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((!vectorOfHashMaps#size ())) in ();
        for index = 0 to !size - 1 do
            let hashMap : java_hash_map ref = ref (((Obj.magic (!vectorOfHashMaps#get (index))) :> java_hash_map)) in ();
            let categoryName : string ref = ref ((Obj.magic (!hashMap#get (basicItemData#cATEGORY)))) in ();
            if ((not ((StringValidationUtil.getInstance ())#isEmpty (!categoryName))) && (String.starts_with ~prefix:(category) !categoryName)) then begin
                ignore (!keywords#add ((!hashMap#get (column))))
            end
        done;
        (!keywords :> BasicArrayList.basicArrayList)
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        basicItemData <- ((BasicItemData.getInstance ()) :> BasicItemData.basicItemData);
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "InventoryColumnUtil" (fun arguments -> Obj.repr (new inventoryColumnUtil (Obj.obj arguments)))

let instance = (new inventoryColumnUtil ())
let get_instance () = instance
let () = java_register_static "InventoryColumnUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "InventoryColumnUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


