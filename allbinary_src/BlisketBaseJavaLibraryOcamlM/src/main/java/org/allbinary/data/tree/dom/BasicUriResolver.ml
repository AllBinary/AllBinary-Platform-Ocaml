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
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.visual.transform.info.template.TransformInfoTemplateData *)

class basicUriResolver ((extension_arg : string)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable uriResolverStrings : URIResolverStrings.uRIResolverStrings = (Obj.magic 0)
    method uriResolverStrings = uriResolverStrings
    method set_uriResolverStrings value' = uriResolverStrings <- value'
    val mutable extension : string = ""
    method extension = extension
    method set_extension value' = extension <- value'
    
    

    method getExtension () : string =
        begin
        extension
        end
    

    method resolve : 'return. string * string -> 'return = fun ((href : string), (base : string)) ->
        begin
        (try
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (!stringBuffer#append ((URLGLOBALS.getMainPath ())));
            ignore (!stringBuffer#append ((FREEBLISKET_PATH_GLOBALS.getInstance ())#xSLPATH));
            ignore (!stringBuffer#append (href));
            let abPath : AbPath.abPath ref = ref (((Obj.magic (new AbFilePath.abFilePath ((java_string_of (Obj.repr !stringBuffer))))) :> AbPath.abPath)) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#xMLLOGGING)) then begin
                ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
                ignore (!stringBuffer#append (uriResolverStrings#aTTEMPT));
                ignore (!stringBuffer#append (href));
                ignore (!stringBuffer#append (uriResolverStrings#bASE));
                ignore (!stringBuffer#append (base));
                ignore (!stringBuffer#append (uriResolverStrings#nEW_PATH));
                ignore (!stringBuffer#append ((java_string_of (Obj.repr !abPath))));
                ignore (!stringBuffer#append (uriResolverStrings#nOTE));
                ignore (!stringBuffer#append ((FREEBLISKET_PATH_GLOBALS.getInstance ())#xSLPATH));
                ignore (!stringBuffer#append (uriResolverStrings#uRL_GLOBAL));
                ignore (!stringBuffer#append (uriResolverStrings#rEQUIRED_EXTENSION));
                ignore (!stringBuffer#append (extension));
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, uriResolverStrings#rESOLVE))
            end;
            (Obj.magic ((new StreamSource.streamSource (((Obj.obj (java_new "CryptFileReader" (Obj.repr ((TransformInfoTemplateData.getInstance ())#uNCRYPTED_EXTENSION, (TransformInfoTemplateData.getInstance ())#eNCRYPTED_EXTENSION))))#getInputStream (!abPath))))))
        with e -> begin
            raise e
        end)
        end
    

    method toString () : string =
        begin
        (try
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (!stringBuffer#append ((URLGLOBALS.getMainPath ())));
            ignore (!stringBuffer#append ((FREEBLISKET_PATH_GLOBALS.getInstance ())#xSLPATH));
            ignore (!stringBuffer#append (uriResolverStrings#iMPORT_URL));
            (java_string_of (Obj.repr !stringBuffer))
        with e -> begin
            "BasicUriResolver - Does not work without webapp path should be changed"
        end)
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        uriResolverStrings <- ((URIResolverStrings.getInstance ()) :> URIResolverStrings.uRIResolverStrings);
        ();
        ();
        extension <- extension_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "BasicUriResolver" (fun arguments -> Obj.repr (new basicUriResolver (Obj.obj arguments)))


