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
(* import javax.servlet.jsp.PageContext *)
(* import org.allbinary.globals.FREEBLISKET_PATH_GLOBALS *)
(* import org.allbinary.globals.URLGLOBALS *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.io.path.AbPath *)
(* import org.allbinary.logic.io.path.AbPathData *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)

class transformInfoHttpContext ((propertiesHashMap : java_hash_map), pageContext) =
  object (self)
    inherit TransformInfoHttp.transformInfoHttp (propertiesHashMap, pageContext)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    
    

    method getPath () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ((URLGLOBALS.getMainPath ())));
        ignore (!stringBuffer#append ((FREEBLISKET_PATH_GLOBALS.getInstance ())#xSLPATH));
        ignore (!stringBuffer#append ((FREEBLISKET_PATH_GLOBALS.getInstance ())#iNSTALLPATH));
        ignore (!stringBuffer#append ((self#getStoreName ())));
        ignore (!stringBuffer#append ((Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#sEPARATOR));
        (java_string_of (Obj.repr !stringBuffer))
        end [@@warning "-7"]
    

    method getTemplateFilePath () : AbPath.abPath =
        begin
        ((new AbPath.abPath ((self#getPath ()), (self#getTemplateFile ()))) :> AbPath.abPath)
        end [@@warning "-7"]
    

    method getObjectConfigFilePath () : AbPath.abPath =
        begin
        ((new AbPath.abPath ((self#getPath ()), (self#getObjectConfigFile ()))) :> AbPath.abPath)
        end [@@warning "-7"]
    

    method getDataFilePath () : AbPath.abPath =
        begin
        ((new AbPath.abPath ((self#getPath ()), (self#getDataFile ()))) :> AbPath.abPath)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        (* super(...) is the inherit clause *) ();
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
            ignore ((Obj.magic logUtil)#putF (("Properties HashMap: " ^ (java_string_of (Obj.repr propertiesHashMap))), self, (self#commonStrings)#cONSTRUCTOR))
        end;
        ignore (self#setStoreName ((StringUtil.getInstance ())#eMPTY_STRING))
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "TransformInfoHttpContext" (fun arguments -> Obj.repr (new transformInfoHttpContext (Obj.obj arguments)))


