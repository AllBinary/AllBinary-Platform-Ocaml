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
(* import org.allbinary.data.tree.dom.DomNodeInterface *)
(* import org.allbinary.data.tree.dom.ModDomHelper *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class basicItemView ((itemInterface_arg : ItemInterface.itemInterface), (vector_arg : BasicArrayList.basicArrayList)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable basicItemData : BasicItemData.basicItemData = (Obj.magic 0)
    method basicItemData = basicItemData
    method set_basicItemData value' = basicItemData <- value'
    val mutable itemInterface : ItemInterface.itemInterface = (Obj.magic 0)
    method itemInterface = itemInterface
    method set_itemInterface value' = itemInterface <- value'
    val mutable vector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method vector = vector
    method set_vector value' = vector <- value'
    
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#pRODUCTSEARCHLOGGING)) then begin
            ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, "toXmlNode"))
        end;
        let hashMap : java_hash_map ref = ref (((itemInterface#toHashMap ()) :> java_hash_map)) in ();
        let eMPTY_STRING : string ref = ref ((StringUtil.getInstance ())#eMPTY_STRING) in ();
        ignore (!hashMap#put (basicItemData#iMAGE, !eMPTY_STRING));
        let stringUtil : StringUtil.stringUtil ref = ref (((StringUtil.getInstance ()) :> StringUtil.stringUtil)) in ();
        let keySet : Obj.t ref = ref ((Obj.repr (!hashMap#keySet ()))) in ();
        let node : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createElement (basicItemData#iTEM)))) in ();
        let nameArray : Obj.t array ref = ref (((Obj.magic !keySet)#toArray ())) in ();
        let size2 : int ref = ref ((Array.length !nameArray)) in ();
        for index = 0 to !size2 - 1 do
            let name : string ref = ref ((Obj.magic !nameArray.(index))) in ();
            let value : string ref = ref ((Obj.magic (!hashMap#get (!name)))) in ();
            value := (!stringUtil#getNonNull (!value));
            ignore ((Obj.magic !node)#appendChild ((ModDomHelper.createNameValueNodes ((Obj.magic document), !name, !value))))
        done;
        let totalNode : Obj.t ref = ref ((Obj.repr (ModDomHelper.createNameValueNodes ((Obj.magic document), basicItemData#tOTAL, (java_string_of (Obj.repr (itemInterface#getTotal ()))))))) in ();
        ignore ((Obj.magic !node)#appendChild ((Obj.magic !totalNode)));
        let size : int ref = ref ((vector#size ())) in ();
        for index = 0 to !size - 1 do
            let domNodeInterface : DomNodeInterface.domNodeInterface ref = ref (((Obj.magic (vector#get (index))) :> DomNodeInterface.domNodeInterface)) in ();
            let customNode : Obj.t ref = ref ((Obj.repr (!domNodeInterface#toXmlNode ((Obj.magic document))))) in ();
            ignore ((Obj.magic !node)#appendChild ((Obj.magic !customNode)))
        done;
        (Obj.magic ((Obj.magic !node)))
        end [@@warning "-20"]
    

    method toXmlDoc : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic 0)))
        end
    

    method view () : string =
        begin
        (Obj.magic 0)
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        basicItemData <- ((BasicItemData.getInstance ()) :> BasicItemData.basicItemData);
        ();
        ();
        ();
        itemInterface <- itemInterface_arg;
        vector <- vector_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "BasicItemView" (fun arguments -> Obj.repr (new basicItemView (Obj.obj arguments)))


