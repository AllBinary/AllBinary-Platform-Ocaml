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
(* import java.io.InputStream *)
(* import java.io.StringBufferInputStream *)
(* import javax.xml.transform.URIResolver *)
(* import javax.xml.transform.stream.StreamSource *)
(* import org.allbinary.data.tree.dom.XslHelper *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGenerator *)
(* import org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactory *)
(* import org.allbinary.string.CommonStrings *)

class abTransformer ((transformInfoInterface_arg : TransformInfoInterface.transformInfoInterface)) =
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
    val mutable inputStream : Obj.t = Obj.repr 0
    method inputStream : 'r. 'r = Obj.magic inputStream
    method set_inputStream : 'v. 'v -> unit = fun value' -> inputStream <- Obj.repr value'
    val mutable uriResolver : Obj.t = Obj.repr 0
    method uriResolver : 'r. 'r = Obj.magic uriResolver
    method set_uriResolver : 'v. 'v -> unit = fun value' -> uriResolver <- Obj.repr value'
    
    

    method getTransformInfoInterface () : TransformInfoInterface.transformInfoInterface =
        begin
        (transformInfoInterface :> TransformInfoInterface.transformInfoInterface)
        end
    

    method setInputStream : 'any1. 'any1 -> unit = fun (inputStream_arg) ->
        let inputStream_arg = Obj.repr inputStream_arg in
        begin
        inputStream <- Obj.repr ((Obj.magic inputStream_arg))
        end [@@warning "-20"]
    

    method setURIResolver : 'any1. 'any1 -> unit = fun (uriResolver_arg) ->
        let uriResolver_arg = Obj.repr uriResolver_arg in
        begin
        uriResolver <- Obj.repr ((Obj.magic uriResolver_arg))
        end [@@warning "-20"]
    

    method getInputStream : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic inputStream)))
        end
    

    method getURIResolver : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic uriResolver)))
        end
    

    method getStreamSource : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((new StreamSource.streamSource ((self#getInputStream ())))))
        end
    

    method translate ((xmlDocumentStr : string)) : string =
        begin
        (try
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#xMLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#putF (("xml: \n" ^ xmlDocumentStr), self, "translate(String xmlDocumentStr)"))
            end;
            if ((self#getURIResolver ()) == (Obj.magic 0)) then begin
                raise (Failure ("No URIResolver"))
            end;
            let result : string ref = ref (((XslHelper.getInstance ())#translate ((self#getURIResolver ()), (new StreamSource.streamSource ((self#getInputStream ()))), (new StreamSource.streamSource ((new StringBufferInputStream.stringBufferInputStream (xmlDocumentStr))))))) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#xSLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#putF (("translated xml: " ^ !result), self, "translate(String xmlDocumentStr)"))
            end;
            let transformInfoObjectConfigGeneratorInterface : TransformInfoObjectConfigGenerator.transformInfoObjectConfigGenerator ref = ref ((((TransformInfoObjectConfigGeneratorFactory.getInstance ())#getInstance ((self#getTransformInfoInterface ()))) :> TransformInfoObjectConfigGenerator.transformInfoObjectConfigGenerator)) in ();
            (!transformInfoObjectConfigGeneratorInterface#process (!result))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEWERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((transformInfoInterface#log ()), self, "translate(document)", e))
            end;
            raise e
        end)
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        inputStream <- (Obj.repr (Obj.magic 0));
        uriResolver <- (Obj.repr (Obj.magic 0));
        ();
        transformInfoInterface <- transformInfoInterface_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "AbTransformer" (fun arguments -> Obj.repr (new abTransformer (Obj.obj arguments)))


