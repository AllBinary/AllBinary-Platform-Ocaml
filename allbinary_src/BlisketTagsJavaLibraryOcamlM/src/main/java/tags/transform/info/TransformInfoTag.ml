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
(* package tags.transform.info *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.servlet.jsp.JspTagException *)
(* import admin.taghelpers.TagHelperFactoryInterface *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontData *)
(* import org.allbinary.logic.communication.http.request.AbResponseHandler *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.io.OutputTypeData *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoData *)
(* import taghelpers.transform.info.TransformInfoRequestHelperFactory *)
(* import tags.ModifyTag *)

class transformInfoTag () =
  object (self)
    inherit ModifyTag.modifyTag ((new TransformInfoRequestHelperFactory.transformInfoRequestHelperFactory ())) as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    val mutable storeName : string = ""
    method storeName = storeName
    method set_storeName value' = storeName <- value'
    val mutable objectFile : string = ""
    method objectFile = objectFile
    method set_objectFile value' = objectFile <- value'
    val mutable anyType : string = ""
    method anyType = anyType
    method set_anyType value' = anyType <- value'
    val mutable objectConfigFile : string = ""
    method objectConfigFile = objectConfigFile
    method set_objectConfigFile value' = objectConfigFile <- value'
    val mutable objectConfig : string = ""
    method objectConfig = objectConfig
    method set_objectConfig value' = objectConfig <- value'
    val mutable templateFile : string = ""
    method templateFile = templateFile
    method set_templateFile value' = templateFile <- value'
    val mutable template : string = ""
    method template = template
    method set_template value' = template <- value'
    val mutable dataFile : string = ""
    method dataFile = dataFile
    method set_dataFile value' = dataFile <- value'
    val mutable data : string = ""
    method data = data
    method set_data value' = data <- value'
    val mutable type_ : string = ""
    method type_ = type_
    method set_type_ value' = type_ <- value'
    
    
    

    method setName ((value : string)) : unit =
        begin
        name <- value;
        ignore ((self#getPropertiesHashMap ())#put ((TransformInfoData.getInstance ())#nAME, name))
        end [@@warning "-7"]
    

    method setStoreName ((value : string)) : unit =
        begin
        storeName <- value;
        ignore ((self#getPropertiesHashMap ())#put ((StoreFrontData.getInstance ())#nAME, storeName))
        end [@@warning "-7"]
    

    method setObjectFile ((value : string)) : unit =
        begin
        objectFile <- value;
        ignore ((self#getPropertiesHashMap ())#put ((TransformInfoData.getInstance ())#oBJECTFILENAME, objectFile))
        end [@@warning "-7"]
    

    method setObject ((value : string)) : unit =
        begin
        anyType <- value;
        ignore ((self#getPropertiesHashMap ())#put ((TransformInfoData.getInstance ())#oBJECT, anyType))
        end [@@warning "-7"]
    

    method setTemplateFile ((value : string)) : unit =
        begin
        templateFile <- value;
        ignore ((self#getPropertiesHashMap ())#put ((TransformInfoData.getInstance ())#tEMPLATEFILENAME, templateFile))
        end [@@warning "-7"]
    

    method setTemplate ((value : string)) : unit =
        begin
        template <- value;
        ignore ((self#getPropertiesHashMap ())#put ((TransformInfoData.getInstance ())#tEMPLATE, template))
        end [@@warning "-7"]
    

    method setDataFile ((value : string)) : unit =
        begin
        dataFile <- value;
        ignore ((self#getPropertiesHashMap ())#put ((TransformInfoData.getInstance ())#dATAFILENAME, dataFile))
        end [@@warning "-7"]
    

    method setData ((value : string)) : unit =
        begin
        data <- value;
        ignore ((self#getPropertiesHashMap ())#put ((TransformInfoData.getInstance ())#dATA, data))
        end [@@warning "-7"]
    

    method setObjectConfigFile ((value : string)) : unit =
        begin
        objectConfigFile <- value;
        ignore ((self#getPropertiesHashMap ())#put ((TransformInfoData.getInstance ())#oBJECTCONFIGFILENAME, objectConfigFile))
        end [@@warning "-7"]
    

    method setObjectConfig ((value : string)) : unit =
        begin
        objectConfig <- value;
        ignore ((self#getPropertiesHashMap ())#put ((TransformInfoData.getInstance ())#oBJECTCONFIG, objectConfig))
        end [@@warning "-7"]
    

    method setType ((value : string)) : unit =
        begin
        type_ <- value;
        ignore ((self#getPropertiesHashMap ())#put ((OutputTypeData.getInstance ())#nAME, type_));
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAG)) then begin
            ignore ((Obj.magic logUtil)#putF (("TransformInfoTag type set: " ^ type_), self, "setType"))
        end
        end [@@warning "-7"]
    

    method getName () : string =
        begin
        name
        end [@@warning "-7"]
    

    method getObjectFile () : string =
        begin
        objectFile
        end [@@warning "-7"]
    

    method doStartTag () : int =
        begin
        (try
            (super#doStartTag ())
        with e -> begin
            ignore (AbResponseHandler.sendJspTagRedirect (pageContext, e));
            sKIP_BODY
        end)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        name <- "";
        storeName <- "";
        objectFile <- "";
        anyType <- "";
        objectConfigFile <- "";
        objectConfig <- "";
        templateFile <- "";
        template <- "";
        dataFile <- "";
        data <- "";
        type_ <- "";
        ();
        (* super(...) is the inherit clause *) ()
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "TransformInfoTag" (fun arguments -> Obj.repr (new transformInfoTag (Obj.obj arguments)))


