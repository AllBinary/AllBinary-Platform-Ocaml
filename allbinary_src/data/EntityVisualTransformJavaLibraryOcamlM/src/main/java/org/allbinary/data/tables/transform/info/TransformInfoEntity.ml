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
(* package org.allbinary.data.tables.transform.info *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import javax.servlet.jsp.PageContext *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontData *)
(* import org.allbinary.business.entry.EntryData *)
(* import org.allbinary.business.init.db.UserDbInitInfo *)
(* import org.allbinary.data.tree.dom.document.DomDocumentHelper *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.sql.AbSqlBean *)
(* import org.allbinary.logic.control.crypt.Encoder *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoData *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoFactoryInterface *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactoryBase *)
(* import org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactoryInterface *)

class transformInfoEntity ((transformInfoObjectConfigGeneratorFactoryInterface_arg : TransformInfoObjectConfigGeneratorFactoryInterface.transformInfoObjectConfigGeneratorFactoryInterface), (transformInfoObjectConfigAndManipulatorFactoryInterface_arg : TransformInfoObjectConfigAndManipulatorFactoryBase.transformInfoObjectConfigAndManipulatorFactoryBase), (transformInfoFactoryInterface_arg : TransformInfoFactoryInterface.transformInfoFactoryInterface)) =
  object (self)
    inherit AbSqlBean.abSqlBean ((Obj.obj (java_new "UserDbInitInfo" (Obj.repr ())))) as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable tableName : string = ""
    method tableName = tableName
    method set_tableName value' = tableName <- value'
    val mutable abeClientInformation : AbeClientInformationInterface.abeClientInformationInterface = (Obj.magic 0)
    method abeClientInformation = abeClientInformation
    method set_abeClientInformation value' = abeClientInformation <- value'
    val mutable transformInfoFactoryInterface : TransformInfoFactoryInterface.transformInfoFactoryInterface = (Obj.magic 0)
    method transformInfoFactoryInterface = transformInfoFactoryInterface
    method set_transformInfoFactoryInterface value' = transformInfoFactoryInterface <- value'
    val mutable transformInfoObjectConfigAndManipulatorFactoryInterface : TransformInfoObjectConfigAndManipulatorFactoryBase.transformInfoObjectConfigAndManipulatorFactoryBase = (Obj.magic 0)
    method transformInfoObjectConfigAndManipulatorFactoryInterface = transformInfoObjectConfigAndManipulatorFactoryInterface
    method set_transformInfoObjectConfigAndManipulatorFactoryInterface value' = transformInfoObjectConfigAndManipulatorFactoryInterface <- value'
    val mutable transformInfoObjectConfigGeneratorFactoryInterface : TransformInfoObjectConfigGeneratorFactoryInterface.transformInfoObjectConfigGeneratorFactoryInterface = (Obj.magic 0)
    method transformInfoObjectConfigGeneratorFactoryInterface = transformInfoObjectConfigGeneratorFactoryInterface
    method set_transformInfoObjectConfigGeneratorFactoryInterface value' = transformInfoObjectConfigGeneratorFactoryInterface <- value'
    
    

    method insert : 'any1. 'any1 -> unit = fun (values) ->
        let values = Obj.repr values in
        begin
        (try
            ignore (super#insert ((Obj.magic values)));
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#putF (commonStrings#sUCCESS, self, iNSERT))
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#fAILURE, self, iNSERT, e))
            end
        end)
        end [@@warning "-7-20"]
    

    method delete ((value : string)) : unit =
        begin
        (try
            ignore (super#deleteWhere ((TransformInfoData.getInstance ())#nAME, value));
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#putF (commonStrings#sUCCESS, self, commonStrings#delete))
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#fAILURE, self, commonStrings#delete, e))
            end
        end)
        end [@@warning "-7"]
    

    method get : 'any3. string * java_hash_map * 'any3 -> TransformInfoInterface.transformInfoInterface = fun ((name : string), (propertiesHashMap : java_hash_map), pageContext) ->
        let pageContext = Obj.repr pageContext in
        try
        begin
        let transformInfoData : TransformInfoData.transformInfoData ref = ref (((TransformInfoData.getInstance ()) :> TransformInfoData.transformInfoData)) in ();
        let keysAndValues : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        ignore (!keysAndValues#put (!transformInfoData#nAME, name));
        let hashMap : java_hash_map ref = ref (((super#getRow (!keysAndValues)) :> java_hash_map)) in ();
        if (!hashMap != (Obj.magic 0)) then begin
            let anyType : Obj.t ref = ref ((Obj.repr (!hashMap#get (!transformInfoData#oBJECTCONFIG)))) in ();
            if (!anyType != (Obj.magic 0)) then begin
                let string : string ref = ref ((Obj.magic !anyType)) in ();
                ignore (!hashMap#put (!transformInfoData#oBJECTCONFIG, (Obj.obj (java_new "String" (Obj.repr ((Obj.magic (java_call_static "Encoder.decode" (Obj.repr (!string))))))))))
            end;
            let objectData : Obj.t ref = ref ((Obj.repr (!hashMap#get (!transformInfoData#dATA)))) in ();
            if (!objectData != (Obj.magic 0)) then begin
                let string : string ref = ref ((Obj.magic !objectData)) in ();
                ignore (!hashMap#put (!transformInfoData#dATA, (Obj.obj (java_new "String" (Obj.repr ((Obj.magic (java_call_static "Encoder.decode" (Obj.repr (!string))))))))))
            end;
            raise (Java_return (Obj.repr ((transformInfoFactoryInterface#getInstance (!hashMap, propertiesHashMap, (Obj.magic pageContext))))))
        end else begin
            raise (Java_return (Obj.repr ((Obj.magic 0))))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method getObjectConfigs ((storeName : string)) : BasicArrayList.basicArrayList =
        begin
        let objectConfigVector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        let objectConfigColumnVector : BasicArrayList.basicArrayList ref = ref (((self#getColumnWhere ((TransformInfoData.getInstance ())#oBJECTCONFIG, (StoreFrontData.getInstance ())#nAME, storeName)) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((!objectConfigColumnVector#size ())) in ();
        for i = 0 to !size - 1 do
            let objectConfigString : string ref = ref ((Obj.magic (!objectConfigColumnVector#get (i)))) in ();
            objectConfigString := (Obj.obj (java_new "String" (Obj.repr ((Obj.magic (java_call_static "Encoder.decode" (Obj.repr (!objectConfigString))))))));
            ignore (!objectConfigVector#add ((transformInfoObjectConfigAndManipulatorFactoryInterface#getInstance (abeClientInformation, (Obj.magic self), (DomDocumentHelper.create (!objectConfigString))))))
        done;
        (!objectConfigVector :> BasicArrayList.basicArrayList)
        end [@@warning "-7"]
    

    method getNames ((storeName : string)) : BasicArrayList.basicArrayList =
        begin
        let viewNameVector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        let columnVector : BasicArrayList.basicArrayList ref = ref (((self#getColumnWhere ((TransformInfoData.getInstance ())#nAME, (StoreFrontData.getInstance ())#nAME, storeName)) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((!columnVector#size ())) in ();
        for i = 0 to !size - 1 do
            let viewNameString : string ref = ref ((Obj.magic (!columnVector#get (i)))) in ();
            ignore (!viewNameVector#add (!viewNameString))
        done;
        (!viewNameVector :> BasicArrayList.basicArrayList)
        end [@@warning "-7"]
    

    method createTableStatement () : string =
        begin
        let transformInfoData : TransformInfoData.transformInfoData ref = ref (((TransformInfoData.getInstance ()) :> TransformInfoData.transformInfoData)) in ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (sqlStrings#cREATE_TABLE));
        ignore (!stringBuffer#append (tableName));
        ignore (!stringBuffer#append (sqlStrings#sTART));
        ignore (!stringBuffer#append (!transformInfoData#nAME));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((StoreFrontData.getInstance ())#nAME));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append (!transformInfoData#oBJECTFILENAME));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append (!transformInfoData#oBJECT));
        ignore (!stringBuffer#append (sqlTypeStrings#bLOB_NOT_NULL));
        ignore (!stringBuffer#append (!transformInfoData#oBJECTCONFIGFILENAME));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append (!transformInfoData#oBJECTCONFIG));
        ignore (!stringBuffer#append (sqlTypeStrings#bLOB_NOT_NULL));
        ignore (!stringBuffer#append (!transformInfoData#tEMPLATEFILENAME));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append (!transformInfoData#tEMPLATE));
        ignore (!stringBuffer#append (sqlTypeStrings#bLOB_NOT_NULL));
        ignore (!stringBuffer#append (!transformInfoData#dATAFILENAME));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append (!transformInfoData#dATA));
        ignore (!stringBuffer#append (sqlTypeStrings#bLOB_NOT_NULL));
        ignore (!stringBuffer#append ((EntryData.getInstance ())#lASTMODIFIED));
        ignore (!stringBuffer#append ((EntryData.getInstance ())#tIMECREATED));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_BIG_INT_UNSIGNED_NOT_NULL));
        ignore (!stringBuffer#append (sqlStrings#pRIMARY_KEY));
        ignore (!stringBuffer#append (!transformInfoData#nAME));
        ignore (!stringBuffer#append (sqlStrings#eND));
        (java_string_of (Obj.repr !stringBuffer))
        end [@@warning "-7"]
    

    method createTable () : string =
        begin
        (super#createTable ((self#createTableStatement ())))
        end [@@warning "-7"]
    

    method update ((updatedValues : java_hash_map)) : unit =
        begin
        ignore (super#updateWhere ((TransformInfoData.getInstance ())#nAME, (Obj.magic (updatedValues#get ((TransformInfoData.getInstance ())#nAME))), updatedValues))
        end [@@warning "-7"]
    

    method dropTable () : string =
        begin
        (super#dropTable ())
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        tableName <- "transforminfo";
        abeClientInformation <- ((Obj.magic (java_call_static "ServiceClientInformationInterfaceFactory.getInstance" (Obj.repr ()))) :> AbeClientInformationInterface.abeClientInformationInterface);
        ();
        ();
        ();
        ();
        (* super(...) is the inherit clause *) ();
        ignore (self#setTableName (tableName));
        transformInfoObjectConfigGeneratorFactoryInterface <- transformInfoObjectConfigGeneratorFactoryInterface_arg;
        transformInfoObjectConfigAndManipulatorFactoryInterface <- transformInfoObjectConfigAndManipulatorFactoryInterface_arg;
        transformInfoFactoryInterface <- transformInfoFactoryInterface_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "TransformInfoEntity" (fun arguments -> Obj.repr (new transformInfoEntity (Obj.obj arguments)))


