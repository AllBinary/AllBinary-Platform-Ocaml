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
(* package org.allbinary.data.tree.dom *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.xml.transform.Source *)
(* import javax.xml.transform.TransformerException *)
(* import javax.xml.transform.URIResolver *)
(* import javax.xml.transform.stream.StreamSource *)
(* import org.allbinary.globals.FREEBLISKET_PATH_GLOBALS *)
(* import org.allbinary.globals.URLGLOBALS *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.control.crypt.file.CryptFileReader *)
(* import org.allbinary.logic.io.path.AbFilePath *)
(* import org.allbinary.logic.io.path.AbPath *)
(* import org.allbinary.logic.io.path.AbPathData *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreInterface *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.allbinary.logic.visual.transform.info.template.TransformInfoTemplateData *)

class storeUriResolver ((parentTransformInfoInterface_arg : TransformInfoInterface.transformInfoInterface), basicURIResolver_arg) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable uriResolverStrings : URIResolverStrings.uRIResolverStrings = (Obj.magic 0)
    method uriResolverStrings = uriResolverStrings
    method set_uriResolverStrings value' = uriResolverStrings <- value'
    val mutable basicURIResolver : Obj.t = Obj.repr 0
    method basicURIResolver : 'r. 'r = Obj.magic basicURIResolver
    method set_basicURIResolver : 'v. 'v -> unit = fun value' -> basicURIResolver <- Obj.repr value'
    val mutable parentTransformInfoInterface : TransformInfoInterface.transformInfoInterface = (Obj.magic 0)
    method parentTransformInfoInterface = parentTransformInfoInterface
    method set_parentTransformInfoInterface value' = parentTransformInfoInterface <- value'
    
    

    method resolve : 'return. string * string -> 'return = fun ((href : string), (base : string)) ->
        begin
        (try
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            let transformInfoHttpStoreInterface : TransformInfoHttpStoreInterface.transformInfoHttpStoreInterface ref = ref (((Obj.magic parentTransformInfoInterface) :> TransformInfoHttpStoreInterface.transformInfoHttpStoreInterface)) in ();
            ignore (((((!stringBuffer#append ((URLGLOBALS.getMainPath ())))#append ((FREEBLISKET_PATH_GLOBALS.getInstance ())#xSLPATH))#append ((!transformInfoHttpStoreInterface#getStoreName ())))#append ((Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#sEPARATOR))#append (href));
            let fileAbPath : AbPath.abPath ref = ref (((Obj.magic (new AbFilePath.abFilePath ((java_string_of (Obj.repr !stringBuffer))))) :> AbPath.abPath)) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#xMLLOGGING)) then begin
                ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
                ignore (!stringBuffer#append (uriResolverStrings#aTTEMPT));
                ignore (!stringBuffer#append (href));
                ignore (!stringBuffer#append (uriResolverStrings#bASE));
                ignore (!stringBuffer#append (base));
                ignore (!stringBuffer#append (uriResolverStrings#nEW_PATH));
                ignore (!stringBuffer#append ((java_string_of (Obj.repr !fileAbPath))));
                ignore (!stringBuffer#append (uriResolverStrings#nOTE));
                ignore (!stringBuffer#append ((FREEBLISKET_PATH_GLOBALS.getInstance ())#xSLPATH));
                ignore (!stringBuffer#append (uriResolverStrings#uRL_GLOBAL));
                ignore (!stringBuffer#append (uriResolverStrings#rEQUIRED_EXTENSION));
                ignore (!stringBuffer#append (((Obj.magic basicURIResolver)#getExtension ())));
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, uriResolverStrings#rESOLVE))
            end;
            (Obj.magic ((new StreamSource.streamSource (((Obj.obj (java_new "CryptFileReader" (Obj.repr ((TransformInfoTemplateData.getInstance ())#uNCRYPTED_EXTENSION, (TransformInfoTemplateData.getInstance ())#eNCRYPTED_EXTENSION))))#getInputStream (!fileAbPath))))))
        with e -> begin
            raise e
        end)
        end
    

    method toString () : string =
        begin
        (try
            (java_string_of (Obj.repr (((URLGLOBALS.getMainPath ()) + (FREEBLISKET_PATH_GLOBALS.getInstance ())#xSLPATH))) ^ "{Store Name if Any}/{import url}")
        with e -> begin
            "StoreUriResolver - Does not work without webapp path should be changed"
        end)
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        uriResolverStrings <- ((URIResolverStrings.getInstance ()) :> URIResolverStrings.uRIResolverStrings);
        ();
        ();
        ();
        parentTransformInfoInterface <- parentTransformInfoInterface_arg;
        basicURIResolver <- Obj.repr (basicURIResolver_arg)
      end
  end [@@warning "-20"]
let () = java_register_constructor "StoreUriResolver" (fun arguments -> Obj.repr (new storeUriResolver (Obj.obj arguments)))


