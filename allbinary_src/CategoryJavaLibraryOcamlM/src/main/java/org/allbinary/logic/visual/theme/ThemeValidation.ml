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
(* package org.allbinary.logic.visual.theme *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.category.CategoryData *)
(* import org.allbinary.business.category.CategoryFactoryInterface *)
(* import org.allbinary.business.category.store.theme.StoreThemeCategoryFactory *)
(* import org.allbinary.business.category.store.theme.StoreThemeCategoryInterface *)
(* import org.allbinary.data.tree.category.CategoryLoaderFactory *)
(* import org.allbinary.data.tree.category.CategoryLoaderInterface *)
(* import org.allbinary.data.tree.dom.DomData *)
(* import org.allbinary.data.tree.dom.DomNodeHelper *)
(* import org.allbinary.data.tree.dom.DomNodeInterface *)
(* import org.allbinary.data.tree.dom.DomSearchHelper *)
(* import org.allbinary.data.tree.dom.ModDomHelper *)
(* import org.allbinary.data.tree.dom.document.DomDocumentHelper *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.sql.AbSqlData *)
(* import org.allbinary.logic.control.crypt.file.CryptFileReader *)
(* import org.allbinary.logic.control.validate.ValidationInterface *)
(* import org.allbinary.logic.io.path.AbPath *)
(* import org.allbinary.logic.io.path.AbPathData *)
(* import org.allbinary.logic.io.path.PathUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.string.StringValidationUtil *)
(* import org.allbinary.logic.visual.transform.info.CompositeTransformInfoInterface *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.allbinary.logic.visual.transform.template.customizer.includes.style.css.template.retail.CssStyleValidation *)
(* import org.allbinary.string.CommonStrings *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class themeValidation ((transformInfoInterface_arg : TransformInfoInterface.transformInfoInterface), (hashMap : java_hash_map)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable transformInfoInterface : TransformInfoInterface.transformInfoInterface = (Obj.magic 0)
    method transformInfoInterface = transformInfoInterface
    method set_transformInfoInterface value' = transformInfoInterface <- value'
    val mutable styleValidationInterface : ValidationInterface.validationInterface = (Obj.magic 0)
    method styleValidationInterface = styleValidationInterface
    method set_styleValidationInterface value' = styleValidationInterface <- value'
    val mutable themeName : string = ""
    method themeName = themeName
    method set_themeName value' = themeName <- value'
    val mutable themePreviewImageName : string = ""
    method themePreviewImageName = themePreviewImageName
    method set_themePreviewImageName value' = themePreviewImageName <- value'
    val mutable webAppAbPath : AbPath.abPath = (Obj.magic 0)
    method webAppAbPath = webAppAbPath
    method set_webAppAbPath value' = webAppAbPath <- value'
    val mutable categoryAbPath : AbPath.abPath = (Obj.magic 0)
    method categoryAbPath = categoryAbPath
    method set_categoryAbPath value' = categoryAbPath <- value'
    val mutable fileAbPath : AbPath.abPath = (Obj.magic 0)
    method fileAbPath = fileAbPath
    method set_fileAbPath value' = fileAbPath <- value'
    
    
    
    

    method init () : unit =
        begin
        let categoryFactoryInterface : CategoryFactoryInterface.categoryFactoryInterface ref = ref (((Obj.obj (java_new "StoreThemeCategoryFactory" (Obj.repr ((self#getTransformInfoInterface ()))))) :> CategoryFactoryInterface.categoryFactoryInterface)) in ();
        let categoryLoaderInterface : CategoryLoaderInterface.categoryLoaderInterface ref = ref (((CategoryLoaderFactory.getInstance (!categoryFactoryInterface)) :> CategoryLoaderInterface.categoryLoaderInterface)) in ();
        let rootStoreThemeCategoryInterface : Obj.t ref = ref ((Obj.repr (Obj.magic (!categoryFactoryInterface#getRootInstance ())))) in ();
        (self#init ((Obj.magic !rootStoreThemeCategoryInterface)))
        end
    

    (* Java overload init(StoreThemeCategoryInterface) is not converted: OCaml has one method per name *)
    

    method getTransformInfoInterface () : TransformInfoInterface.transformInfoInterface =
        begin
        (transformInfoInterface :> TransformInfoInterface.transformInfoInterface)
        end
    

    method getName () : string =
        begin
        themeName
        end
    

    method getPreviewImageName () : string =
        begin
        themePreviewImageName
        end
    

    method getPreviewImagePath () : string =
        begin
        ((java_string_of (Obj.repr webAppAbPath)) ^ (java_string_of (Obj.repr categoryAbPath)))
        end
    

    method getPath () : string =
        begin
        (java_string_of (Obj.repr categoryAbPath))
        end
    

    method getCssStyleValidation () : CssStyleValidation.cssStyleValidation =
        begin
        if (styleValidationInterface == (Obj.magic 0)) then begin
            let cssStyleFileAbPath : AbPath.abPath ref = ref (((new AbPath.abPath ((java_string_of (Obj.repr fileAbPath)), ((themeName ^ java_string_of (Obj.repr ((Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#eXTENSION_SEP))) ^ java_string_of (Obj.repr ((CategoryData.getInstance ())#uNCRYPTED_EXTENSION))))) :> AbPath.abPath)) in ();
            let cryptFileReader : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "CryptFileReader" (Obj.repr ((CategoryData.getInstance ())#uNCRYPTED_EXTENSION, (CategoryData.getInstance ())#eNCRYPTED_EXTENSION)))))) in ();
            let document : Obj.t ref = ref ((Obj.repr (DomDocumentHelper.create (((Obj.magic !cryptFileReader)#get (!cssStyleFileAbPath)))))) in ();
            styleValidationInterface <- (new CssStyleValidation.cssStyleValidation ((Obj.magic !document)))
        end;
        ((Obj.magic styleValidationInterface) :> CssStyleValidation.cssStyleValidation)
        end
    

    method isValid () : bool =
        begin
        (try
            let isValid : bool ref = ref (true) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, commonStrings#iS_VALID))
            end;
            if (not ((StringValidationUtil.getInstance ())#isValidRequired ((java_string_of (Obj.repr categoryAbPath)), (AbSqlData.get_mINSTRING ()), (AbSqlData.get_mAXSTRING ())))) then begin
                isValid := false
            end;
            if (not ((StringValidationUtil.getInstance ())#isValidRequired (themeName, (AbSqlData.get_mINSTRING ()), (AbSqlData.get_mAXSTRING ())))) then begin
                isValid := false
            end;
            if (not (((self#getCssStyleValidation ())#isValid ())#booleanValue ())) then begin
                isValid := false
            end;
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                ignore ((Obj.magic logUtil)#putF (("End: " ^ java_string_of (Obj.repr (!isValid))), self, commonStrings#iS_VALID))
            end;
            !isValid
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put ("Failed to validate form", self, commonStrings#iS_VALID, e))
            end;
            false
        end)
        end
    

    method validationInfo () : string =
        begin
        (try
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (!stringBuffer#append ("Theme Validation Error"));
            (java_string_of (Obj.repr !stringBuffer))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEWERROR)) then begin
                ignore ((Obj.magic logUtil)#put ("Failed to generate validation error info", self, "validationInfo()", e))
            end;
            "Error Validating Form"
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
    

    method getKey () : Obj.t =
        begin
        (Obj.repr ((Obj.magic (self#getName ()))))
        end
    

    method toVector () : BasicArrayList.basicArrayList =
        begin
        let vector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        ignore (!vector#add ((self#getName ())));
        ignore (!vector#add ((self#getPath ())));
        ignore (!vector#add ((self#getPreviewImageName ())));
        ignore (!vector#add ((self#getPreviewImagePath ())));
        (!vector :> BasicArrayList.basicArrayList)
        end
    

    method toHashMap () : java_hash_map =
        begin
        let themeData : ThemeData.themeData ref = ref (((ThemeData.getInstance ()) :> ThemeData.themeData)) in ();
        let hashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        ignore (!hashMap#put (!themeData#nAME, (self#getName ())));
        ignore (!hashMap#put (!themeData#pATH, (self#getPath ())));
        ignore (!hashMap#put (!themeData#pREVIEW_IMAGE_NAME, (self#getPreviewImageName ())));
        ignore (!hashMap#put (!themeData#pREVIEW_IMAGE_PATH, (self#getPreviewImagePath ())));
        (!hashMap :> java_hash_map)
        end
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        let node : Obj.t ref = ref ((Obj.repr (ModDomHelper.createNameValueNodes ((Obj.magic document), (ThemeData.getInstance ())#nAME, (self#toHashMap ()))))) in ();
        let domNodeInterface : DomNodeInterface.domNodeInterface ref = ref (((Obj.magic (self#getCssStyleValidation ())) :> DomNodeInterface.domNodeInterface)) in ();
        ignore ((Obj.magic !node)#appendChild ((!domNodeInterface#toXmlNode ((Obj.magic document)))));
        (Obj.magic ((Obj.magic !node)))
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        ();
        ();
        ();
        ();
        ();
        fileAbPath <- ((Obj.magic 0) :> AbPath.abPath);
        ();
        transformInfoInterface <- transformInfoInterface_arg;
        let categoryThemeAbPath : AbPath.abPath ref = ref (((new AbPath.abPath ((Obj.magic (hashMap#get ((ThemeData.getInstance ())#pATH))), (StringUtil.getInstance ())#eMPTY_STRING)) :> AbPath.abPath)) in ();
        let pathData : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ()))))) in ();
        let pathUtil : PathUtil.pathUtil ref = ref (((PathUtil.getInstance ()) :> PathUtil.pathUtil)) in ();
        categoryAbPath <- (!pathUtil#removeNameFromPath ((java_string_of (Obj.repr !categoryThemeAbPath))));
        themeName <- ((Obj.magic !pathData)#getNameFromPath ((java_string_of (Obj.repr !categoryThemeAbPath))));
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (!stringBuffer#append ("CategoryThemePath: "));
            ignore (!stringBuffer#append ((java_string_of (Obj.repr !categoryThemeAbPath))));
            ignore (!stringBuffer#append (" & CategoryPath: "));
            ignore (!stringBuffer#append ((java_string_of (Obj.repr categoryAbPath))));
            ignore (!stringBuffer#append (" & ThemeName: "));
            ignore (!stringBuffer#append (themeName));
            ignore ((Obj.magic logUtil)#putF ("Http Request Constructor", self, (java_string_of (Obj.repr !stringBuffer))))
        end;
        (self#init ())
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "ThemeValidation" (fun arguments -> Obj.repr (new themeValidation (Obj.obj arguments)))


