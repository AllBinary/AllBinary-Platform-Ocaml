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
(* package views.compound.objectConfig *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.ByteArrayInputStream *)
(* import java.io.InputStream *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.data.tree.dom.document.DocumentToNode *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.string.regex.replace.Replace *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.logic.visual.transform.TransformFactory *)
(* import org.allbinary.logic.visual.transform.TransformInterface *)
(* import org.allbinary.logic.visual.transform.info.RootTransformInfoData *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoData *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoDomNode *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.allbinary.logic.visual.transform.info.objectConfig.GenericStoreTransformInfoObjectConfig *)
(* import org.allbinary.string.CommonSeps *)
(* import org.w3c.dom.Document *)

class compoundContextTransformInfoObjectConfig ((abeClientInformation : AbeClientInformationInterface.abeClientInformationInterface), (transformInfoInterface : TransformInfoInterface.transformInfoInterface)) =
  object (self)
    inherit GenericStoreTransformInfoObjectConfig.genericStoreTransformInfoObjectConfig (abeClientInformation, transformInfoInterface)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    
    
    

    method get () : string =
        begin
        let storeName : string ref = ref (((self#getTransformInfoInterface ())#getStoreName ())) in ();
        let httpTransformInfoInterface : TransformInfoHttpInterface.transformInfoHttpInterface ref = ref (((Obj.magic (self#getTransformInfoInterface ())) :> TransformInfoHttpInterface.transformInfoHttpInterface)) in ();
        let templateNameOverride : string ref = ref (((StringUtil.getInstance ())#getNonNull ((Obj.magic ((!httpTransformInfoInterface#getPropertiesHashMap ())#get ((TransformInfoData.getInstance ())#pARTIAL)))))) in ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (!storeName));
        ignore (!stringBuffer#append (!templateNameOverride));
        ignore (!stringBuffer#append ((CommonSeps.getInstance ())#sPACE));
        ignore (!stringBuffer#append ((RootTransformInfoData.get_nAME ())));
        let rootComponentInterface : TransformInterface.transformInterface ref = ref ((((TransformFactory.getInstance ())#getInstance (abeClientInformation, (java_string_of (Obj.repr !stringBuffer)), (self#getTransformInfoInterface ()))) :> TransformInterface.transformInterface)) in ();
        let viewVector : BasicArrayList.basicArrayList ref = ref (((self#getTransformDomNodes ()) :> BasicArrayList.basicArrayList)) in ();
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
            ignore ((Obj.magic logUtil)#putF (("Root View Called with: " ^ java_string_of (Obj.repr ((!viewVector#size ())))), self, "get(transformInfoInterface)"))
        end;
        let rootView : string ref = ref ((!rootComponentInterface#view ())) in ();
        let startXMLHeader : string ref = ref ("<xsl:text disable-output-escaping=\"yes\" ><![CDATA[") in ();
        let endXMLHeader : string ref = ref ("]]></xsl:text>") in ();
        let size : int ref = ref ((!viewVector#size ())) in ();
        for index = 0 to !size - 1 do
            let objectConfigTransformInfoDomNode : TransformInfoDomNode.transformInfoDomNode ref = ref (((Obj.magic (!viewVector#get (index))) :> TransformInfoDomNode.transformInfoDomNode)) in ();
            let templateKey : string ref = ref ((!objectConfigTransformInfoDomNode#getReplaceKey ())) in ();
            let componentInterface : TransformInterface.transformInterface ref = ref ((((TransformFactory.getInstance ())#getInstance (abeClientInformation, ((!objectConfigTransformInfoDomNode#getTransformInfoInterface ())#getName ()), (self#getTransformInfoInterface ()))) :> TransformInterface.transformInterface)) in ();
            let replacementViewString : string ref = ref ((!componentInterface#view ())) in ();
            replacementViewString := (DocumentToNode.convertDocumentToNodeString (!replacementViewString));
            ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
            ignore (!stringBuffer#append (!startXMLHeader));
            ignore (!stringBuffer#append (!replacementViewString));
            ignore (!stringBuffer#append (!endXMLHeader));
            let templateValue : string ref = ref ((java_string_of (Obj.repr !stringBuffer))) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
                ignore (!stringBuffer#append ("Replacing: "));
                ignore (!stringBuffer#append (!templateKey));
                ignore (!stringBuffer#append (" with "));
                ignore (!stringBuffer#append (!templateValue));
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "get()"))
            end;
            let replace : Replace.replace ref = ref (((new Replace.replace (!templateKey, !templateValue)) :> Replace.replace)) in ();
            rootView := (!replace#all (!rootView))
        done;
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
            ignore ((Obj.magic logUtil)#putF (("End: Result of a compound view: " ^ !rootView), self, "get()"))
        end;
        !rootView
        end [@@warning "-7"]
    

    method createInputStream : 'return. unit -> 'return = fun () ->
        begin
        let completeTemplateViewBytes : int array ref = ref (((self#get ())#getBytes ())) in ();
        let bais : Obj.t ref = ref ((Obj.repr (new ByteArrayInputStream.byteArrayInputStream (!completeTemplateViewBytes)))) in ();
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
            ignore ((Obj.magic logUtil)#putF (("Template: " ^ (java_string_of (Obj.repr (Obj.obj (java_new "String" (Obj.repr (!completeTemplateViewBytes))))))), self, "createInputStream()"))
        end;
        (Obj.magic ((Obj.magic !bais)))
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        (* super(...) is the inherit clause *) ()
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "CompoundContextTransformInfoObjectConfig" (fun arguments -> Obj.repr (new compoundContextTransformInfoObjectConfig (Obj.obj arguments)))


