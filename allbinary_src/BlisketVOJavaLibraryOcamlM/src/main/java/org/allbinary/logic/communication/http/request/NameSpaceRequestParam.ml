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
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.string.tokens.Tokenizer *)
(* import org.allbinary.logic.visual.dhtml.html.name.HtmlNameMathData *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class nameSpaceRequestParam ((nameSpace : string), (value_arg : string)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable nameSpaceVector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method nameSpaceVector = nameSpaceVector
    method set_nameSpaceVector value' = nameSpaceVector <- value'
    val mutable nameSpacePropertiesHashMap : java_hash_map = (Obj.magic 0)
    method nameSpacePropertiesHashMap = nameSpacePropertiesHashMap
    method set_nameSpacePropertiesHashMap value' = nameSpacePropertiesHashMap <- value'
    val mutable value : string = ""
    method value = value
    method set_value value' = value <- value'
    
    

    method getPackages () : BasicArrayList.basicArrayList =
        begin
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#hTTPREQUEST)) then begin
            ignore ((Obj.magic logUtil)#putF (("NameSpace: " ^ (java_string_of (Obj.repr nameSpaceVector))), self, "getPackages()"))
        end;
        (nameSpaceVector :> BasicArrayList.basicArrayList)
        end
    

    method getPackageProperties ((packageIndex : int)) : java_hash_map =
        begin
        let packagePropertiesHashMap : java_hash_map ref = ref (((Obj.magic (nameSpacePropertiesHashMap#get ((string_of_int (packageIndex))))) :> java_hash_map)) in ();
        if (!packagePropertiesHashMap == (Obj.magic 0)) then begin
            packagePropertiesHashMap := ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ())
        end;
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#hTTPREQUEST)) then begin
            ignore ((Obj.magic logUtil)#putF (("Package Properties: " ^ (java_string_of (Obj.repr !packagePropertiesHashMap))), self, "getPackagesProperties()"))
        end;
        (!packagePropertiesHashMap :> java_hash_map)
        end
    

    method getValue () : string =
        begin
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#hTTPREQUEST)) then begin
            ignore ((Obj.magic logUtil)#putF (("\nValue: " ^ value), self, "getValue()"))
        end;
        value
        end
    

    method generatePackagePropertiesHashMap ((properties : string)) : java_hash_map =
        begin
        let propertiesTokenizer : Tokenizer.tokenizer ref = ref (((new Tokenizer.tokenizer ((NameSpaceRequestParamData.get_pROPERTIESSEPARATOR ()))) :> Tokenizer.tokenizer)) in ();
        let packagePropertiesHashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        let propertyVector : BasicArrayList.basicArrayList ref = ref (((!propertiesTokenizer#getTokensFromString (properties, (new BasicArrayListD.basicArrayListD ()))) :> BasicArrayList.basicArrayList)) in ();
        let list : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        let propertyTokenizer : Tokenizer.tokenizer ref = ref (((new Tokenizer.tokenizer ((HtmlNameMathData.getInstance ())#eQUALS)) :> Tokenizer.tokenizer)) in ();
        let index : int ref = ref (0) in ();
        let size : int ref = ref ((!propertyVector#size ())) in ();
        while (!index < !size) do
            let property : string ref = ref ((Obj.magic (!propertyVector#get (!index)))) in ();
            ignore (!list#clear ());
            let propertyNameValueVector : BasicArrayList.basicArrayList ref = ref (((!propertyTokenizer#getTokensFromString (!property, !list)) :> BasicArrayList.basicArrayList)) in ();
            let index2 : int ref = ref (0) in ();
            while (!index2 < (!propertyNameValueVector#size ())) do
                let propertyName : string ref = ref ((Obj.magic (!propertyNameValueVector#get ((let value = !index2 in index2 := !index2 + 1; value))))) in ();
                if ((!propertyNameValueVector#size ()) > 1) then begin
                    let propertyValue : string ref = ref ((Obj.magic (!propertyNameValueVector#get ((let value = !index2 in index2 := !index2 + 1; value))))) in ();
                    if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#hTTPREQUEST)) then begin
                        ignore ((Obj.magic logUtil)#putF (((("\nProperty Name: " ^ !propertyName) ^ "\nProperty Value: ") ^ !propertyValue), self, "generatePackagePropertiesHashMap()"))
                    end;
                    ignore (!packagePropertiesHashMap#put (!propertyName, !propertyValue))
                end else begin
                    ignore (!packagePropertiesHashMap#put (!propertyName, (StringUtil.getInstance ())#eMPTY_STRING))
                end
            done
        done;
        (!packagePropertiesHashMap :> java_hash_map)
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        ();
        ();
        nameSpaceVector <- (new BasicArrayListD.basicArrayListD ());
        nameSpacePropertiesHashMap <- ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ());
        value <- value_arg;
        let beginIndex : int ref = ref ((java_string_index_of nameSpace (Obj.repr ((NameSpaceRequestParamData.get_nAME ()))))) in ();
        if (!beginIndex < 0) then begin
            raise (Failure ("Not a NameSpaceRequest"))
        end;
        let packages : string ref = ref ((String.sub nameSpace (((!beginIndex + ((NameSpaceRequestParamData.get_nAME ())#length ())) + ((NameSpaceRequestParamData.get_sEP ())#length ()))) (String.length nameSpace - (((!beginIndex + ((NameSpaceRequestParamData.get_nAME ())#length ())) + ((NameSpaceRequestParamData.get_sEP ())#length ())))))) in ();
        let sepTokenizer : Tokenizer.tokenizer ref = ref (((new Tokenizer.tokenizer ((NameSpaceRequestParamData.get_sEP ()))) :> Tokenizer.tokenizer)) in ();
        let nameSpaceWithPropertiesVector : BasicArrayList.basicArrayList ref = ref (((!sepTokenizer#getTokensFromString (!packages, (new BasicArrayListD.basicArrayListD ()))) :> BasicArrayList.basicArrayList)) in ();
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#hTTPREQUEST)) then begin
            ignore ((Obj.magic logUtil)#putF (("\nSep Tokens: " ^ (java_string_of (Obj.repr !nameSpaceWithPropertiesVector))), self, "NameSpaceRequestParam()"))
        end;
        let nameSpaceAndPropertiesTokenizer : Tokenizer.tokenizer ref = ref (((new Tokenizer.tokenizer ((NameSpaceRequestParamData.get_pROPERTIES ()))) :> Tokenizer.tokenizer)) in ();
        let packageIndex : int ref = ref (0) in ();
        let list : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        let index : int ref = ref (0) in ();
        let size : int ref = ref ((!nameSpaceWithPropertiesVector#size ())) in ();
        while (!index < !size) do
            let nameSpaceWithProperties : string ref = ref ((Obj.magic (!nameSpaceWithPropertiesVector#get ((let value = !index in index := !index + 1; value))))) in ();
            ignore (!list#clear ());
            let nameSpaceAndPropertiesVector : BasicArrayList.basicArrayList ref = ref (((!nameSpaceAndPropertiesTokenizer#getTokensFromString (!nameSpaceWithProperties, !list)) :> BasicArrayList.basicArrayList)) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#hTTPREQUEST)) then begin
                ignore ((Obj.magic logUtil)#putF (("\nPackageName and PackageName Properties Tokens: " ^ (java_string_of (Obj.repr !nameSpaceAndPropertiesVector))), self, "NameSpaceRequestParam()"))
            end;
            if ((!nameSpaceAndPropertiesVector#size ()) > 0) then begin
                let packageName : string ref = ref ((Obj.magic (!nameSpaceAndPropertiesVector#get (0)))) in ();
                if (!packageName = (Obj.magic 0)) then begin
                    raise (Failure ("Package Name Is Null"))
                end;
                ignore (nameSpaceVector#add (!packageName));
                if ((!nameSpaceAndPropertiesVector#size ()) > 1) then begin
                    let properties : string ref = ref ((Obj.magic (!nameSpaceAndPropertiesVector#get (1)))) in ();
                    let packagePropertiesHashMap : java_hash_map ref = ref (((self#generatePackagePropertiesHashMap (!properties)) :> java_hash_map)) in ();
                    ignore (nameSpacePropertiesHashMap#put ((string_of_int (!packageIndex)), !packagePropertiesHashMap))
                end;
                packageIndex := !packageIndex + 1
            end
        done;
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#hTTPREQUEST)) then begin
            ignore ((Obj.magic logUtil)#putF (("NameSpace: " ^ (java_string_of (Obj.repr nameSpaceVector))), self, "NameSpaceRequestParam()"))
        end
      end
  end [@@warning "-20"]
let () = java_register_constructor "NameSpaceRequestParam" (fun arguments -> Obj.repr (new nameSpaceRequestParam (Obj.obj arguments)))


