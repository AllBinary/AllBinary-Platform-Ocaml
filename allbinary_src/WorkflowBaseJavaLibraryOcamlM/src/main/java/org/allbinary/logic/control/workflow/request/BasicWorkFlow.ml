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
(* package org.allbinary.logic.control.workflow.request *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.Calendar *)
(* import java.util.HashMap *)
(* import java.util.Set *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import javax.servlet.jsp.PageContext *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontData *)
(* import org.allbinary.business.entry.EntryData *)
(* import org.allbinary.data.tree.dom.ModDomHelper *)
(* import org.allbinary.data.tree.dom.document.DomDocumentHelper *)
(* import org.allbinary.data.tree.dom.document.XmlDocumentHelper *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.http.request.RequestParams *)
(* import org.allbinary.logic.communication.http.request.session.WeblisketSession *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.control.workflow.WorkFlowData *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class basicWorkFlow () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable workFlowDoc : Obj.t = Obj.repr 0
    method workFlowDoc : 'r. 'r = Obj.magic workFlowDoc
    method set_workFlowDoc : 'v. 'v -> unit = fun value' -> workFlowDoc <- Obj.repr value'
    val mutable workFlowName : string = ""
    method workFlowName = workFlowName
    method set_workFlowName value' = workFlowName <- value'
    val mutable storeName : string = ""
    method storeName = storeName
    method set_storeName value' = storeName <- value'
    
    
    
    

    method getName () : string =
        begin
        workFlowName
        end
    

    method getStoreName () : string =
        begin
        storeName
        end
    

    method getKey () : Obj.t =
        begin
        (Obj.repr ((Obj.magic (self#getName ()))))
        end
    

    method toVector () : BasicArrayList.basicArrayList =
        begin
        let values : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        ignore (!values#add (workFlowName));
        ignore (!values#add (storeName));
        ignore (!values#add ((XmlDocumentHelper.toString ((Obj.magic workFlowDoc)))));
        let calendar : java_calendar ref = ref (((java_calendar_get_instance ()) :> java_calendar)) in ();
        let time : string ref = ref ((Obj.obj (java_new "String" (Obj.repr ((java_string_of (Obj.repr (Obj.obj (java_new "Long" (Obj.repr ((!calendar#getTimeInMillis ())))))))))))) in ();
        ignore (!values#add (!time));
        ignore (!values#add (!time));
        (!values :> BasicArrayList.basicArrayList)
        end
    

    method toHashMap () : java_hash_map =
        begin
        let hashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        ignore (!hashMap#put ((WorkFlowData.getInstance ())#nAME, workFlowName));
        ignore (!hashMap#put ((StoreFrontData.getInstance ())#nAME, storeName));
        ignore (!hashMap#put ((WorkFlowData.getInstance ())#dATA, (XmlDocumentHelper.toString ((Obj.magic workFlowDoc)))));
        let calendar : java_calendar ref = ref (((java_calendar_get_instance ()) :> java_calendar)) in ();
        let time : string ref = ref ((Obj.obj (java_new "String" (Obj.repr ((java_string_of (Obj.repr (Obj.obj (java_new "Long" (Obj.repr ((!calendar#getTimeInMillis ())))))))))))) in ();
        ignore (!hashMap#put ((EntryData.getInstance ())#lASTMODIFIED, !time));
        (!hashMap :> java_hash_map)
        end
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        (try
            let hashMap : java_hash_map ref = ref (((self#toHashMap ()) :> java_hash_map)) in ();
            let keySet : Obj.t ref = ref ((Obj.repr (!hashMap#keySet ()))) in ();
            let node : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createElement ((WorkFlowData.getInstance ())#wORKFLOW)))) in ();
            let nameArray : Obj.t array ref = ref (((Obj.magic !keySet)#toArray ())) in ();
            let size : int ref = ref ((Array.length !nameArray)) in ();
            for index = 0 to !size - 1 do
                let name : string ref = ref ((Obj.magic !nameArray.(index))) in ();
                let value : string ref = ref ((Obj.magic (!hashMap#get (!name)))) in ();
                ignore ((Obj.magic !node)#appendChild ((ModDomHelper.createNameValueNodes ((Obj.magic document), !name, !value))))
            done;
            (Obj.magic ((Obj.magic !node)))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "toXmlNode()", e))
            end;
            (Obj.magic ((Obj.magic 0)))
        end)
        end [@@warning "-20"]
    

    method toXmlDoc : 'return. unit -> 'return = fun () ->
        begin
        (try
            (Obj.magic ((Obj.magic workFlowDoc)))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "toXmlDoc()", e))
            end;
            (Obj.magic ((Obj.magic 0)))
        end)
        end
    

    method isValid () : bool =
        begin
        (try
            let returnBoolean : bool ref = ref (true) in ();
            if (workFlowName = (Obj.magic 0)) then begin
                returnBoolean := false
            end;
            !returnBoolean
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put ("Failed to validate", self, commonStrings#iS_VALID, e))
            end;
            false
        end)
        end
    

    method validationInfo () : string =
        begin
        (try
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            if (workFlowName = (Obj.magic 0)) then begin
                ignore (!stringBuffer#append ("No WorkFlow name specified."))
            end;
            (java_string_of (Obj.repr !stringBuffer))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEWERROR)) then begin
                ignore ((Obj.magic logUtil)#put ("Failed to generate validation error info", self, "validationInfo()", e))
            end;
            "Error Getting Validation Info"
        end)
        end
    

    method toValidationInfoDoc : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic 0)))
        end
    

    method toValidationInfoNode : 'any1 'return. 'any1 -> 'return = fun (_document) ->
        begin
        (Obj.magic ((Obj.magic 0)))
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        ();
        ();
        ();
        workFlowName <- (StringUtil.getInstance ())#eMPTY_STRING;
        workFlowDoc <- Obj.repr ((DomDocumentHelper.create ()));
        let workFlowNode : Obj.t ref = ref ((Obj.repr ((Obj.magic workFlowDoc)#createElement ((WorkFlowData.getInstance ())#wORKFLOW)))) in ();
        ignore ((Obj.magic workFlowDoc)#appendChild ((Obj.magic !workFlowNode)))
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "BasicWorkFlow" (fun arguments -> Obj.repr (new basicWorkFlow (Obj.obj arguments)))


