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
(* package org.allbinary.logic.visual.transform.info *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.Calendar *)
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontData *)
(* import org.allbinary.business.entry.EntryData *)
(* import org.allbinary.data.tree.dom.document.DomDocumentHelper *)
(* import org.allbinary.data.tree.dom.document.XmlDocumentHelper *)
(* import org.allbinary.globals.FREEBLISKET_PATH_GLOBALS *)
(* import org.allbinary.globals.URLGLOBALS *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.control.crypt.Encoder *)
(* import org.allbinary.logic.control.crypt.file.CryptFileReader *)
(* import org.allbinary.logic.io.OutputTypeData *)
(* import org.allbinary.logic.io.path.AbFilePath *)
(* import org.allbinary.logic.io.path.AbPath *)
(* import org.allbinary.logic.io.path.AbPathData *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.string.StringValidationUtil *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory *)
(* import org.allbinary.logic.visual.transform.info.data.TransformInfoDataData *)
(* import org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfig *)
(* import org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactory *)
(* import org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface *)
(* import org.allbinary.logic.visual.transform.info.template.TransformInfoTemplateData *)
(* import org.allbinary.logic.visual.transform.info.viewObject.TransformInfoObjectData *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.string.CommonStrings *)
(* import org.w3c.dom.Document *)

class transformInfo () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable abeClientInformation : AbeClientInformationInterface.abeClientInformationInterface = (Obj.magic 0)
    method abeClientInformation = abeClientInformation
    method set_abeClientInformation value' = abeClientInformation <- value'
    val mutable isChild : bool = false
    method isChild = isChild
    method set_isChild value' = isChild <- value'
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    val mutable storeName : string = ""
    method storeName = storeName
    method set_storeName value' = storeName <- value'
    val mutable objectFileName : string = ""
    method objectFileName = objectFileName
    method set_objectFileName value' = objectFileName <- value'
    val mutable anyType : Obj.t = (Obj.magic 0)
    method anyType = anyType
    method set_anyType value' = anyType <- value'
    val mutable objectConfigFileName : string = ""
    method objectConfigFileName = objectConfigFileName
    method set_objectConfigFileName value' = objectConfigFileName <- value'
    val mutable objectConfigInterface : TransformInfoObjectConfigInterface.transformInfoObjectConfigInterface = (Obj.magic 0)
    method objectConfigInterface = objectConfigInterface
    method set_objectConfigInterface value' = objectConfigInterface <- value'
    val mutable template : string = ""
    method template = template
    method set_template value' = template <- value'
    val mutable templateFileName : string = ""
    method templateFileName = templateFileName
    method set_templateFileName value' = templateFileName <- value'
    val mutable dataFileName : string = ""
    method dataFileName = dataFileName
    method set_dataFileName value' = dataFileName <- value'
    val mutable data : string = ""
    method data = data
    method set_data value' = data <- value'
    
    
    
    

    method override ((hashMap : java_hash_map)) : unit =
        begin
        let transformInfoData : TransformInfoData.transformInfoData ref = ref (((TransformInfoData.getInstance ()) :> TransformInfoData.transformInfoData)) in ();
        let stringValidationUtil : StringValidationUtil.stringValidationUtil ref = ref (((StringValidationUtil.getInstance ()) :> StringValidationUtil.stringValidationUtil)) in ();
        let aName : string ref = ref ((Obj.magic (hashMap#get (!transformInfoData#nAME)))) in ();
        if (not (!stringValidationUtil#isEmpty (!aName))) then begin
            name <- !aName
        end;
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (!stringBuffer#append ("TransformInfo properties overridden for: "));
            ignore (!stringBuffer#append ((self#getName ())));
            ignore (!stringBuffer#append ("\n properties: "));
            ignore (!stringBuffer#append ((java_string_of (Obj.repr hashMap))));
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "override(HashMap hashMap)"))
        end;
        let aStoreName : string ref = ref ((Obj.magic (hashMap#get ((StoreFrontData.getInstance ())#nAME)))) in ();
        if (not (!stringValidationUtil#isEmpty (!aStoreName))) then begin
            storeName <- !aStoreName
        end;
        let aObjectFileName : string ref = ref ((Obj.magic (hashMap#get (!transformInfoData#oBJECTFILENAME)))) in ();
        if (not (!stringValidationUtil#isEmpty (!aObjectFileName))) then begin
            objectFileName <- !aObjectFileName
        end;
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ((URLGLOBALS.getMainPath ())));
        ignore (!stringBuffer#append ((FREEBLISKET_PATH_GLOBALS.getInstance ())#xSLPATH));
        ignore (!stringBuffer#append (storeName));
        ignore (!stringBuffer#append ((Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#sEPARATOR));
        let fileAbPath : AbPath.abPath ref = ref (((new AbPath.abPath ((java_string_of (Obj.repr !stringBuffer)), (StringUtil.getInstance ())#eMPTY_STRING)) :> AbPath.abPath)) in ();
        let aObject : string ref = ref ((Obj.magic (hashMap#get (!transformInfoData#oBJECT)))) in ();
        if (not (!stringValidationUtil#isEmpty (!aObject))) then begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                ignore ((Obj.magic logUtil)#putF (("TransformInfo override view Object for: " ^ (self#getName ())), self, "override(HashMap hashMap)"))
            end;
            let fileDataString : string ref = ref (((Obj.obj (java_new "CryptFileReader" (Obj.repr ((TransformInfoObjectData.getInstance ())#uNCRYPTED_EXTENSION, (TransformInfoObjectData.getInstance ())#eNCRYPTED_EXTENSION))))#get ((new AbPath.abPath ((java_string_of (Obj.repr !fileAbPath)), !aObject))))) in ();
            if (!fileDataString <> (Obj.magic 0)) then begin
                anyType <- !fileDataString
            end
        end;
        if (not (!stringValidationUtil#isEmpty ((Obj.magic (hashMap#get (!transformInfoData#oBJECTCONFIG)))))) then begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                ignore ((Obj.magic logUtil)#putF (("TransformInfo override ObjectConfig for: " ^ (self#getName ())), self, "override(HashMap hashMap)"))
            end;
            (self#setObjectConfig ((Obj.magic (hashMap#get (!transformInfoData#oBJECTCONFIG)))))
        end;
        let objectConfigFileName_arg : string ref = ref ((Obj.magic (hashMap#get (!transformInfoData#oBJECTCONFIGFILENAME)))) in ();
        if (not (!stringValidationUtil#isEmpty (!objectConfigFileName_arg))) then begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                ignore ((Obj.magic logUtil)#putF (("TransformInfo override ObjectConfig File for: " ^ (self#getName ())), self, "override(HashMap hashMap)"))
            end;
            (self#setObjectConfigFile (!objectConfigFileName_arg))
        end;
        let type_ : string ref = ref ((Obj.magic (hashMap#get ((OutputTypeData.getInstance ())#nAME)))) in ();
        if (not (!stringValidationUtil#isEmpty (!type_))) then begin
            if ((self#getObjectConfigInterface ()) == (Obj.magic 0)) then begin
                (self#setObjectConfigInterface ((Obj.obj (java_new "TransformInfoObjectConfig" (Obj.repr (self))))))
            end;
            ignore ((self#getObjectConfigInterface ())#setOutputTypeName (!type_))
        end;
        let aTemplateFileName : string ref = ref ((Obj.magic (hashMap#get (!transformInfoData#tEMPLATEFILENAME)))) in ();
        if (not (!stringValidationUtil#isEmpty (!aTemplateFileName))) then begin
            templateFileName <- !aTemplateFileName
        end;
        let aTemplate : string ref = ref ((Obj.magic (hashMap#get (!transformInfoData#tEMPLATE)))) in ();
        if (not (!stringValidationUtil#isEmpty (!aTemplate))) then begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                ignore ((Obj.magic logUtil)#putF (("TransformInfo override Template for: " ^ (self#getName ())), self, "override(HashMap hashMap)"))
            end;
            let fileDataString : string ref = ref (((Obj.obj (java_new "CryptFileReader" (Obj.repr ((TransformInfoTemplateData.getInstance ())#uNCRYPTED_EXTENSION, (TransformInfoTemplateData.getInstance ())#eNCRYPTED_EXTENSION))))#get ((new AbPath.abPath ((java_string_of (Obj.repr !fileAbPath)), !aTemplate))))) in ();
            if (not (!stringValidationUtil#isEmpty (!fileDataString))) then begin
                template <- !fileDataString
            end
        end;
        let aDataFileName : string ref = ref ((Obj.magic (hashMap#get (!transformInfoData#dATAFILENAME)))) in ();
        if (not (!stringValidationUtil#isEmpty (!aDataFileName))) then begin
            dataFileName <- !aDataFileName
        end;
        let aData : string ref = ref ((Obj.magic (hashMap#get (!transformInfoData#dATA)))) in ();
        if (not (!stringValidationUtil#isEmpty (!aData))) then begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                ignore ((Obj.magic logUtil)#putF (("TransformInfo override Data for: " ^ (self#getName ())), self, "override(HashMap hashMap)"))
            end;
            let fileDataString : string ref = ref (((Obj.obj (java_new "CryptFileReader" (Obj.repr ((TransformInfoDataData.getInstance ())#uNCRYPTED_EXTENSION, (TransformInfoDataData.getInstance ())#eNCRYPTED_EXTENSION))))#get ((new AbPath.abPath ((java_string_of (Obj.repr !fileAbPath)), !aData))))) in ();
            if (not (!stringValidationUtil#isEmpty (!fileDataString))) then begin
                data <- !fileDataString
            end
        end;
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
            stringBuffer := (new StringMaker.stringMaker ());
            ignore (!stringBuffer#append ("Name: "));
            ignore (!stringBuffer#append (!aName));
            ignore (!stringBuffer#append ("\nTemp Object File: "));
            ignore (!stringBuffer#append (!aObject));
            ignore (!stringBuffer#append ("\nTemp Object Config File: "));
            ignore (!stringBuffer#append ((java_string_of (Obj.repr (self#getObjectConfigFilePath ())))));
            ignore (!stringBuffer#append ("\nTemp Template File: "));
            ignore (!stringBuffer#append (!aTemplate));
            ignore (!stringBuffer#append ("\nTemp Data File: "));
            ignore (!stringBuffer#append (!aData));
            ignore (!stringBuffer#append ("\nStore Name: "));
            ignore (!stringBuffer#append (!aStoreName));
            ignore (!stringBuffer#append ("\nObjectFile: "));
            ignore (!stringBuffer#append ((self#getObjectFile ())));
            ignore (!stringBuffer#append ("->TransformInfo"));
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "TransformInfoInterface(HashMap)"))
        end;
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPERFACTORY)) then begin
            ignore ((Obj.magic logUtil)#putF ((self#log ()), self, "override"))
        end
        end
    

    method log () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ("Name: "));
        ignore (!stringBuffer#append (name));
        ignore (!stringBuffer#append ("\nObject File: "));
        ignore (!stringBuffer#append (objectFileName));
        ignore (!stringBuffer#append ("\nObject Config File Path: "));
        ignore (!stringBuffer#append ((self#getObjectConfigFile ())));
        ignore (!stringBuffer#append ("\nTemplate File: "));
        ignore (!stringBuffer#append (templateFileName));
        ignore (!stringBuffer#append ("\nData File: "));
        ignore (!stringBuffer#append (dataFileName));
        ignore (!stringBuffer#append ("\nStore Name: "));
        ignore (!stringBuffer#append (storeName));
        ignore (!stringBuffer#append ((CommonSeps.getInstance ())#nEW_LINE));
        ignore (!stringBuffer#append ((self#getObjectFile ())));
        ignore (!stringBuffer#append ("->TransformInfo"));
        ignore (!stringBuffer#append ("TransformInfoInterface(HashMap)"));
        (java_string_of (Obj.repr !stringBuffer))
        end
    

    method setName ((value : string)) : unit =
        begin
        name <- value
        end
    

    method setStoreName ((value : string)) : unit =
        begin
        storeName <- value
        end
    

    method getStoreName () : string =
        begin
        storeName
        end
    

    method setObject : 'any1. 'any1 -> unit = fun (anyType_arg) ->
        let anyType_arg = Obj.repr anyType_arg in
        begin
        anyType <- anyType_arg
        end
    

    method setObjectFile ((value : string)) : unit =
        begin
        objectFileName <- value
        end
    

    method setTemplate ((value : string)) : unit =
        begin
        template <- value
        end
    

    method setTemplateFile ((value : string)) : unit =
        begin
        templateFileName <- value
        end
    

    method setObjectConfigFileName ((value : string)) : unit =
        begin
        objectConfigFileName <- value
        end
    

    method setObjectConfigFile ((value : string)) : unit =
        begin
        objectConfigFileName <- value;
        (self#setObjectConfigInterface (((Obj.magic (java_call_static "TransformInfoObjectConfigAndManipulatorFactory.getInstance" (Obj.repr ())))#getInstance (abeClientInformation, self, (self#getObjectConfigFilePath ())))))
        end
    

    method setObjectConfig ((value : string)) : unit =
        begin
        let document : Obj.t ref = ref ((Obj.repr (DomDocumentHelper.create (value)))) in ();
        (self#setObjectConfigInterface (((Obj.magic (java_call_static "TransformInfoObjectConfigAndManipulatorFactory.getInstance" (Obj.repr ())))#getInstance (abeClientInformation, self, (Obj.magic !document)))))
        end
    

    method setDataFile ((value : string)) : unit =
        begin
        dataFileName <- value
        end
    

    method setData ((value : string)) : unit =
        begin
        data <- value
        end
    

    method getName () : string =
        begin
        name
        end
    

    method getObject () : Obj.t =
        begin
        (Obj.repr (anyType))
        end
    

    method getObjectFile () : string =
        begin
        objectFileName
        end
    

    method getTemplate () : string =
        begin
        template
        end
    

    method getTemplateFile () : string =
        begin
        templateFileName
        end
    

    method getTemplateFilePath () : AbPath.abPath =
        begin
        ((new AbFilePath.abFilePath ((self#getTemplateFile ()))) :> AbPath.abPath)
        end
    

    method getObjectConfigFilePath () : AbPath.abPath =
        begin
        ((new AbFilePath.abFilePath ((self#getObjectConfigFile ()))) :> AbPath.abPath)
        end
    

    method getDataFilePath () : AbPath.abPath =
        begin
        ((new AbFilePath.abFilePath ((self#getDataFile ()))) :> AbPath.abPath)
        end
    

    method getObjectConfigFile () : string =
        begin
        objectConfigFileName
        end
    

    method getData () : string =
        begin
        let stringValidationUtil : StringValidationUtil.stringValidationUtil ref = ref (((StringValidationUtil.getInstance ()) :> StringValidationUtil.stringValidationUtil)) in ();
        let dataFileString : string ref = ref ((self#getDataFile ())) in ();
        if (not (!stringValidationUtil#isEmpty (!dataFileString))) then begin
            (try
                let fileData : string ref = ref (((Obj.obj (java_new "CryptFileReader" (Obj.repr ((TransformInfoDataData.getInstance ())#uNCRYPTED_EXTENSION, (TransformInfoDataData.getInstance ())#eNCRYPTED_EXTENSION))))#get ((self#getDataFilePath ())))) in ();
                if (not (!stringValidationUtil#isEmpty (data))) then begin
                    if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                        ignore ((Obj.magic logUtil)#putF (("Data File overriding existing data: " ^ java_string_of (Obj.repr ((self#getDataFilePath ())))), self, "getData()"))
                    end
                end;
                data <- !fileData
            with e -> begin
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEWERROR)) then begin
                    ignore ((Obj.magic logUtil)#put (("Could Not Load Data from: " ^ java_string_of (Obj.repr ((self#getDataFile ())))), self, "getData()", e))
                end
            end)
        end;
        (try
            if (not (!stringValidationUtil#isEmpty (data))) then begin
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEWERROR)) then begin
                    ignore ((Obj.magic logUtil)#putF (("Data: " ^ (XmlDocumentHelper.toString ((DomDocumentHelper.create (data))))), self, "getData()"))
                end
            end else begin
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEWERROR)) then begin
                    let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
                    ignore (!stringBuffer#append ("Name: "));
                    ignore (!stringBuffer#append (name));
                    ignore (!stringBuffer#append ("\nEmpty Data For: "));
                    ignore (!stringBuffer#append (!dataFileString));
                    ignore (!stringBuffer#append ("\nPath: "));
                    ignore (!stringBuffer#append (((self#getDataFilePath ())#toFileSystemString ())));
                    if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEWERROR)) then begin
                        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "getData()"))
                    end
                end
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEWERROR)) then begin
                ignore ((Obj.magic logUtil)#put (("Could Not Preview Data: " ^ data), self, "getData()", e))
            end
        end);
        data
        end
    

    method getDataDocument : 'return. unit -> 'return = fun () ->
        try
        begin
        let localData : string ref = ref ((self#getData ())) in ();
        let stringValidationUtil : StringValidationUtil.stringValidationUtil ref = ref (((StringValidationUtil.getInstance ()) :> StringValidationUtil.stringValidationUtil)) in ();
        if (!stringValidationUtil#isEmpty (!localData)) then begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEWERROR)) then begin
                ignore ((Obj.magic logUtil)#putF ("No Data So Creating New Document", self, "getDataDocument()"))
            end;
            raise (Java_return (Obj.repr ((DomDocumentHelper.create ()))))
        end else begin
            let document : Obj.t ref = ref ((Obj.repr (DomDocumentHelper.create (!localData)))) in ();
            raise (Java_return (Obj.repr ((Obj.magic !document))))
        end
        end
        with Java_return value -> Obj.obj value
    

    method getDataFile () : string =
        begin
        dataFileName
        end
    

    method toHashMap () : java_hash_map =
        begin
        let transformInfoData : TransformInfoData.transformInfoData ref = ref (((TransformInfoData.getInstance ()) :> TransformInfoData.transformInfoData)) in ();
        let hashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        ignore (!hashMap#put (!transformInfoData#nAME, name));
        ignore (!hashMap#put ((StoreFrontData.getInstance ())#nAME, storeName));
        ignore (!hashMap#put (!transformInfoData#oBJECTFILENAME, objectFileName));
        ignore (!hashMap#put (!transformInfoData#oBJECT, anyType));
        ignore (!hashMap#put (!transformInfoData#oBJECTCONFIGFILENAME, (self#getObjectConfigFile ())));
        ignore (!hashMap#put (!transformInfoData#oBJECTCONFIG, (Obj.magic (java_call_static "Encoder.encode" (Obj.repr ((java_string_get_bytes (java_string_of (Obj.repr (self#getObjectConfigInterface ()))))))))));
        ignore (!hashMap#put (!transformInfoData#tEMPLATEFILENAME, templateFileName));
        ignore (!hashMap#put (!transformInfoData#tEMPLATE, template));
        ignore (!hashMap#put (!transformInfoData#dATAFILENAME, dataFileName));
        ignore (!hashMap#put (!transformInfoData#dATA, (Obj.magic (java_call_static "Encoder.encode" (Obj.repr ((java_string_get_bytes data)))))));
        let calendar : java_calendar ref = ref (((java_calendar_get_instance ()) :> java_calendar)) in ();
        let time : string ref = ref ((Obj.obj (java_new "String" (Obj.repr ((java_string_of (Obj.repr (Obj.obj (java_new "Long" (Obj.repr ((!calendar#getTimeInMillis ())))))))))))) in ();
        ignore (!hashMap#put ((EntryData.getInstance ())#lASTMODIFIED, !time));
        (!hashMap :> java_hash_map)
        end
    

    method toVector () : BasicArrayList.basicArrayList =
        begin
        let vector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        ignore (!vector#add (name));
        ignore (!vector#add (storeName));
        ignore (!vector#add (objectFileName));
        ignore (!vector#add (anyType));
        ignore (!vector#add ((self#getObjectConfigFile ())));
        ignore (!vector#add ((Obj.magic (java_call_static "Encoder.encode" (Obj.repr ((java_string_get_bytes (java_string_of (Obj.repr (self#getObjectConfigInterface ()))))))))));
        ignore (!vector#add (templateFileName));
        ignore (!vector#add (template));
        ignore (!vector#add (dataFileName));
        ignore (!vector#add ((Obj.magic (java_call_static "Encoder.encode" (Obj.repr ((java_string_get_bytes data)))))));
        let calendar : java_calendar ref = ref (((java_calendar_get_instance ()) :> java_calendar)) in ();
        let time : string ref = ref ((Obj.obj (java_new "String" (Obj.repr ((java_string_of (Obj.repr (Obj.obj (java_new "Long" (Obj.repr ((!calendar#getTimeInMillis ())))))))))))) in ();
        ignore (!vector#add (!time));
        ignore (!vector#add (!time));
        (!vector :> BasicArrayList.basicArrayList)
        end
    

    method getKey () : Obj.t =
        begin
        (Obj.repr ((Obj.magic (self#getName ()))))
        end
    

    method setChild () : unit =
        begin
        isChild <- true
        end
    

    method isChild () : bool =
        begin
        isChild
        end
    

    method getObjectConfigInterface () : TransformInfoObjectConfigInterface.transformInfoObjectConfigInterface =
        begin
        (objectConfigInterface :> TransformInfoObjectConfigInterface.transformInfoObjectConfigInterface)
        end
    

    method setObjectConfigInterface : 'any1. 'any1 -> unit = fun (objectConfigInterface_arg) ->
        let objectConfigInterface_arg = Obj.repr objectConfigInterface_arg in
        begin
        objectConfigInterface <- (Obj.magic objectConfigInterface_arg)
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        abeClientInformation <- ((Obj.magic (java_call_static "ServiceClientInformationInterfaceFactory.getInstance" (Obj.repr ()))) :> AbeClientInformationInterface.abeClientInformationInterface);
        isChild <- false;
        name <- "";
        storeName <- "";
        objectFileName <- "";
        anyType <- (Obj.repr (Obj.magic 0));
        objectConfigFileName <- "";
        objectConfigInterface <- ((Obj.magic 0) :> TransformInfoObjectConfigInterface.transformInfoObjectConfigInterface);
        template <- "";
        templateFileName <- "";
        dataFileName <- "";
        data <- (StringUtil.getInstance ())#eMPTY_STRING;
        ();
        ()
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "TransformInfo" (fun arguments -> Obj.repr (new transformInfo (Obj.obj arguments)))


