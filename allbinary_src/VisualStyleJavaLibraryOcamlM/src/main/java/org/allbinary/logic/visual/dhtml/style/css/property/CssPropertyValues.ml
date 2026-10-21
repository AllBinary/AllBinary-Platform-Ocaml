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
(* package org.allbinary.logic.visual.dhtml.style.css.property *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.data.tree.dom.DomData *)
(* import org.allbinary.data.tree.dom.DomNodeHelper *)
(* import org.allbinary.data.tree.dom.DomNodeInterface *)
(* import org.allbinary.data.tree.dom.DomSearchHelper *)
(* import org.allbinary.data.tree.dom.ModDomHelper *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonSeps *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class cssPropertyValues () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable propertyValueVector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method propertyValueVector = propertyValueVector
    method set_propertyValueVector value' = propertyValueVector <- value'
    
    
    

    method toHashMap () : java_hash_map =
        begin
        let commonSeps : CommonSeps.commonSeps ref = ref (((CommonSeps.getInstance ()) :> CommonSeps.commonSeps)) in ();
        let cssPropertyValueData : CssPropertyValueData.cssPropertyValueData ref = ref (((CssPropertyValueData.getInstance ()) :> CssPropertyValueData.cssPropertyValueData)) in ();
        let hashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let size : int ref = ref ((propertyValueVector#size ())) in ();
        let index : int ref = ref (0) in ();
        while (!index < !size) do
            let value : string ref = ref ((Obj.magic (propertyValueVector#get (!index)))) in ();
            ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
            ignore (!stringBuffer#append (!cssPropertyValueData#nAME));
            ignore (!stringBuffer#append (!commonSeps#bRACKET_OPEN));
            ignore (!stringBuffer#appendint (!index));
            ignore (!stringBuffer#append (!commonSeps#bRACKET_CLOSE));
            ignore (!hashMap#put ((java_string_of (Obj.repr !stringBuffer)), !value));
            index := !index + 1;
            index := !index + 1
        done;
        (!hashMap :> java_hash_map)
        end
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
            let hashMap : java_hash_map ref = ref (((self#toHashMap ()) :> java_hash_map)) in ();
            ignore ((Obj.magic logUtil)#putF (("CssPropertyValues HashMap: " ^ (java_string_of (Obj.repr !hashMap))), self, "toXmlNode()"))
        end;
        (Obj.magic ((ModDomHelper.createNameValueIndexNodes ((Obj.magic document), (CssPropertyData.getInstance ())#vALUES, (CssPropertyValueData.getInstance ())#nAME, propertyValueVector))))
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        propertyValueVector <- (new BasicArrayListD.basicArrayListD ())
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "CssPropertyValues" (fun arguments -> Obj.repr (new cssPropertyValues (Obj.obj arguments)))


