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
(* package org.allbinary.logic.visual.dhtml.style.css *)

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
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.visual.dhtml.style.css.property.CssPropertiesValidationFactory *)
(* import org.allbinary.string.CommonStrings *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)
(* import org.w3c.dom.NodeList *)

class cssElementView () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable tITLE : string = ""
    method tITLE = tITLE
    method set_tITLE value' = tITLE <- value'
    val mutable dESCRIPTION : string = ""
    method dESCRIPTION = dESCRIPTION
    method set_dESCRIPTION value' = dESCRIPTION <- value'
    val mutable value : string = ""
    method value = value
    method set_value value' = value <- value'
    val mutable title : string = ""
    method title = title
    method set_title value' = title <- value'
    val mutable description : string = ""
    method description = description
    method set_description value' = description <- value'
    val mutable cssElementVector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method cssElementVector = cssElementVector
    method set_cssElementVector value' = cssElementVector <- value'
    val mutable cssPropertyVector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method cssPropertyVector = cssPropertyVector
    method set_cssPropertyVector value' = cssPropertyVector <- value'
    
    
    

    method getValue () : string =
        begin
        value
        end
    

    method toHashMap () : java_hash_map =
        begin
        let hashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        ignore (!hashMap#put ((DomData.get_vALUE ()), value));
        ignore (!hashMap#put (tITLE, title));
        ignore (!hashMap#put (dESCRIPTION, description));
        (!hashMap :> java_hash_map)
        end
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        let hashMap : java_hash_map ref = ref (((self#toHashMap ()) :> java_hash_map)) in ();
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
            ignore ((Obj.magic logUtil)#putF (("CssView HashMap: " ^ (java_string_of (Obj.repr !hashMap))), self, "toXmlNode"))
        end;
        let node : Obj.t ref = ref ((Obj.repr (ModDomHelper.createNodeWithValueNodes ((Obj.magic document), (CssElementData.getInstance ())#nAME, !hashMap)))) in ();
        let size : int ref = ref ((cssPropertyVector#size ())) in ();
        for index = 0 to !size - 1 do
            let cssPropertyDomNodeInterface : DomNodeInterface.domNodeInterface ref = ref (((Obj.magic (cssPropertyVector#get (index))) :> DomNodeInterface.domNodeInterface)) in ();
            ignore ((Obj.magic !node)#appendChild ((!cssPropertyDomNodeInterface#toXmlNode ((Obj.magic document)))))
        done;
        let size2 : int ref = ref ((cssElementVector#size ())) in ();
        for index = 0 to !size2 - 1 do
            let cssElementDomNodeInterface : DomNodeInterface.domNodeInterface ref = ref (((Obj.magic (cssElementVector#get (index))) :> DomNodeInterface.domNodeInterface)) in ();
            ignore ((Obj.magic !node)#appendChild ((!cssElementDomNodeInterface#toXmlNode ((Obj.magic document)))))
        done;
        (Obj.magic ((Obj.magic !node)))
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        tITLE <- "title";
        dESCRIPTION <- "description";
        ();
        ();
        ();
        cssElementVector <- ((Obj.magic 0) :> BasicArrayList.basicArrayList);
        ();
        ();
        cssPropertyVector <- (new BasicArrayListD.basicArrayListD ());
        let stringUtil : StringUtil.stringUtil ref = ref (((StringUtil.getInstance ()) :> StringUtil.stringUtil)) in ();
        title <- !stringUtil#eMPTY_STRING;
        description <- !stringUtil#eMPTY_STRING;
        value <- !stringUtil#eMPTY_STRING
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "CssElementView" (fun arguments -> Obj.repr (new cssElementView (Obj.obj arguments)))


