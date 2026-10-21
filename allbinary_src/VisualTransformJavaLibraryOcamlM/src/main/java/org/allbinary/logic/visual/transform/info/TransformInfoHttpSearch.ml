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
(* import org.allbinary.globals.FREEBLISKET_PATH_GLOBALS *)
(* import org.allbinary.globals.URLGLOBALS *)
(* import org.allbinary.logic.control.search.SearchRequest *)
(* import org.allbinary.logic.io.path.AbPath *)
(* import org.allbinary.logic.io.path.AbPathData *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)

class transformInfoHttpSearch ((searchRequest : SearchRequest.searchRequest)) =
  object (self)
    inherit TransformInfoHttp.transformInfoHttp ((searchRequest#getPropertiesHashMap ()), (searchRequest#getPageContext ()))
    
    

    method getPath () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ((URLGLOBALS.getMainPath ())));
        ignore (!stringBuffer#append ((FREEBLISKET_PATH_GLOBALS.getInstance ())#xSLPATH));
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
        ();
        (* super(...) is the inherit clause *) ();
        if (((searchRequest#getStoreFront ())#getName ()) <> (Obj.magic 0)) then begin
            ignore (self#setStoreName (((searchRequest#getStoreFront ())#getName ())))
        end else begin
            ignore (self#setStoreName ((StringUtil.getInstance ())#eMPTY_STRING))
        end;
        let dataFileName : string ref = ref ((searchRequest#getXslFile ())) in ();
        ignore (self#setTemplateFile (!dataFileName))
      end
  end
let () = java_register_constructor "TransformInfoHttpSearch" (fun arguments -> Obj.repr (new transformInfoHttpSearch (Obj.obj arguments)))


