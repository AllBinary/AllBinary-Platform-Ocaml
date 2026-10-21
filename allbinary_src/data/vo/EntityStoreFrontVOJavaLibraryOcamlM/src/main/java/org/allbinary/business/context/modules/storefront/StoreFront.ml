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
(* package org.allbinary.business.context.modules.storefront *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.Calendar *)
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import javax.servlet.http.HttpServletRequest *)
(* import org.allbinary.business.context.configuration.ContextConfiguration *)
(* import org.allbinary.business.context.configuration.ContextConfigurationDomDocumentMapping *)
(* import org.allbinary.business.context.configuration.ContextConfigurationInterface *)
(* import org.allbinary.business.context.configuration.ContextConfigurationInterfaceFactory *)
(* import org.allbinary.business.entry.EntryData *)
(* import org.allbinary.business.user.UserData *)
(* import org.allbinary.data.tree.dom.document.DomDocumentHelper *)
(* import org.allbinary.globals.FREEBLISKET_PATH_GLOBALS *)
(* import org.allbinary.globals.URLGLOBALS *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.http.request.RequestParams *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.io.file.AbFile *)
(* import org.allbinary.logic.io.file.FileUtil *)
(* import org.allbinary.logic.io.file.directory.Directory *)
(* import org.allbinary.logic.io.path.AbPath *)
(* import org.allbinary.logic.io.path.AbPathData *)
(* import org.allbinary.logic.io.path.AbPathUtil *)
(* import org.allbinary.logic.string.SpecialCharacterUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.string.StringValidationUtil *)
(* import org.allbinary.logic.string.regex.replace.Replace *)
(* import org.allbinary.logic.string.tokens.Tokenizer *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.apache.commons.lang3.StringEscapeUtils *)
(* import org.w3c.dom.Document *)

let rESOURCES : string = (" Resources" ^ java_string_of (Obj.repr ((Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#sEPARATOR)))
let get_rESOURCES () = rESOURCES
let () = java_register_static "StoreFront.get_rESOURCES" (fun _ -> Obj.repr (get_rESOURCES ()))
class storeFront () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable directory : Directory.directory = (Obj.magic 0)
    method directory = directory
    method set_directory value' = directory <- value'
    val mutable stringUtil : StringUtil.stringUtil = (Obj.magic 0)
    method stringUtil = stringUtil
    method set_stringUtil value' = stringUtil <- value'
    val mutable abPathUtil : AbPathUtil.abPathUtil = (Obj.magic 0)
    method abPathUtil = abPathUtil
    method set_abPathUtil value' = abPathUtil <- value'
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    val mutable basketName : string = ""
    method basketName = basketName
    method set_basketName value' = basketName <- value'
    val mutable homeHostName : string = ""
    method homeHostName = homeHostName
    method set_homeHostName value' = homeHostName <- value'
    val mutable homeHostNamePath : AbPath.abPath = (Obj.magic 0)
    method homeHostNamePath = homeHostNamePath
    method set_homeHostNamePath value' = homeHostNamePath <- value'
    val mutable hostName : string = ""
    method hostName = hostName
    method set_hostName value' = hostName <- value'
    val mutable hostNamePath : AbPath.abPath = (Obj.magic 0)
    method hostNamePath = hostNamePath
    method set_hostNamePath value' = hostNamePath <- value'
    val mutable testHomeHostName : string = ""
    method testHomeHostName = testHomeHostName
    method set_testHomeHostName value' = testHomeHostName <- value'
    val mutable testHomeHostNamePath : AbPath.abPath = (Obj.magic 0)
    method testHomeHostNamePath = testHomeHostNamePath
    method set_testHomeHostNamePath value' = testHomeHostNamePath <- value'
    val mutable testHostName : string = ""
    method testHostName = testHostName
    method set_testHostName value' = testHostName <- value'
    val mutable testHostNamePath : AbPath.abPath = (Obj.magic 0)
    method testHostNamePath = testHostNamePath
    method set_testHostNamePath value' = testHostNamePath <- value'
    val mutable imagePath : AbPath.abPath = (Obj.magic 0)
    method imagePath = imagePath
    method set_imagePath value' = imagePath <- value'
    val mutable staticPath : AbPath.abPath = (Obj.magic 0)
    method staticPath = staticPath
    method set_staticPath value' = staticPath <- value'
    val mutable categoryPath : AbPath.abPath = (Obj.magic 0)
    method categoryPath = categoryPath
    method set_categoryPath value' = categoryPath <- value'
    val mutable inventoryControl : string = ""
    method inventoryControl = inventoryControl
    method set_inventoryControl value' = inventoryControl <- value'
    val mutable contextConfigurationInterface : ContextConfigurationInterface.contextConfigurationInterface = (Obj.magic 0)
    method contextConfigurationInterface = contextConfigurationInterface
    method set_contextConfigurationInterface value' = contextConfigurationInterface <- value'
    val mutable subStores : string = ""
    method subStores = subStores
    method set_subStores value' = subStores <- value'
    val mutable tagLocation : string = ""
    method tagLocation = tagLocation
    method set_tagLocation value' = tagLocation <- value'
    val mutable packageLocation : string = ""
    method packageLocation = packageLocation
    method set_packageLocation value' = packageLocation <- value'
    val mutable ftp : string = ""
    method ftp = ftp
    method set_ftp value' = ftp <- value'
    val mutable ftpPath : AbPath.abPath = (Obj.magic 0)
    method ftpPath = ftpPath
    method set_ftpPath value' = ftpPath <- value'
    val mutable ftpUserName : string = ""
    method ftpUserName = ftpUserName
    method set_ftpUserName value' = ftpUserName <- value'
    val mutable ftpPassword : string = ""
    method ftpPassword = ftpPassword
    method set_ftpPassword value' = ftpPassword <- value'
    val mutable testFtp : string = ""
    method testFtp = testFtp
    method set_testFtp value' = testFtp <- value'
    val mutable testFtpPath : AbPath.abPath = (Obj.magic 0)
    method testFtpPath = testFtpPath
    method set_testFtpPath value' = testFtpPath <- value'
    val mutable testFtpUserName : string = ""
    method testFtpUserName = testFtpUserName
    method set_testFtpUserName value' = testFtpUserName <- value'
    val mutable testFtpPassword : string = ""
    method testFtpPassword = testFtpPassword
    method set_testFtpPassword value' = testFtpPassword <- value'
    val mutable timeCreated : string = ""
    method timeCreated = timeCreated
    method set_timeCreated value' = timeCreated <- value'
    val mutable lastModified : string = ""
    method lastModified = lastModified
    method set_lastModified value' = lastModified <- value'
    val mutable mINCHAR : int = 0
    method mINCHAR = mINCHAR
    method set_mINCHAR value' = mINCHAR <- value'
    val mutable mINSTORENAMELENGTH : int = 0
    method mINSTORENAMELENGTH = mINSTORENAMELENGTH
    method set_mINSTORENAMELENGTH value' = mINSTORENAMELENGTH <- value'
    val mutable mAXCHAR : int = 0
    method mAXCHAR = mAXCHAR
    method set_mAXCHAR value' = mAXCHAR <- value'
    val mutable eMPTY_STRING : string = ""
    method eMPTY_STRING = eMPTY_STRING
    method set_eMPTY_STRING value' = eMPTY_STRING <- value'
    val mutable oNE_EMPTY_STRING_ARRAY : string array = (Obj.magic 0)
    method oNE_EMPTY_STRING_ARRAY = oNE_EMPTY_STRING_ARRAY
    method set_oNE_EMPTY_STRING_ARRAY value' = oNE_EMPTY_STRING_ARRAY <- value'
    
    
    
    

    method isColumn ((columnName : string)) : bool =
        try
        begin
        if (((String.compare columnName ((StoreFrontData.getInstance ())#nAME)) == 0) || ((String.compare columnName ((UserData.get_mAINEMAIL ()))) == 0)) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value
    

    method createPath ((key : string), (hashMap : java_hash_map)) : AbPath.abPath =
        begin
        ((new AbPath.abPath ((self#create (eMPTY_STRING, key, hashMap)), (StringUtil.getInstance ())#eMPTY_STRING)) :> AbPath.abPath)
        end
    

    (* Java overload createPath(String, String, HashMap) is not converted: OCaml has one method per name *)
    

    method get ((key : string), (hashMap : java_hash_map)) : string =
        begin
        (self#create (eMPTY_STRING, key, hashMap))
        end
    

    method create ((append : string), (key : string), (hashMap : java_hash_map)) : string =
        try
        begin
        let path : string ref = ref ((Obj.magic (hashMap#get (key)))) in ();
        if ((StringValidationUtil.getInstance ())#isEmpty (!path)) then begin
            raise (Java_return (Obj.repr (eMPTY_STRING)))
        end else begin
            if (self#isColumn (!path)) then begin
                raise (Java_return (Obj.repr ((java_string_of (Obj.repr ((Obj.magic (hashMap#get (!path))))) ^ append))))
            end else begin
                raise (Java_return (Obj.repr (!path)))
            end
        end
        end
        with Java_return value -> Obj.obj value
    

    method getFormData ((storeHashMap : java_hash_map)) : unit =
        begin
        let storeFrontData : StoreFrontData.storeFrontData ref = ref (((StoreFrontData.getInstance ()) :> StoreFrontData.storeFrontData)) in ();
        name <- (Obj.magic (storeHashMap#get (!storeFrontData#nAME)));
        basketName <- (Obj.magic (storeHashMap#get (!storeFrontData#nAME)));
        homeHostName <- (Obj.magic (storeHashMap#get (!storeFrontData#hOMEHOSTNAME)));
        homeHostNamePath <- (self#createPath (!storeFrontData#hOMEHOSTNAMEPATH, storeHashMap));
        hostName <- (Obj.magic (storeHashMap#get (!storeFrontData#hOSTNAME)));
        hostNamePath <- (self#createPath (!storeFrontData#hOSTNAMEPATH, storeHashMap));
        testHomeHostName <- (Obj.magic (storeHashMap#get (!storeFrontData#tESTHOMEHOSTNAME)));
        testHomeHostNamePath <- (self#createPath (!storeFrontData#tESTHOMEHOSTNAMEPATH, storeHashMap));
        testHostName <- (Obj.magic (storeHashMap#get (!storeFrontData#tESTHOSTNAME)));
        testHostNamePath <- (self#createPath (!storeFrontData#tESTHOSTNAMEPATH, storeHashMap));
        imagePath <- (self#createPath (rESOURCES, !storeFrontData#iMAGEPATH, storeHashMap));
        staticPath <- (self#createPath ((" Products" ^ java_string_of (Obj.repr ((Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#sEPARATOR))), !storeFrontData#sTATICPATH, storeHashMap));
        categoryPath <- (self#createPath (rESOURCES, !storeFrontData#cATEGORYPATH, storeHashMap));
        inventoryControl <- (Obj.magic (storeHashMap#get (!storeFrontData#iNVENTORYCONTROL)));
        subStores <- (Obj.magic (storeHashMap#get (!storeFrontData#sUBSTORES)));
        tagLocation <- (Obj.magic (storeHashMap#get (!storeFrontData#tAGLOCATION)));
        packageLocation <- (Obj.magic (storeHashMap#get (!storeFrontData#pACKAGELOCATION)));
        ftp <- (Obj.magic (storeHashMap#get (!storeFrontData#fTP)));
        ftpPath <- (self#createPath (!storeFrontData#fTPPATH, storeHashMap));
        ftpUserName <- (Obj.magic (storeHashMap#get (!storeFrontData#fTPUSERNAME)));
        ftpPassword <- (Obj.magic (storeHashMap#get (!storeFrontData#fTPPASSWORD)));
        testFtp <- (Obj.magic (storeHashMap#get (!storeFrontData#tESTFTP)));
        testFtpPath <- (self#createPath (!storeFrontData#tESTFTPPATH, storeHashMap));
        testFtpUserName <- (Obj.magic (storeHashMap#get (!storeFrontData#tESTFTPUSERNAME)));
        testFtpPassword <- (Obj.magic (storeHashMap#get (!storeFrontData#tESTFTPPASSWORD)));
        timeCreated <- (Obj.magic (storeHashMap#get ((EntryData.getInstance ())#tIMECREATED)));
        lastModified <- (Obj.magic (storeHashMap#get ((EntryData.getInstance ())#lASTMODIFIED)))
        end
    

    method isNameValid () : bool =
        try
        begin
        if (not ((StringValidationUtil.getInstance ())#isValidRequired (name, mINSTORENAMELENGTH, mAXCHAR))) then begin
            raise (Java_return (Obj.repr (false)))
        end else begin
            let isEscapedCharactersContained : bool ref = ref (false) in ();
            let storeNameEscaped : string ref = ref ((StringEscapeUtils.escapeHtml3 (name))) in ();
            if ((String.compare name (!storeNameEscaped)) != 0) then begin
                isEscapedCharactersContained := true
            end;
            let stringValidationUtil : StringValidationUtil.stringValidationUtil ref = ref (((StringValidationUtil.getInstance ()) :> StringValidationUtil.stringValidationUtil)) in ();
            let isSpacesContained : bool ref = ref (false) in ();
            if (!stringValidationUtil#containsSpaces (name)) then begin
                isSpacesContained := true
            end;
            if (!isSpacesContained || !isEscapedCharactersContained) then begin
                let hashMap : java_hash_map ref = ref (((SpecialCharacterUtil.getHashMap ()) :> java_hash_map)) in ();
                ignore (!hashMap#put ([| (CommonSeps.getInstance ())#sPACE |], oNE_EMPTY_STRING_ARRAY));
                name <- ((new Replace.replace (!hashMap))#all (name))
            end
        end;
        true
        end
        with Java_return value -> Obj.obj value
    

    method isValid () : bool =
        try
        begin
        let valid : bool ref = ref (true) in ();
        valid := (self#isNameValid ());
        let stringValidationUtil : StringValidationUtil.stringValidationUtil ref = ref (((StringValidationUtil.getInstance ()) :> StringValidationUtil.stringValidationUtil)) in ();
        if (not (!stringValidationUtil#isValidRequired (basketName, mINCHAR, mAXCHAR))) then begin
            valid := false
        end;
        if (not (!stringValidationUtil#isValidRequired (homeHostName, mINCHAR, mAXCHAR))) then begin
            valid := false
        end;
        if (not (!stringValidationUtil#isValidNotRequired ((java_string_of (Obj.repr homeHostNamePath)), mINCHAR, mAXCHAR))) then begin
            valid := false
        end;
        if (not (!stringValidationUtil#isValidRequired (hostName, mINCHAR, mAXCHAR))) then begin
            valid := false
        end;
        if (not (!stringValidationUtil#isValidRequired ((java_string_of (Obj.repr hostNamePath)), mINCHAR, mAXCHAR))) then begin
            valid := false
        end;
        if (not (!stringValidationUtil#isValidNotRequired (testHomeHostName, mINCHAR, mAXCHAR))) then begin
            valid := false
        end;
        if (not (!stringValidationUtil#isValidNotRequired ((java_string_of (Obj.repr testHomeHostNamePath)), mINCHAR, mAXCHAR))) then begin
            valid := false
        end;
        if (not (!stringValidationUtil#isValidNotRequired (testHostName, mINCHAR, mAXCHAR))) then begin
            valid := false
        end;
        if (not (!stringValidationUtil#isValidNotRequired ((java_string_of (Obj.repr testHostNamePath)), mINCHAR, mAXCHAR))) then begin
            valid := false
        end;
        if (not (!stringValidationUtil#isValidRequired ((java_string_of (Obj.repr imagePath)), mINCHAR, mAXCHAR))) then begin
            valid := false
        end;
        if (not (!stringValidationUtil#isValidRequired ((java_string_of (Obj.repr staticPath)), mINCHAR, mAXCHAR))) then begin
            valid := false
        end;
        if (not (!stringValidationUtil#isValidRequired ((java_string_of (Obj.repr categoryPath)), mINCHAR, mAXCHAR))) then begin
            valid := false
        end;
        if (not (!stringValidationUtil#isValidRequired (inventoryControl, mINCHAR, mAXCHAR))) then begin
            valid := false
        end;
        if (not (!stringValidationUtil#isValidNotRequired (subStores, mINCHAR, mAXCHAR))) then begin
            valid := false
        end;
        if (not (!stringValidationUtil#isValidNotRequired (tagLocation, mINCHAR, mAXCHAR))) then begin
            valid := false
        end;
        if (not (!stringValidationUtil#isValidRequired (packageLocation, mINCHAR, mAXCHAR))) then begin
            valid := false
        end;
        if (not (!stringValidationUtil#isValidNotRequired (ftp, mINCHAR, mAXCHAR))) then begin
            valid := false
        end;
        if (not (!stringValidationUtil#isValidNotRequired ((java_string_of (Obj.repr ftpPath)), mINCHAR, mAXCHAR))) then begin
            valid := false
        end;
        if (not (!stringValidationUtil#isValidNotRequired (ftpUserName, mINCHAR, mAXCHAR))) then begin
            valid := false
        end;
        if (not (!stringValidationUtil#isValidNotRequired (ftpPassword, mINCHAR, mAXCHAR))) then begin
            valid := false
        end;
        if (not (!stringValidationUtil#isValidNotRequired (testFtp, mINCHAR, mAXCHAR))) then begin
            valid := false
        end;
        if (not (!stringValidationUtil#isValidNotRequired ((java_string_of (Obj.repr testFtpPath)), mINCHAR, mAXCHAR))) then begin
            valid := false
        end;
        if (not (!stringValidationUtil#isValidNotRequired (testFtpUserName, mINCHAR, mAXCHAR))) then begin
            valid := false
        end;
        if (not (!stringValidationUtil#isValidNotRequired (testFtpPassword, mINCHAR, mAXCHAR))) then begin
            valid := false
        end;
        if (!valid == true) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value
    

    method nameValidationInfo () : string =
        try
        begin
        let stringValidationUtil : StringValidationUtil.stringValidationUtil ref = ref (((StringValidationUtil.getInstance ()) :> StringValidationUtil.stringValidationUtil)) in ();
        if (not (!stringValidationUtil#isValidRequired (name, mINCHAR, mAXCHAR))) then begin
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (!stringBuffer#append ("Name is invalid. Must be < "));
            ignore (!stringBuffer#appendint (mAXCHAR));
            ignore (!stringBuffer#append (" and > 0 characters.<br>"));
            raise (Java_return (Obj.repr ((java_string_of (Obj.repr !stringBuffer)))))
        end;
        eMPTY_STRING
        end
        with Java_return value -> Obj.obj value
    

    method validationInfo () : string =
        begin
        (try
            let stringValidationUtil : StringValidationUtil.stringValidationUtil ref = ref (((StringValidationUtil.getInstance ()) :> StringValidationUtil.stringValidationUtil)) in ();
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (!stringBuffer#append ((self#nameValidationInfo ())));
            if (not (!stringValidationUtil#isValidRequired (basketName, mINCHAR, mAXCHAR))) then begin
                ignore (!stringBuffer#append ("Basket name is invalid. Must be < "));
                ignore (!stringBuffer#appendint (mAXCHAR));
                ignore (!stringBuffer#append (" and > 0 characters.<br>"))
            end;
            if (not (!stringValidationUtil#isValidRequired (homeHostName, mINCHAR, mAXCHAR))) then begin
                ignore (!stringBuffer#append ("Home host name is invalid. Must be < "));
                ignore (!stringBuffer#appendint (mAXCHAR));
                ignore (!stringBuffer#append (" and > 0 characters.<br>"))
            end;
            if (not (!stringValidationUtil#isValidNotRequired ((java_string_of (Obj.repr homeHostNamePath)), mINCHAR, mAXCHAR))) then begin
                ignore (!stringBuffer#append ("Home host name path is invalid. Must be < "));
                ignore (!stringBuffer#appendint (mAXCHAR));
                ignore (!stringBuffer#append (" and > 0 characters.<br>"))
            end;
            if (not (!stringValidationUtil#isValidRequired (hostName, mINCHAR, mAXCHAR))) then begin
                ignore (!stringBuffer#append ("Host name is invalid. Must be < "));
                ignore (!stringBuffer#appendint (mAXCHAR));
                ignore (!stringBuffer#append (" and > 0 characters.<br>"))
            end;
            if (not (!stringValidationUtil#isValidRequired ((java_string_of (Obj.repr hostNamePath)), mINCHAR, mAXCHAR))) then begin
                ignore (!stringBuffer#append ("Host name path is invalid. Must be < "));
                ignore (!stringBuffer#appendint (mAXCHAR));
                ignore (!stringBuffer#append (" and > 0 characters.<br>"))
            end;
            if (not (!stringValidationUtil#isValidNotRequired (testHomeHostName, mINCHAR, mAXCHAR))) then begin
                ignore (!stringBuffer#append ((("Test home host name is invalid. Must be < " ^ java_string_of (Obj.repr (mAXCHAR))) ^ " and > 0 characters.<br>")))
            end;
            if (not (!stringValidationUtil#isValidNotRequired ((java_string_of (Obj.repr testHomeHostNamePath)), mINCHAR, mAXCHAR))) then begin
                ignore (!stringBuffer#append ((("Test home host name path is invalid. Must be < " ^ java_string_of (Obj.repr (mAXCHAR))) ^ " and > 0 characters.<br>")))
            end;
            if (not (!stringValidationUtil#isValidNotRequired (testHostName, mINCHAR, mAXCHAR))) then begin
                ignore (!stringBuffer#append ((("Test host name is invalid. Must be < " ^ java_string_of (Obj.repr (mAXCHAR))) ^ " and > 0 characters.<br>")))
            end;
            if (not (!stringValidationUtil#isValidNotRequired ((java_string_of (Obj.repr testHostNamePath)), mINCHAR, mAXCHAR))) then begin
                ignore (!stringBuffer#append ((("Test host name path is invalid. Must be < " ^ java_string_of (Obj.repr (mAXCHAR))) ^ " and > 0 characters.<br>")))
            end;
            if (not (!stringValidationUtil#isValidRequired ((java_string_of (Obj.repr imagePath)), mINCHAR, mAXCHAR))) then begin
                ignore (!stringBuffer#append ((("Image path is invalid. Must be < " ^ java_string_of (Obj.repr (mAXCHAR))) ^ " and > 0 characters.<br>")))
            end;
            if (not (!stringValidationUtil#isValidRequired ((java_string_of (Obj.repr staticPath)), mINCHAR, mAXCHAR))) then begin
                ignore (!stringBuffer#append ((("Static path is invalid. Must be < " ^ java_string_of (Obj.repr (mAXCHAR))) ^ " and > 0 characters.<br>")))
            end;
            if (not (!stringValidationUtil#isValidRequired ((java_string_of (Obj.repr categoryPath)), mINCHAR, mAXCHAR))) then begin
                ignore (!stringBuffer#append ((("Category path is invalid. Must be < " ^ java_string_of (Obj.repr (mAXCHAR))) ^ " and > 0 characters.<br>")))
            end;
            if (not (!stringValidationUtil#isValidRequired (inventoryControl, mINCHAR, mAXCHAR))) then begin
                ignore (!stringBuffer#append ((("Inventory control is invalid. Must be < " ^ java_string_of (Obj.repr (mAXCHAR))) ^ " and > 0 characters.<br>")))
            end;
            if (not (!stringValidationUtil#isValidNotRequired (subStores, mINCHAR, mAXCHAR))) then begin
                ignore (!stringBuffer#append ((("Sub stores is invalid. Must be < " ^ java_string_of (Obj.repr (mAXCHAR))) ^ " and > 0 characters.<br>")))
            end;
            if (not (!stringValidationUtil#isValidNotRequired (tagLocation, mINCHAR, mAXCHAR))) then begin
                ignore (!stringBuffer#append ((("Tag location is invalid. Must be < " ^ java_string_of (Obj.repr (mAXCHAR))) ^ " and > 0 characters.<br>")))
            end;
            if (not (!stringValidationUtil#isValidRequired (packageLocation, mINCHAR, mAXCHAR))) then begin
                ignore (!stringBuffer#append ((("Package location is invalid. Must be < " ^ java_string_of (Obj.repr (mAXCHAR))) ^ " and > 0 characters.<br>")))
            end;
            if (not (!stringValidationUtil#isValidNotRequired (ftp, mINCHAR, mAXCHAR))) then begin
                ignore (!stringBuffer#append ((("Ftp is invalid. Must be < " ^ java_string_of (Obj.repr (mAXCHAR))) ^ " and > 0 characters.<br>")))
            end;
            if (not (!stringValidationUtil#isValidNotRequired ((java_string_of (Obj.repr ftpPath)), mINCHAR, mAXCHAR))) then begin
                ignore (!stringBuffer#append ((("Ftp path is invalid. Must be < " ^ java_string_of (Obj.repr (mAXCHAR))) ^ " and > 0 characters.<br>")))
            end;
            if (not (!stringValidationUtil#isValidNotRequired (ftpUserName, mINCHAR, mAXCHAR))) then begin
                ignore (!stringBuffer#append ((("Ftp username is invalid. Must be < " ^ java_string_of (Obj.repr (mAXCHAR))) ^ " and > 0 characters.<br>")))
            end;
            if (not (!stringValidationUtil#isValidNotRequired (ftpPassword, mINCHAR, mAXCHAR))) then begin
                ignore (!stringBuffer#append ((("Ftp password is invalid. Must be < " ^ java_string_of (Obj.repr (mAXCHAR))) ^ " and > 0 characters.<br>")))
            end;
            if (not (!stringValidationUtil#isValidNotRequired (testFtp, mINCHAR, mAXCHAR))) then begin
                ignore (!stringBuffer#append ((("Test ftp is invalid. Must be < " ^ java_string_of (Obj.repr (mAXCHAR))) ^ " and > 0 characters.<br>")))
            end;
            if (not (!stringValidationUtil#isValidNotRequired ((java_string_of (Obj.repr testFtpPath)), mINCHAR, mAXCHAR))) then begin
                ignore (!stringBuffer#append ((("Test ftp Path is invalid. Must be < " ^ java_string_of (Obj.repr (mAXCHAR))) ^ " and > 0 characters.<br>")))
            end;
            if (not (!stringValidationUtil#isValidNotRequired (testFtpUserName, mINCHAR, mAXCHAR))) then begin
                ignore (!stringBuffer#append ((("Test ftp username is invalid. Must be < " ^ java_string_of (Obj.repr (mAXCHAR))) ^ " and > 0 characters.<br>")))
            end;
            if (not (!stringValidationUtil#isValidNotRequired (testFtpPassword, mINCHAR, mAXCHAR))) then begin
                ignore (!stringBuffer#append ((("Test ftp password is invalid. Must be < " ^ java_string_of (Obj.repr (mAXCHAR))) ^ " and > 0 characters.<br>")))
            end;
            (java_string_of (Obj.repr !stringBuffer))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put ("Failed to generate validation error info", self, "validationInfo()", e))
            end;
            "Error Validating Form"
        end)
        end
    

    method getTestHtmlPath () : string =
        begin
        (((org.get_allbinary ())#globals#uRLGLOBALS#getTestHtmlPath ()) + (self#getCurrentHostNamePath ()))
        end
    

    method getCurrentHostName () : string =
        begin
        let location : string ref = ref (eMPTY_STRING) in ();
        if ((org.get_allbinary ())#globals#uRLGLOBALS#isTestingMode ()) then begin
            location := (self#getTestHostName ())
        end else begin
            location := (self#getHostName ())
        end;
        !location
        end
    

    method getCurrentHostNamePath () : string =
        begin
        let location : string ref = ref (eMPTY_STRING) in ();
        if ((org.get_allbinary ())#globals#uRLGLOBALS#isTestingMode ()) then begin
            location := (self#getTestHostNamePath ())
        end else begin
            location := (self#getHostNamePath ())
        end;
        !location
        end
    

    method getCurrentHomeHostName () : string =
        begin
        let location : string ref = ref (eMPTY_STRING) in ();
        if ((org.get_allbinary ())#globals#uRLGLOBALS#isTestingMode ()) then begin
            location := (self#getTestHomeHostName ())
        end else begin
            location := (self#getHomeHostName ())
        end;
        !location
        end
    

    method getCurrentHomeHostNamePath () : string =
        begin
        let location : string ref = ref (eMPTY_STRING) in ();
        if ((org.get_allbinary ())#globals#uRLGLOBALS#isTestingMode ()) then begin
            location := (self#getTestHomeHostNamePath ())
        end else begin
            location := (self#getHomeHostNamePath ())
        end;
        !location
        end
    

    method getName () : string =
        begin
        name
        end
    

    method getBasketName () : string =
        begin
        basketName
        end
    

    method getHomeHostName () : string =
        begin
        homeHostName
        end
    

    method getHomeHostNamePath () : string =
        begin
        (java_string_of (Obj.repr homeHostNamePath))
        end
    

    method getHostName () : string =
        begin
        hostName
        end
    

    method getHostNamePath () : string =
        begin
        (java_string_of (Obj.repr hostNamePath))
        end
    

    method getTestHomeHostName () : string =
        begin
        testHomeHostName
        end
    

    method getTestHomeHostNamePath () : string =
        begin
        (java_string_of (Obj.repr testHomeHostNamePath))
        end
    

    method getTestHostName () : string =
        begin
        testHostName
        end
    

    method getTestHostNamePath () : string =
        begin
        (java_string_of (Obj.repr testHostNamePath))
        end
    

    method getStaticPath () : string =
        begin
        (java_string_of (Obj.repr staticPath))
        end
    

    method getCategoryPath () : string =
        begin
        (java_string_of (Obj.repr categoryPath))
        end
    

    method getInventoryControl () : string =
        begin
        inventoryControl
        end
    

    method getSubStores () : BasicArrayList.basicArrayList =
        begin
        (try
            let tokenizer : Tokenizer.tokenizer ref = ref (((new Tokenizer.tokenizer ((CommonSeps.getInstance ())#sEMICOLON)) :> Tokenizer.tokenizer)) in ();
            let subStoreVector : BasicArrayList.basicArrayList ref = ref (((!tokenizer#getTokensFromString (subStores, (new BasicArrayListD.basicArrayListD ()))) :> BasicArrayList.basicArrayList)) in ();
            (!subStoreVector :> BasicArrayList.basicArrayList)
        with e -> begin
            raise e
        end)
        end
    

    method getTagLocation () : string =
        begin
        tagLocation
        end
    

    method getPackageLocation () : string =
        begin
        packageLocation
        end
    

    method getFtp () : string =
        begin
        ftp
        end
    

    method getFtpUserName () : string =
        begin
        ftpUserName
        end
    

    method getFtpPassword () : string =
        begin
        ftpPassword
        end
    

    method getTestFtp () : string =
        begin
        testFtp
        end
    

    method getTestFtpUserName () : string =
        begin
        testFtpUserName
        end
    

    method getTestFtpPassword () : string =
        begin
        testFtpPassword
        end
    

    method getFtpPath () : string =
        begin
        (java_string_of (Obj.repr ftpPath))
        end
    

    method getTestFtpPath () : string =
        begin
        (java_string_of (Obj.repr testFtpPath))
        end
    

    method getTimeCreated () : string =
        begin
        timeCreated
        end
    

    method getLastModified () : string =
        begin
        lastModified
        end
    

    method setName ((value : string)) : unit =
        begin
        name <- value
        end
    

    method setBasketName ((value : string)) : unit =
        begin
        basketName <- value
        end
    

    method setHomeHostName ((value : string)) : unit =
        begin
        homeHostName <- value
        end
    

    method setHomeHostNamePath ((value : string)) : unit =
        begin
        homeHostNamePath <- (new AbPath.abPath (value, (StringUtil.getInstance ())#eMPTY_STRING))
        end
    

    method setHostName ((value : string)) : unit =
        begin
        hostName <- value
        end
    

    method setHostNamePath ((value : string)) : unit =
        begin
        hostNamePath <- (new AbPath.abPath (value, (StringUtil.getInstance ())#eMPTY_STRING))
        end
    

    method setTestHomeHostName ((value : string)) : unit =
        begin
        testHomeHostName <- value
        end
    

    method setTestHomeHostNamePath ((value : string)) : unit =
        begin
        testHomeHostNamePath <- (new AbPath.abPath (value, (StringUtil.getInstance ())#eMPTY_STRING))
        end
    

    method setTestHostName ((value : string)) : unit =
        begin
        testHostName <- value
        end
    

    method setTestHostNamePath ((value : string)) : unit =
        begin
        testHostNamePath <- (new AbPath.abPath (value, (StringUtil.getInstance ())#eMPTY_STRING))
        end
    

    method setImagePath ((value : string)) : unit =
        begin
        imagePath <- (new AbPath.abPath (value, (StringUtil.getInstance ())#eMPTY_STRING))
        end
    

    method setStaticPath ((value : string)) : unit =
        begin
        staticPath <- (new AbPath.abPath (value, (StringUtil.getInstance ())#eMPTY_STRING))
        end
    

    method setCategoryPath ((value : string)) : unit =
        begin
        categoryPath <- (new AbPath.abPath (value, (StringUtil.getInstance ())#eMPTY_STRING))
        end
    

    method setSubStores ((value : string)) : unit =
        begin
        subStores <- value
        end
    

    method setTagLocation ((value : string)) : unit =
        begin
        tagLocation <- value
        end
    

    method setPackageLocation ((value : string)) : unit =
        begin
        packageLocation <- value
        end
    

    method setInventoryControl ((value : string)) : unit =
        begin
        inventoryControl <- value
        end
    

    (* Java overload getPackageLocation(String) is not converted: OCaml has one method per name *)
    

    method setFtp ((value : string)) : unit =
        begin
        ftp <- value
        end
    

    method setFtpUserName ((value : string)) : unit =
        begin
        ftpUserName <- value
        end
    

    method setFtpPassword ((value : string)) : unit =
        begin
        ftpPassword <- value
        end
    

    method setTestFtp ((value : string)) : unit =
        begin
        testFtp <- value
        end
    

    method setTestFtpUserName ((value : string)) : unit =
        begin
        testFtpUserName <- value
        end
    

    method setTestFtpPassword ((value : string)) : unit =
        begin
        testFtpPassword <- value
        end
    

    method setTimeCreated ((value : string)) : unit =
        begin
        timeCreated <- value
        end
    

    method setLastModified ((value : string)) : unit =
        begin
        lastModified <- value
        end
    

    method setFtpPath ((value : string)) : unit =
        begin
        ftpPath <- (new AbPath.abPath (value, (StringUtil.getInstance ())#eMPTY_STRING))
        end
    

    method setTestFtpPath ((value : string)) : unit =
        begin
        testFtpPath <- (new AbPath.abPath (value, (StringUtil.getInstance ())#eMPTY_STRING))
        end
    

    method createDirectories () : bool =
        try
        begin
        let storeAbPath : AbPath.abPath ref = ref (((new AbPath.abPath (((URLGLOBALS.getWebappPath ()) + (self#getCurrentHomeHostNamePath ())), (StringUtil.getInstance ())#eMPTY_STRING)) :> AbPath.abPath)) in ();
        if (not (directory#create (!storeAbPath))) then begin
            raise (Java_return (Obj.repr (false)))
        end;
        if (not (directory#create ((new AbPath.abPath ((!storeAbPath + (self#getCategoryPath ())), (StringUtil.getInstance ())#eMPTY_STRING))))) then begin
            raise (Java_return (Obj.repr (false)))
        end;
        if (not (directory#create ((new AbPath.abPath ((!storeAbPath + (self#getStaticPath ())), (StringUtil.getInstance ())#eMPTY_STRING))))) then begin
            raise (Java_return (Obj.repr (false)))
        end;
        true
        end
        with Java_return value -> Obj.obj value
    

    method install ((current : int), (total : int)) : unit =
        begin
        (try
            if (not (self#createDirectories ())) then begin
                raise (Failure ("Unable to create store directories"))
            end;
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
            ignore (!stringBuffer#append ((URLGLOBALS.getMainPath ())));
            ignore (!stringBuffer#append ((FREEBLISKET_PATH_GLOBALS.getInstance ())#xSLPATH));
            let viewPath : string ref = ref ((java_string_of (Obj.repr !stringBuffer))) in ();
            ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
            ignore (!stringBuffer#append (!viewPath));
            ignore (!stringBuffer#append ((FREEBLISKET_PATH_GLOBALS.getInstance ())#iNSTALLPATH));
            let fromDirectoryAbPath : AbPath.abPath ref = ref (((new AbPath.abPath ((java_string_of (Obj.repr !stringBuffer)), (StringUtil.getInstance ())#eMPTY_STRING)) :> AbPath.abPath)) in ();
            ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
            ignore (!stringBuffer#append (!viewPath));
            ignore (!stringBuffer#append ("special"));
            ignore (!stringBuffer#append ((Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#sEPARATOR));
            let fromSpecialDirectoryAbPath : AbPath.abPath ref = ref (((new AbPath.abPath ((java_string_of (Obj.repr !stringBuffer)), (StringUtil.getInstance ())#eMPTY_STRING)) :> AbPath.abPath)) in ();
            ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
            ignore (!stringBuffer#append (!viewPath));
            ignore (!stringBuffer#append ((self#getName ())));
            ignore (!stringBuffer#append ((Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#sEPARATOR));
            let toDirectoryAbPath : AbPath.abPath ref = ref (((new AbPath.abPath ((java_string_of (Obj.repr !stringBuffer)), (StringUtil.getInstance ())#eMPTY_STRING)) :> AbPath.abPath)) in ();
            if (current = 0) then begin
                if (not (directory#create (!toDirectoryAbPath))) then begin
                    raise (Failure (("Unable to create store view directory: " ^ (java_string_of (Obj.repr !toDirectoryAbPath)))))
                end
            end;
            let viewTotal : int ref = ref ((((total * 85)) / 100)) in ();
            let installTotal : int ref = ref ((((total * 93)) / 100)) in ();
            if (current < !viewTotal) then begin
                let file : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "AbFile.createAbFileFromAbPath" (Obj.repr (!fromSpecialDirectoryAbPath)))))) in ();
                if ((Obj.magic !file)#isDirectory ()) then begin
                    let halfViewTotal : int ref = ref ((!viewTotal / 2)) in ();
                    if (current < !halfViewTotal) then begin
                        (self#installViews (!fromSpecialDirectoryAbPath, !toDirectoryAbPath, current, !halfViewTotal))
                    end else if (current < !viewTotal) then begin
                        (self#installViews (!fromDirectoryAbPath, !toDirectoryAbPath, (current - !halfViewTotal), (!viewTotal - !halfViewTotal)))
                    end
                end else begin
                    (self#installViews (!fromDirectoryAbPath, !toDirectoryAbPath, current, !viewTotal))
                end
            end else if (current < !installTotal) then begin
                (self#installResources (!fromDirectoryAbPath, (current - !viewTotal), (!installTotal - !viewTotal)))
            end else begin
                (self#installMedia (!fromDirectoryAbPath, (current - !installTotal), (total - !installTotal)))
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "install()", e))
            end;
            raise e
        end)
        end
    

    method installViews : 'any1 'any2. 'any1 * 'any2 * int * int -> unit = fun (fromDirectoryAbPath, toDirectoryAbPath, (current : int), (total : int)) ->
        let fromDirectoryAbPath = Obj.repr fromDirectoryAbPath in
        let toDirectoryAbPath = Obj.repr toDirectoryAbPath in
        begin
        ignore ((FileUtil.getInstance ())#copyDirectoryPortion ((Obj.magic fromDirectoryAbPath), (Obj.magic toDirectoryAbPath), true, false, current, total))
        end [@@warning "-20"]
    

    method installResources : 'any1. 'any1 * int * int -> unit = fun (fromDirectoryAbPath, (current : int), (total : int)) ->
        let fromDirectoryAbPath = Obj.repr fromDirectoryAbPath in
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ((java_string_of (Obj.repr (Obj.magic fromDirectoryAbPath)))));
        ignore (!stringBuffer#append ((Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#sEPARATOR));
        ignore (!stringBuffer#append ("Resources"));
        ignore (!stringBuffer#append ((Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#sEPARATOR));
        let installCategoryAbPath : AbPath.abPath ref = ref (((new AbPath.abPath ((java_string_of (Obj.repr !stringBuffer)), (StringUtil.getInstance ())#eMPTY_STRING)) :> AbPath.abPath)) in ();
        ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
        ignore (!stringBuffer#append ((URLGLOBALS.getMainPath ())));
        ignore (!stringBuffer#append ((self#getCurrentHomeHostNamePath ())));
        ignore (!stringBuffer#append ((Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#sEPARATOR));
        ignore (!stringBuffer#append ((self#getCategoryPath ())));
        let categoryAbPath : AbPath.abPath ref = ref (((new AbPath.abPath ((java_string_of (Obj.repr !stringBuffer)), (StringUtil.getInstance ())#eMPTY_STRING)) :> AbPath.abPath)) in ();
        ignore ((FileUtil.getInstance ())#copyDirectoryPortion (!installCategoryAbPath, !categoryAbPath, true, false, current, total))
        end [@@warning "-20"]
    

    method installMedia : 'any1. 'any1 * int * int -> unit = fun (fromDirectoryAbPath, (current : int), (total : int)) ->
        let fromDirectoryAbPath = Obj.repr fromDirectoryAbPath in
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ((java_string_of (Obj.repr (Obj.magic fromDirectoryAbPath)))));
        ignore (!stringBuffer#append ((Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#sEPARATOR));
        ignore (!stringBuffer#append ((FREEBLISKET_PATH_GLOBALS.getInstance ())#tEMPLATEPATH));
        ignore (!stringBuffer#append ("images"));
        ignore (!stringBuffer#append ((Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#sEPARATOR));
        let viewStoreImagesDirectoryAbPath : AbPath.abPath ref = ref (((new AbPath.abPath ((java_string_of (Obj.repr !stringBuffer)), (StringUtil.getInstance ())#eMPTY_STRING)) :> AbPath.abPath)) in ();
        let storeAbPath : AbPath.abPath ref = ref (((new AbPath.abPath (((URLGLOBALS.getWebappPath ()) + (self#getCurrentHomeHostNamePath ())), (StringUtil.getInstance ())#eMPTY_STRING)) :> AbPath.abPath)) in ();
        ignore ((FileUtil.getInstance ())#copyDirectoryPortion (!viewStoreImagesDirectoryAbPath, !storeAbPath, true, false, current, total))
        end [@@warning "-20"]
    

    method toVector () : BasicArrayList.basicArrayList =
        begin
        let dataVector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        ignore (!dataVector#add (name));
        ignore (!dataVector#add (homeHostName));
        ignore (!dataVector#add ((java_string_of (Obj.repr homeHostNamePath))));
        ignore (!dataVector#add (hostName));
        ignore (!dataVector#add ((java_string_of (Obj.repr hostNamePath))));
        ignore (!dataVector#add (testHomeHostName));
        ignore (!dataVector#add ((java_string_of (Obj.repr testHomeHostNamePath))));
        ignore (!dataVector#add (testHostName));
        ignore (!dataVector#add ((java_string_of (Obj.repr testHostNamePath))));
        ignore (!dataVector#add ((java_string_of (Obj.repr imagePath))));
        ignore (!dataVector#add ((java_string_of (Obj.repr staticPath))));
        ignore (!dataVector#add ((java_string_of (Obj.repr categoryPath))));
        ignore (!dataVector#add (inventoryControl));
        let contextConfigurationDomDocumentMapping : ContextConfigurationDomDocumentMapping.contextConfigurationDomDocumentMapping ref = ref (((new ContextConfigurationDomDocumentMapping.contextConfigurationDomDocumentMapping ((self#getContextConfigurationInterface ()))) :> ContextConfigurationDomDocumentMapping.contextConfigurationDomDocumentMapping)) in ();
        ignore (!dataVector#add ((!contextConfigurationDomDocumentMapping#toDomDocumentString ())));
        ignore (!dataVector#add (subStores));
        ignore (!dataVector#add (tagLocation));
        ignore (!dataVector#add (packageLocation));
        ignore (!dataVector#add (ftp));
        ignore (!dataVector#add ((java_string_of (Obj.repr ftpPath))));
        ignore (!dataVector#add (ftpUserName));
        ignore (!dataVector#add (ftpPassword));
        ignore (!dataVector#add (testFtp));
        ignore (!dataVector#add ((java_string_of (Obj.repr testFtpPath))));
        ignore (!dataVector#add (testFtpUserName));
        ignore (!dataVector#add (testFtpPassword));
        let calendar : java_calendar ref = ref (((java_calendar_get_instance ()) :> java_calendar)) in ();
        let time : string ref = ref ((Obj.obj (java_new "String" (Obj.repr ((java_string_of (Obj.repr (Obj.obj (java_new "Long" (Obj.repr ((!calendar#getTimeInMillis ())))))))))))) in ();
        ignore (!dataVector#add (!time));
        ignore (!dataVector#add (!time));
        (!dataVector :> BasicArrayList.basicArrayList)
        end
    

    method toHashMap () : java_hash_map =
        begin
        let storeFrontData : StoreFrontData.storeFrontData ref = ref (((StoreFrontData.getInstance ()) :> StoreFrontData.storeFrontData)) in ();
        let dataHashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        ignore (!dataHashMap#put (!storeFrontData#nAME, name));
        ignore (!dataHashMap#put (!storeFrontData#hOMEHOSTNAME, homeHostName));
        ignore (!dataHashMap#put (!storeFrontData#hOMEHOSTNAMEPATH, (java_string_of (Obj.repr homeHostNamePath))));
        ignore (!dataHashMap#put (!storeFrontData#hOSTNAME, hostName));
        ignore (!dataHashMap#put (!storeFrontData#hOSTNAMEPATH, (java_string_of (Obj.repr hostNamePath))));
        ignore (!dataHashMap#put (!storeFrontData#tESTHOMEHOSTNAME, testHomeHostName));
        ignore (!dataHashMap#put (!storeFrontData#tESTHOMEHOSTNAMEPATH, (java_string_of (Obj.repr testHomeHostNamePath))));
        ignore (!dataHashMap#put (!storeFrontData#tESTHOSTNAME, testHostName));
        ignore (!dataHashMap#put (!storeFrontData#tESTHOSTNAMEPATH, (java_string_of (Obj.repr testHostNamePath))));
        ignore (!dataHashMap#put (!storeFrontData#iMAGEPATH, (java_string_of (Obj.repr imagePath))));
        ignore (!dataHashMap#put (!storeFrontData#sTATICPATH, (java_string_of (Obj.repr staticPath))));
        ignore (!dataHashMap#put (!storeFrontData#cATEGORYPATH, (java_string_of (Obj.repr categoryPath))));
        ignore (!dataHashMap#put (!storeFrontData#iNVENTORYCONTROL, inventoryControl));
        let contextConfigurationDomDocumentMapping : ContextConfigurationDomDocumentMapping.contextConfigurationDomDocumentMapping ref = ref (((new ContextConfigurationDomDocumentMapping.contextConfigurationDomDocumentMapping ((self#getContextConfigurationInterface ()))) :> ContextConfigurationDomDocumentMapping.contextConfigurationDomDocumentMapping)) in ();
        ignore (!dataHashMap#put (!storeFrontData#cONFIGURATION, (!contextConfigurationDomDocumentMapping#toDomDocumentString ())));
        ignore (!dataHashMap#put (!storeFrontData#sUBSTORES, subStores));
        ignore (!dataHashMap#put (!storeFrontData#tAGLOCATION, tagLocation));
        ignore (!dataHashMap#put (!storeFrontData#pACKAGELOCATION, packageLocation));
        ignore (!dataHashMap#put (!storeFrontData#fTP, ftp));
        ignore (!dataHashMap#put (!storeFrontData#fTPPATH, (java_string_of (Obj.repr ftpPath))));
        ignore (!dataHashMap#put (!storeFrontData#fTPUSERNAME, ftpUserName));
        ignore (!dataHashMap#put (!storeFrontData#fTPPASSWORD, ftpPassword));
        ignore (!dataHashMap#put (!storeFrontData#tESTFTP, testFtp));
        ignore (!dataHashMap#put (!storeFrontData#tESTFTPPATH, (java_string_of (Obj.repr testFtpPath))));
        ignore (!dataHashMap#put (!storeFrontData#tESTFTPUSERNAME, testFtpUserName));
        ignore (!dataHashMap#put (!storeFrontData#tESTFTPPASSWORD, testFtpPassword));
        let calendar : java_calendar ref = ref (((java_calendar_get_instance ()) :> java_calendar)) in ();
        let time : string ref = ref ((Obj.obj (java_new "String" (Obj.repr ((java_string_of (Obj.repr (Obj.obj (java_new "Long" (Obj.repr ((!calendar#getTimeInMillis ())))))))))))) in ();
        ignore (!dataHashMap#put ((EntryData.getInstance ())#lASTMODIFIED, !time));
        (!dataHashMap :> java_hash_map)
        end
    

    method getKey () : Obj.t =
        begin
        (Obj.repr ((Obj.magic (self#getName ()))))
        end
    

    method getContextConfigurationInterface () : ContextConfigurationInterface.contextConfigurationInterface =
        begin
        (contextConfigurationInterface :> ContextConfigurationInterface.contextConfigurationInterface)
        end
    

    method setContextConfigurationInterface : 'any1. 'any1 -> unit = fun (contextConfigurationInterface_arg) ->
        let contextConfigurationInterface_arg = Obj.repr contextConfigurationInterface_arg in
        begin
        contextConfigurationInterface <- (Obj.magic contextConfigurationInterface_arg)
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        directory <- ((Directory.getInstance ()) :> Directory.directory);
        stringUtil <- ((StringUtil.getInstance ()) :> StringUtil.stringUtil);
        abPathUtil <- ((AbPathUtil.getInstance ()) :> AbPathUtil.abPathUtil);
        name <- stringUtil#eMPTY_STRING;
        basketName <- stringUtil#eMPTY_STRING;
        homeHostName <- stringUtil#eMPTY_STRING;
        homeHostNamePath <- (abPathUtil#nO_ABPATH :> AbPath.abPath);
        hostName <- stringUtil#eMPTY_STRING;
        hostNamePath <- (abPathUtil#nO_ABPATH :> AbPath.abPath);
        testHomeHostName <- stringUtil#eMPTY_STRING;
        testHomeHostNamePath <- (abPathUtil#nO_ABPATH :> AbPath.abPath);
        testHostName <- stringUtil#eMPTY_STRING;
        testHostNamePath <- (abPathUtil#nO_ABPATH :> AbPath.abPath);
        imagePath <- (abPathUtil#nO_ABPATH :> AbPath.abPath);
        staticPath <- (abPathUtil#nO_ABPATH :> AbPath.abPath);
        categoryPath <- (abPathUtil#nO_ABPATH :> AbPath.abPath);
        inventoryControl <- stringUtil#eMPTY_STRING;
        ();
        subStores <- stringUtil#eMPTY_STRING;
        tagLocation <- stringUtil#eMPTY_STRING;
        packageLocation <- stringUtil#eMPTY_STRING;
        ftp <- stringUtil#eMPTY_STRING;
        ftpPath <- (abPathUtil#nO_ABPATH :> AbPath.abPath);
        ftpUserName <- stringUtil#eMPTY_STRING;
        ftpPassword <- stringUtil#eMPTY_STRING;
        testFtp <- stringUtil#eMPTY_STRING;
        testFtpPath <- (abPathUtil#nO_ABPATH :> AbPath.abPath);
        testFtpUserName <- stringUtil#eMPTY_STRING;
        testFtpPassword <- stringUtil#eMPTY_STRING;
        timeCreated <- stringUtil#eMPTY_STRING;
        lastModified <- stringUtil#eMPTY_STRING;
        mINCHAR <- 0;
        mINSTORENAMELENGTH <- 1;
        mAXCHAR <- 255;
        eMPTY_STRING <- (StringUtil.getInstance ())#eMPTY_STRING;
        oNE_EMPTY_STRING_ARRAY <- (StringUtil.getInstance ())#oNE_EMPTY_STRING_ARRAY;
        ();
        contextConfigurationInterface <- (new ContextConfiguration.contextConfiguration ())
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "StoreFront" (fun arguments -> Obj.repr (new storeFront (Obj.obj arguments)))


