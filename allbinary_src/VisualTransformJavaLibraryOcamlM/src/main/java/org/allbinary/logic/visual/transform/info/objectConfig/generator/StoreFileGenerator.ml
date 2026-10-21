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
(* package org.allbinary.logic.visual.transform.info.objectConfig.generator *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.ByteArrayInputStream *)
(* import java.io.InputStream *)
(* import java.util.HashMap *)
(* import org.allbinary.globals.URLGLOBALS *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.http.request.session.WeblisketSession *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.io.InputOutputTypeData *)
(* import org.allbinary.logic.io.file.AbFile *)
(* import org.allbinary.logic.io.file.FileUtil *)
(* import org.allbinary.logic.io.path.AbPath *)
(* import org.allbinary.logic.io.path.AbPathData *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.string.StringValidationUtil *)
(* import org.allbinary.logic.string.regex.replace.Replace *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreInterface *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.allbinary.logic.visual.transform.info.TransformInfosData *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.string.CommonStrings *)

class storeFileGenerator ((transformInfoInterface : TransformInfoInterface.transformInfoInterface)) =
  object (self)
    inherit TransformInfoObjectConfigGenerator.transformInfoObjectConfigGenerator ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable output : string = ""
    method output = output
    method set_output value' = output <- value'
    val mutable fileAbPath : AbPath.abPath = (Obj.magic 0)
    method fileAbPath = fileAbPath
    method set_fileAbPath value' = fileAbPath <- value'
    val mutable file : Obj.t = Obj.repr 0
    method file : 'r. 'r = Obj.magic file
    method set_file : 'v. 'v -> unit = fun value' -> file <- Obj.repr value'
    
    

    method process ((input : string)) : string =
        begin
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
            ignore ((Obj.magic logUtil)#putF ("Processing", self, commonStrings#pROCESS))
        end;
        if (not ((Obj.magic file)#exists ())) then begin
            ignore ((Obj.magic file)#createNewFile ())
        end;
        if ((Obj.magic file)#exists ()) then begin
            let inputStream : Obj.t ref = ref ((Obj.repr (new ByteArrayInputStream.byteArrayInputStream ((java_string_get_bytes input))))) in ();
            ignore ((FileUtil.getInstance ())#write ((Obj.magic !inputStream), (Obj.magic file)))
        end else begin
            raise (Failure (("Could Not Create: " ^ (java_string_of (Obj.repr fileAbPath)))))
        end;
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
            ignore ((Obj.magic logUtil)#putF ("Processed", self, commonStrings#pROCESS))
        end;
        (StringUtil.getInstance ())#eMPTY_STRING
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        ();
        ();
        ();
        let httpTransformInfoInterface : TransformInfoHttpInterface.transformInfoHttpInterface ref = ref (((Obj.magic transformInfoInterface) :> TransformInfoHttpInterface.transformInfoHttpInterface)) in ();
        let weblisketSession : WeblisketSession.weblisketSession ref = ref (((new WeblisketSession.weblisketSession ((!httpTransformInfoInterface#getPropertiesHashMap ()), (!httpTransformInfoInterface#getPageContext ()))) :> WeblisketSession.weblisketSession)) in ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ((URLGLOBALS.getWebappPath ())));
        ignore (!stringBuffer#append ((!weblisketSession#getStoreName ())));
        ignore (!stringBuffer#append ((Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#sEPARATOR));
        let abPath : AbPath.abPath ref = ref (((new AbPath.abPath ((java_string_of (Obj.repr !stringBuffer)), (StringUtil.getInstance ())#eMPTY_STRING)) :> AbPath.abPath)) in ();
        let fileName : string ref = ref ((Obj.magic ((!httpTransformInfoInterface#getPropertiesHashMap ())#get ((InputOutputTypeData.getInstance ())#fILE)))) in ();
        let stringValidationUtil : StringValidationUtil.stringValidationUtil ref = ref (((StringValidationUtil.getInstance ()) :> StringValidationUtil.stringValidationUtil)) in ();
        if (!stringValidationUtil#isEmpty (!fileName)) then begin
            let transformInfoHttpStoreInterface : TransformInfoHttpStoreInterface.transformInfoHttpStoreInterface ref = ref (((Obj.magic transformInfoInterface) :> TransformInfoHttpStoreInterface.transformInfoHttpStoreInterface)) in ();
            fileName := ((transformInfoInterface#getName ())#substring ((((!transformInfoHttpStoreInterface#getStoreName ())#length ()) + 1)));
            let outputMappingHashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
            ignore (!outputMappingHashMap#put ((TransformInfosData.getInstance ())#pREVIEW, "Preview"));
            ignore (!outputMappingHashMap#put ((TransformInfosData.getInstance ())#sMALL_PREVIEW, "SmallPreview"));
            ignore (!outputMappingHashMap#put ((CommonSeps.getInstance ())#sPACE, (StringUtil.getInstance ())#eMPTY_STRING));
            let replace : Replace.replace ref = ref (((new Replace.replace (!outputMappingHashMap)) :> Replace.replace)) in ();
            fileName := (!replace#all (!fileName))
        end;
        if (!stringValidationUtil#isEmpty (!fileName)) then begin
            raise (Failure ("TransformInfoObjectConfigGenerator FileName Not Specified"))
        end;
        let tempOutput : string ref = ref ((Obj.magic ((!httpTransformInfoInterface#getPropertiesHashMap ())#get ((InputOutputTypeData.getInstance ())#nAME)))) in ();
        if (!stringValidationUtil#isEmpty (!tempOutput)) then begin
            tempOutput := (InputOutputTypeData.getInstance ())#dEFAULT
        end;
        output <- !tempOutput;
        if (!stringValidationUtil#isEmpty (output)) then begin
            raise (Failure ("TransformInfoObjectConfigGenerator Output=extension Not Specified"))
        end;
        stringBuffer := (new StringMaker.stringMaker ());
        ignore (!stringBuffer#append (!fileName));
        ignore (!stringBuffer#append ((Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#eXTENSION_SEP));
        ignore (!stringBuffer#append (output));
        abPath := (new AbPath.abPath ((java_string_of (Obj.repr !abPath)), (java_string_of (Obj.repr !stringBuffer))));
        fileAbPath <- !abPath;
        file <- Obj.repr ((Obj.magic (java_call_static "AbFile.createAbFileFromAbPath" (Obj.repr (fileAbPath)))));
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
            ignore ((Obj.magic logUtil)#putF (("File: " ^ (java_string_of (Obj.repr fileAbPath))), self, commonStrings#cONSTRUCTOR))
        end
      end
  end [@@warning "-20"]
let () = java_register_constructor "StoreFileGenerator" (fun arguments -> Obj.repr (new storeFileGenerator (Obj.obj arguments)))


