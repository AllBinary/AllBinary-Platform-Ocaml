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
(* import java.util.HashMap *)
(* import javax.servlet.http.HttpServletRequest *)
(* import javax.servlet.jsp.PageContext *)
(* import org.allbinary.business.context.AbContext *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontData *)
(* import org.allbinary.globals.FREEBLISKET_PATH_GLOBALS *)
(* import org.allbinary.globals.URLGLOBALS *)
(* import org.allbinary.logic.communication.http.request.RequestParams *)
(* import org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.sql.AbSqlData *)
(* import org.allbinary.logic.io.path.AbPath *)
(* import org.allbinary.logic.string.StringValidationUtil *)
(* import org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfig *)

class transformInfoHttp (parentViewOfThisTransformInfoInterface) =
  object (self)
    inherit TransformInfo.transformInfo ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable abContext : AbContext.abContext = (Obj.magic 0)
    method abContext = abContext
    method set_abContext value' = abContext <- value'
    
    
    
    
    
    

    method set ((hashMap : java_hash_map)) : unit =
        begin
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
            ignore ((Obj.magic logUtil)#putF (("Properties HashMap: " ^ (java_string_of (Obj.repr hashMap))), self, "set()"))
        end;
        let transformInfoData : TransformInfoData.transformInfoData ref = ref (((TransformInfoData.getInstance ()) :> TransformInfoData.transformInfoData)) in ();
        ignore (self#setName ((Obj.magic (hashMap#get (!transformInfoData#nAME)))));
        ignore (self#setStoreName ((Obj.magic (hashMap#get ((StoreFrontData.getInstance ())#nAME)))));
        ignore (self#setObjectFile ((Obj.magic (hashMap#get (!transformInfoData#oBJECTFILENAME)))));
        ignore (self#setObject ((Obj.magic (hashMap#get (!transformInfoData#oBJECT)))));
        let stringValidationUtil : StringValidationUtil.stringValidationUtil ref = ref (((StringValidationUtil.getInstance ()) :> StringValidationUtil.stringValidationUtil)) in ();
        let objectConfigString : string ref = ref ((Obj.magic (hashMap#get (!transformInfoData#oBJECTCONFIG)))) in ();
        if (!stringValidationUtil#isValidRequired (!objectConfigString, 10, (AbSqlData.get_mAXBLOB ()))) then begin
            ignore (self#setObjectConfig (!objectConfigString))
        end else begin
            ignore (self#setObjectConfig ((java_string_of (Obj.repr (Obj.obj (java_new "TransformInfoObjectConfig" (Obj.repr (self))))))))
        end;
        if (not (!stringValidationUtil#isEmpty ((Obj.magic (hashMap#get (!transformInfoData#oBJECTCONFIGFILENAME)))))) then begin
            ignore (self#setObjectConfigFile ((Obj.magic (hashMap#get (!transformInfoData#oBJECTCONFIGFILENAME)))))
        end;
        ignore (self#setTemplateFile ((Obj.magic (hashMap#get (!transformInfoData#tEMPLATEFILENAME)))));
        ignore (self#setTemplate ((Obj.magic (hashMap#get (!transformInfoData#tEMPLATE)))));
        ignore (self#setDataFile ((Obj.magic (hashMap#get (!transformInfoData#dATAFILENAME)))));
        ignore (self#setData ((Obj.magic (hashMap#get (!transformInfoData#dATA)))));
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPERFACTORY)) then begin
            ignore ((Obj.magic logUtil)#putF ((self#log ()), self, "set()"))
        end
        end [@@warning "-7"]
    

    method getWeblisketSession () : WeblisketSessionInterface.weblisketSessionInterface =
        begin
        ((abContext#getWeblisketSession ()) :> WeblisketSessionInterface.weblisketSessionInterface)
        end [@@warning "-7"]
    

    method getPageContext : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((abContext#getPageContext ())))
        end [@@warning "-7"]
    

    method getPropertiesHashMap () : java_hash_map =
        begin
        ((abContext#getPropertiesHashMap ()) :> java_hash_map)
        end [@@warning "-7"]
    

    method getTemplateFilePath () : AbPath.abPath =
        begin
        ((new AbPath.abPath (((URLGLOBALS.getMainPath ()) + (FREEBLISKET_PATH_GLOBALS.getInstance ())#xSLPATH), (self#getTemplateFile ()))) :> AbPath.abPath)
        end [@@warning "-7"]
    

    method getObjectConfigFilePath () : AbPath.abPath =
        begin
        ((new AbPath.abPath (((URLGLOBALS.getMainPath ()) + (FREEBLISKET_PATH_GLOBALS.getInstance ())#xSLPATH), (self#getObjectConfigFile ()))) :> AbPath.abPath)
        end [@@warning "-7"]
    

    method getDataFilePath () : AbPath.abPath =
        begin
        ((new AbPath.abPath (((URLGLOBALS.getMainPath ()) + (FREEBLISKET_PATH_GLOBALS.getInstance ())#xSLPATH), (self#getDataFile ()))) :> AbPath.abPath)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        (* super(...) is the inherit clause *) ();
        abContext <- (new AbContext.abContext ((parentViewOfThisTransformInfoInterface#getPropertiesHashMap ()), (parentViewOfThisTransformInfoInterface#getPageContext ())))
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "TransformInfoHttp" (fun arguments -> Obj.repr (new transformInfoHttp (Obj.obj arguments)))


