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
(* package views.business.context *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.data.tree.dom.document.XmlDocumentHelper *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.visual.transform.TransformFactory *)
(* import org.allbinary.logic.visual.transform.TransformInterface *)
(* import org.allbinary.logic.visual.transform.info.GeneratorTransformInfoData *)
(* import org.allbinary.logic.visual.transform.info.RootTransformInfoData *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoHttp *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactory *)
(* import org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface *)
(* import org.allbinary.logic.visual.transform.template.TransformTemplateInterface *)
(* import org.allbinary.string.CommonSeps *)
(* import org.w3c.dom.Document *)
(* import views.business.context.modules.storefront.HttpStoreComponentView *)

class overrideObjectConfigRootContextView ((transformInfoInterface : TransformInfoInterface.transformInfoInterface)) =
  object (self)
    inherit HttpStoreComponentView.httpStoreComponentView (transformInfoInterface)
    val mutable logUtil : LogUtil.logUtil = (Obj.magic 0)
    method logUtil = logUtil
    method set_logUtil value = logUtil <- value
    
    

    method view () : string =
        begin
        (try
            if (org.allbinary#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains ((org.allbinary#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                ignore (logUtil#putF (("View Name: " ^ ((self#getTransformInfoInterface ())#getName ())), self, "view()"))
            end;
            let rootTransformInfoInterface : TransformInfoInterface.transformInfoInterface ref = ref (((Obj.magic (new TransformInfoHttp.transformInfoHttp ((Obj.magic (self#getTransformInfoInterface ()))))) :> TransformInfoInterface.transformInfoInterface)) in ();
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (!stringBuffer#append (((self#getTransformInfoInterface ())#getStoreName ())));
            ignore (!stringBuffer#append ((CommonSeps.getInstance ())#sPACE));
            let nameStart : string ref = ref ((!stringBuffer#toString ())) in ();
            if ((((self#getTransformInfoInterface ())#getName ())#indexOf (GeneratorTransformInfoData.nAME)) > 0) then begin
                ignore (!rootTransformInfoInterface#setName ((!nameStart ^ java_string_of (Obj.repr (GeneratorTransformInfoData.nAME)))))
            end else if ((((self#getTransformInfoInterface ())#getName ())#indexOf (RootTransformInfoData.nAME)) > 0) then begin
                ignore (!rootTransformInfoInterface#setName ((!nameStart ^ java_string_of (Obj.repr (RootTransformInfoData.nAME)))))
            end else begin
                raise (Failure ("Override Currently Not Supported"))
            end;
            let overrideObjectConfigDocument = ref ((((self#getTransformInfoInterface ())#getObjectConfigInterface ())#toXmlDoc ())) in ();
            if (org.allbinary#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains ((org.allbinary#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                ignore (logUtil#putF (("Retrieved OverrideObjectConfig: " ^ (XmlDocumentHelper.toString (!overrideObjectConfigDocument))), self, "view()"))
            end;
            let transformFactory : TransformFactory.transformFactory ref = ref (((TransformFactory.getInstance ()) :> TransformFactory.transformFactory)) in ();
            let rootComponentInterface : TransformInterface.transformInterface ref = ref (((!transformFactory#getInstance (abeClientInformation, (!rootTransformInfoInterface#getName ()), !rootTransformInfoInterface)) :> TransformInterface.transformInterface)) in ();
            let transformTemplateInterface : TransformTemplateInterface.transformTemplateInterface ref = ref (((Obj.magic !rootComponentInterface) :> TransformTemplateInterface.transformTemplateInterface)) in ();
            let componentInterface : TransformInterface.transformInterface ref = ref (((!transformFactory#getInstance (abeClientInformation, (!transformTemplateInterface#getName ()), (!rootComponentInterface#getTransformInfoInterface ()))) :> TransformInterface.transformInterface)) in ();
            let transformInfoObjectConfigInterface : TransformInfoObjectConfigInterface.transformInfoObjectConfigInterface ref = ref ((((TransformInfoObjectConfigAndManipulatorFactory.getInstance ())#getInstance (abeClientInformation, (!componentInterface#getTransformInfoInterface ()), !overrideObjectConfigDocument)) :> TransformInfoObjectConfigInterface.transformInfoObjectConfigInterface)) in ();
            ignore ((!componentInterface#getTransformInfoInterface ())#setObjectConfigInterface (!transformInfoObjectConfigInterface));
            if (org.allbinary#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains ((org.allbinary#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                ignore (logUtil#putF (("Set OverrideObjectConfig: " ^ (((!componentInterface#getTransformInfoInterface ())#getObjectConfigInterface ())#toString ())), self, "view()"))
            end;
            (!componentInterface#view ())
        with e -> begin
            if (org.allbinary#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains ((org.allbinary#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPERERROR)) then begin
                ignore (logUtil#put (commonStrings#eXCEPTION, self, "view()", e))
            end;
            raise e
        end)
        end

    initializer
      begin
        logUtil <- ((LogUtil.getInstance ()) :> LogUtil.logUtil);
        ();
        (* super(...) is the inherit clause *) ();
        if (org.allbinary#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains ((org.allbinary#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
            ignore (logUtil#putF (("View Name: " ^ (transformInfoInterface#getName ())), self, "OverrideObjectRootContextView()"))
        end
      end
  end


