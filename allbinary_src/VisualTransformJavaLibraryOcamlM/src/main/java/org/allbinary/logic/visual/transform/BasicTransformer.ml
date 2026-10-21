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
(* package org.allbinary.logic.visual.transform *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.ByteArrayInputStream *)
(* import java.io.ByteArrayOutputStream *)
(* import java.io.InputStream *)
(* import javax.xml.transform.URIResolver *)
(* import org.allbinary.data.tree.dom.BasicUriResolver *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.control.crypt.jcehelper.AbCrypt *)
(* import org.allbinary.logic.control.crypt.jcehelper.KeySpecFactory *)
(* import org.allbinary.logic.io.AbFileInputStream *)
(* import org.allbinary.logic.io.StreamUtil *)
(* import org.allbinary.logic.io.file.AbFile *)
(* import org.allbinary.logic.io.path.AbPathData *)
(* import org.allbinary.logic.io.path.PathUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.system.security.AbKeys *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.allbinary.logic.visual.transform.info.template.TransformInfoTemplateData *)

class basicTransformer ((abeClientInformation_arg : AbeClientInformationInterface.abeClientInformationInterface), (transformInfoInterface : TransformInfoInterface.transformInfoInterface)) =
  object (self)
    inherit AbTransformer.abTransformer (transformInfoInterface)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable streamUtil : StreamUtil.streamUtil = (Obj.magic 0)
    method streamUtil = streamUtil
    method set_streamUtil value' = streamUtil <- value'
    val mutable abeClientInformation : AbeClientInformationInterface.abeClientInformationInterface = (Obj.magic 0)
    method abeClientInformation = abeClientInformation
    method set_abeClientInformation value' = abeClientInformation <- value'
    
    

    method setEncryptedTemplateFileAsInputStream : 'any1. 'any1 -> unit = fun (file) ->
        let file = Obj.repr file in
        begin
        let outputStream : java_byte_array_output_stream ref = ref ((Obj.magic 0)) in ();
        let inputStream : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        Fun.protect ~finally:(fun () -> 
            ignore (streamUtil#close (!outputStream));
            ignore (streamUtil#close ((Obj.magic !inputStream)))
        ) (fun () -> (try
            outputStream := (new java_byte_array_output_stream ());
            inputStream := Obj.repr ((Obj.obj (java_new "AbFileInputStream" (Obj.repr ((Obj.magic file))))));
            outputStream := (Obj.magic (streamUtil#get ((Obj.magic !inputStream), !outputStream, (Array.make (16384) 0))));
            let abCrypt : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "AbCrypt" (Obj.repr ((Obj.magic (java_call_static "KeySpecFactory.get_dESEDE" (Obj.repr ()))), ((AbKeys.getInstance ())#getKey (abeClientInformation, ((Obj.magic file)#getAbsolutePath ()))))))))) in ();
            let decrypted : int array ref = ref (((Obj.magic !abCrypt)#decrypt ((!outputStream#toByteArray ())))) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPERFACTORY)) then begin
                ignore ((Obj.magic logUtil)#putF (("Decrypted Template: \n" ^ java_string_of (Obj.repr ((Obj.obj (java_new "String" (Obj.repr (!decrypted))))))), self, "setEncryptedTemplateFileAsInputStream(file)"))
            end;
            ignore (self#setInputStream ((Obj.magic (new ByteArrayInputStream.byteArrayInputStream (!decrypted)))));
            ignore (self#setURIResolver ((Obj.magic (Obj.obj (java_new "BasicUriResolver" (Obj.repr ((TransformInfoTemplateData.getInstance ())#eNCRYPTED_EXTENSION)))))))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPERFACTORYERROR)) then begin
                let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
                ignore (!stringBuffer#append ("Failed to get Encrypted File: "));
                ignore (!stringBuffer#append (((Obj.magic file)#getPath ())));
                ignore (!stringBuffer#append (" \nName:"));
                ignore (!stringBuffer#append (((Obj.magic file)#getName ())));
                ignore ((Obj.magic logUtil)#put ((java_string_of (Obj.repr !stringBuffer)), self, "setEncryptedTemplateFileAsInputStream()", e))
            end;
            raise e
        end))
        end [@@warning "-7-20"]
    

    method setEncryptedTemplateAsInputStream () : unit =
        begin
        let outputStream : java_byte_array_output_stream ref = ref ((Obj.magic 0)) in ();
        let inputStream : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        Fun.protect ~finally:(fun () -> 
            ignore (streamUtil#close (!outputStream));
            ignore (streamUtil#close ((Obj.magic !inputStream)))
        ) (fun () -> (try
            outputStream := (new java_byte_array_output_stream ());
            inputStream := Obj.repr ((new ByteArrayInputStream.byteArrayInputStream ((((self#getTransformInfoInterface ())#getTemplate ())#getBytes ()))));
            outputStream := (Obj.magic (streamUtil#get ((Obj.magic !inputStream), !outputStream, (Array.make (16384) 0))));
            let abCrypt : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "AbCrypt" (Obj.repr ((Obj.magic (java_call_static "KeySpecFactory.get_dESEDE" (Obj.repr ()))), ((AbKeys.getInstance ())#getKey (abeClientInformation, ((self#getTransformInfoInterface ())#getName ()))))))))) in ();
            let decrypted : int array ref = ref (((Obj.magic !abCrypt)#decrypt ((!outputStream#toByteArray ())))) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPERFACTORY)) then begin
                ignore ((Obj.magic logUtil)#putF (("Decrypted Template: \n" ^ (java_string_of (Obj.repr !decrypted))), self, "setEncryptedTemplateAsInputStream()"))
            end;
            ignore (self#setInputStream ((Obj.magic (new ByteArrayInputStream.byteArrayInputStream (!decrypted)))));
            ignore (self#setURIResolver ((Obj.magic (Obj.obj (java_new "BasicUriResolver" (Obj.repr ((TransformInfoTemplateData.getInstance ())#eNCRYPTED_EXTENSION)))))))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPERFACTORYERROR)) then begin
                ignore ((Obj.magic logUtil)#put (("Failed to set with template: " ^ java_string_of (Obj.repr (((self#getTransformInfoInterface ())#getTemplateFilePath ())))), self, "setEncryptedTemplateFileAsInputStream()", e))
            end;
            raise e
        end))
        end [@@warning "-7"]
    

    method setTemplateAsInputStream () : unit =
        try
        begin
        let inputStream : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        let outputStream : java_byte_array_output_stream ref = ref ((Obj.magic 0)) in ();
        Fun.protect ~finally:(fun () -> 
            ignore (streamUtil#close (!outputStream));
            ignore (streamUtil#close ((Obj.magic !inputStream)))
        ) (fun () -> (try
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPERFACTORY)) then begin
                ignore ((Obj.magic logUtil)#putF (((self#getTransformInfoInterface ())#log ()), self, "setTemplateAsInputStream()"))
            end;
            let transformInfoTemplateData : TransformInfoTemplateData.transformInfoTemplateData ref = ref (((TransformInfoTemplateData.getInstance ()) :> TransformInfoTemplateData.transformInfoTemplateData)) in ();
            let pathUtil : PathUtil.pathUtil ref = ref (((PathUtil.getInstance ()) :> PathUtil.pathUtil)) in ();
            if (((self#getTransformInfoInterface ())#getTemplateFilePath ()) != (Obj.magic 0)) then begin
                let extension : string ref = ref ((!pathUtil#getExtensionWithAbPath (((self#getTransformInfoInterface ())#getTemplateFilePath ())))) in ();
                let filePath : string ref = ref ((!pathUtil#getWithoutExtensionWithAbPath (((self#getTransformInfoInterface ())#getTemplateFilePath ())))) in ();
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPERFACTORY)) then begin
                    ignore ((Obj.magic logUtil)#putF (((self#getTransformInfoInterface ())#log ()), self, "setTemplateAsInputStream()"))
                end;
                if ((String.compare !extension (!transformInfoTemplateData#uNCRYPTED_EXTENSION)) == 0) then begin
                    let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
                    ignore (!stringBuffer#append (!filePath));
                    ignore (!stringBuffer#append ((Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#eXTENSION_SEP));
                    ignore (!stringBuffer#append (!transformInfoTemplateData#eNCRYPTED_EXTENSION));
                    let encFile : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "AbFile.createAbFile" (Obj.repr ((java_string_of (Obj.repr !stringBuffer)))))))) in ();
                    if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPERFACTORY)) then begin
                        ignore ((Obj.magic logUtil)#putF (((self#getTransformInfoInterface ())#log ()), self, "setTemplateAsInputStream()"))
                    end;
                    if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPERFACTORY)) then begin
                        stringBuffer := (new StringMaker.stringMaker ());
                        ignore (!stringBuffer#append ("Encrypted Template File isFile="));
                        ignore (!stringBuffer#appendboolean (((Obj.magic !encFile)#isFile ())));
                        ignore (!stringBuffer#append ("\nEncTemplateFilePath: "));
                        ignore (!stringBuffer#append (((Obj.magic !encFile)#getPath ())));
                        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "setTemplateAsInputStream()"))
                    end;
                    if ((Obj.magic !encFile)#isFile ()) then begin
                        (self#setEncryptedTemplateFileAsInputStream ((Obj.magic !encFile)));
                        raise (Java_return (Obj.repr (())))
                    end else begin
                        let file : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "AbFile.createAbFileFromAbPath" (Obj.repr (((self#getTransformInfoInterface ())#getTemplateFilePath ()))))))) in ();
                        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPERFACTORY)) then begin
                            ignore ((Obj.magic logUtil)#putF (((self#getTransformInfoInterface ())#log ()), self, "setTemplateAsInputStream()"))
                        end;
                        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPERFACTORY)) then begin
                            ignore ((Obj.magic logUtil)#putF (("Template File isFile=" ^ java_string_of (Obj.repr (((Obj.magic !file)#isFile ())))), self, "setTemplateAsInputStream()"))
                        end;
                        if ((Obj.magic !file)#isFile ()) then begin
                            inputStream := Obj.repr ((Obj.obj (java_new "AbFileInputStream" (Obj.repr ((Obj.magic !file))))));
                            outputStream := (new java_byte_array_output_stream ());
                            outputStream := (Obj.magic (streamUtil#get ((Obj.magic !inputStream), !outputStream, (Array.make (16384) 0))));
                            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPERFACTORY)) then begin
                                ignore ((Obj.magic logUtil)#putF (("Template: " ^ (java_string_of (Obj.repr !outputStream))), self, "getTemplateAsInputStream()"))
                            end;
                            ignore (self#setInputStream ((Obj.magic (new ByteArrayInputStream.byteArrayInputStream ((!outputStream#toByteArray ()))))));
                            ignore (self#setURIResolver ((Obj.magic (Obj.obj (java_new "BasicUriResolver" (Obj.repr (!transformInfoTemplateData#uNCRYPTED_EXTENSION)))))));
                            raise (Java_return (Obj.repr (())))
                        end
                    end
                end else if ((String.compare !extension (!transformInfoTemplateData#eNCRYPTED_EXTENSION)) == 0) then begin
                    let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
                    ignore (!stringBuffer#append (!filePath));
                    ignore (!stringBuffer#append ((Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#eXTENSION_SEP));
                    ignore (!stringBuffer#append (!transformInfoTemplateData#eNCRYPTED_EXTENSION));
                    let file : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "AbFile.createAbFile" (Obj.repr ((java_string_of (Obj.repr !stringBuffer)))))))) in ();
                    if ((Obj.magic !file)#isFile ()) then begin
                        (self#setEncryptedTemplateFileAsInputStream ((Obj.magic !file)))
                    end
                end else begin
                    raise (Failure (("View Template File Type Is Not Recognized: " ^ java_string_of (Obj.repr (((self#getTransformInfoInterface ())#getTemplateFilePath ()))))))
                end
            end else begin
                (self#setEncryptedTemplateAsInputStream ())
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPERFACTORYERROR)) then begin
                ignore ((Obj.magic logUtil)#put ("Failed to get Template Data", self, "setTemplateAsInputStream()", e))
            end;
            raise e
        end));
        raise (Failure ("Error setTemplateAsInputStream()"))
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        streamUtil <- ((StreamUtil.getInstance ()) :> StreamUtil.streamUtil);
        ();
        ();
        (* super(...) is the inherit clause *) ();
        abeClientInformation <- abeClientInformation_arg;
        (self#setTemplateAsInputStream ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "BasicTransformer" (fun arguments -> Obj.repr (new basicTransformer (Obj.obj arguments)))


