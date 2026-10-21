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
(* package org.allbinary.logic.communication.http.request *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import java.util.Map *)
(* import java.util.Set *)
(* import javax.servlet.http.HttpServletRequest *)
(* import javax.servlet.jsp.PageContext *)
(* import org.allbinary.data.tree.dom.ModDomHelper *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonStrings *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class requestParams () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable map : Obj.t = Obj.repr 0
    method map : 'r. 'r = Obj.magic map
    method set_map : 'v. 'v -> unit = fun value' -> map <- Obj.repr value'
    val mutable kEY : string = ""
    method kEY = kEY
    method set_kEY value' = kEY <- value'
    val mutable vALUE : string = ""
    method vALUE = vALUE
    method set_vALUE value' = vALUE <- value'
    
    
    
    

    method setMap : 'any1. 'any1 -> unit = fun (map_arg) ->
        let map_arg = Obj.repr map_arg in
        begin
        map <- Obj.repr ((Obj.magic map_arg))
        end [@@warning "-20"]
    

    method getMap : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic map)))
        end
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        (try
            let node : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createElement ((RequestData.get_rEQUEST ()))))) in ();
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            let keys : Obj.t ref = ref ((Obj.repr ((Obj.magic map)#keySet ()))) in ();
            let keyArray : Obj.t array ref = ref (((Obj.magic !keys)#toArray ())) in ();
            let size : int ref = ref ((Array.length !keyArray)) in ();
            for i = 0 to !size - 1 do
                let key : string ref = ref ((Obj.magic !keyArray.(i))) in ();
                let values : string array ref = ref ((Obj.magic ((Obj.magic map)#get (!key)))) in ();
                ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
                ignore (!stringBuffer#append (kEY));
                ignore (!stringBuffer#append (!key));
                ignore (!stringBuffer#append (vALUE));
                ignore (!stringBuffer#append (!values.(0)));
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "toXmlNode(document)"));
                ignore ((Obj.magic !node)#appendChild ((ModDomHelper.createNameValueNodes ((Obj.magic document), (RequestData.get_pARAMETER ()), (Obj.obj (java_new "String" (Obj.repr (!key)))), (Obj.obj (java_new "String" (Obj.repr (!values.(0)))))))))
            done;
            (Obj.magic ((Obj.magic !node)))
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "toXmlNode(document)", e));
            (Obj.magic ((Obj.magic 0)))
        end)
        end [@@warning "-20"]
    

    method toHashMap () : java_hash_map =
        begin
        let hashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        let keys : Obj.t ref = ref ((Obj.repr ((Obj.magic map)#keySet ()))) in ();
        let keyArray : Obj.t array ref = ref (((Obj.magic !keys)#toArray ())) in ();
        let size : int ref = ref ((Array.length !keyArray)) in ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        for i = 0 to !size - 1 do
            let key : string ref = ref ((Obj.magic !keyArray.(i))) in ();
            let values : string array ref = ref ((Obj.magic ((Obj.magic map)#get (!key)))) in ();
            ignore (!hashMap#put ((Obj.obj (java_new "String" (Obj.repr (!key)))), (Obj.obj (java_new "String" (Obj.repr (!values.(0)))))))
        done;
        ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
        ignore (!stringBuffer#append ("RequestParams: "));
        ignore (!stringBuffer#append ((java_string_of (Obj.repr (Obj.magic map)))));
        ignore (!stringBuffer#append ("\ntoHashMap: "));
        ignore (!stringBuffer#append ((java_string_of (Obj.repr !hashMap))));
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "toHashMap()"));
        (!hashMap :> java_hash_map)
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        kEY <- "Key: ";
        vALUE <- " Value: ";
        ();
        ignore ((Obj.magic logUtil)#putF ("New RequestParams Size: 0", self, commonStrings#cONSTRUCTOR))
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "RequestParams" (fun arguments -> Obj.repr (new requestParams (Obj.obj arguments)))


