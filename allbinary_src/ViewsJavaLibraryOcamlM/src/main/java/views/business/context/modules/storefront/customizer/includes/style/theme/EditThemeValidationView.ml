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
(* package views.business.context.modules.storefront.customizer.includes.style.theme *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.business.category.CategoryFactoryInterface *)
(* import org.allbinary.business.category.CategoryInterface *)
(* import org.allbinary.business.category.store.theme.StoreThemeCategoryFactory *)
(* import org.allbinary.business.category.store.theme.StoreThemeCategoryInterface *)
(* import org.allbinary.business.category.store.theme.StoreThemeCategoryPathValidationView *)
(* import org.allbinary.data.tree.category.CategoryLoaderFactory *)
(* import org.allbinary.data.tree.category.CategoryLoaderInterface *)
(* import org.allbinary.data.tree.dom.DomNodeInterface *)
(* import org.allbinary.data.tree.dom.document.DomDocumentHelper *)
(* import org.allbinary.data.tree.dom.document.XmlDocumentHelper *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.control.validate.ValidationComponentInterface *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class editThemeValidationView ((transformInfoInterface : TransformInfoInterface.transformInfoInterface)) =
  object (self)
    inherit ThemeCustomizerView.themeCustomizerView (transformInfoInterface)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    

    method isValid () : bool =
        begin
        (try
            let isValid : bool ref = ref (true) in ();
            let categoryFactoryInterface : CategoryFactoryInterface.categoryFactoryInterface ref = ref (((new StoreThemeCategoryFactory.storeThemeCategoryFactory ((self#getTransformInfoInterface ()))) :> CategoryFactoryInterface.categoryFactoryInterface)) in ();
            let categoryLoaderInterface : CategoryLoaderInterface.categoryLoaderInterface ref = ref (((CategoryLoaderFactory.getInstance (!categoryFactoryInterface)) :> CategoryLoaderInterface.categoryLoaderInterface)) in ();
            let rootStoreThemeCategoryInterface : StoreThemeCategoryInterface.storeThemeCategoryInterface ref = ref (((Obj.magic (!categoryFactoryInterface#getRootInstance ())) :> StoreThemeCategoryInterface.storeThemeCategoryInterface)) in ();
            let storeThemeCategoryInterface : StoreThemeCategoryInterface.storeThemeCategoryInterface ref = ref (((Obj.magic (!categoryLoaderInterface#getAll ((Obj.magic !rootStoreThemeCategoryInterface)))) :> StoreThemeCategoryInterface.storeThemeCategoryInterface)) in ();
            validationInterface <- (new StoreThemeCategoryPathValidationView.storeThemeCategoryPathValidationView ((Obj.magic !storeThemeCategoryInterface)));
            isValid := (validationInterface#isValid ());
            let domNodeInterface : DomNodeInterface.domNodeInterface ref = ref (((Obj.magic validationInterface) :> DomNodeInterface.domNodeInterface)) in ();
            let document : Obj.t ref = ref ((Obj.repr (DomDocumentHelper.create ()))) in ();
            ignore ((Obj.magic !document)#appendChild ((!domNodeInterface#toXmlNode ((Obj.magic !document)))));
            let documentString : string ref = ref ((XmlDocumentHelper.toString ((Obj.magic !document)))) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEWERROR)) then begin
                ignore ((Obj.magic logUtil)#putF (("Setting Data: " ^ !documentString), self, commonStrings#cONSTRUCTOR))
            end;
            ignore ((self#getTransformInfoInterface ())#setData (!documentString));
            !isValid
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEWERROR)) then begin
                ignore ((Obj.magic logUtil)#put ("Failed to validate", self, commonStrings#iS_VALID, e))
            end;
            false
        end)
        end [@@warning "-7"]
    

    method validationInfo () : string =
        begin
        (try
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (!stringBuffer#append ((validationInterface#validationInfo ())));
            (java_string_of (Obj.repr !stringBuffer))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEWERROR)) then begin
                ignore ((Obj.magic logUtil)#put ("Failed to generate validation error info", self, "validationInfo()", e))
            end;
            "Error Getting Validation Info"
        end)
        end [@@warning "-7"]
    

    method toValidationInfoDoc : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic 0)))
        end [@@warning "-7"]
    

    method toValidationInfoNode : 'any1 'return. 'any1 -> 'return = fun (_document) ->
        begin
        (Obj.magic ((Obj.magic 0)))
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        (* super(...) is the inherit clause *) ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "EditThemeValidationView" (fun arguments -> Obj.repr (new editThemeValidationView (Obj.obj arguments)))


