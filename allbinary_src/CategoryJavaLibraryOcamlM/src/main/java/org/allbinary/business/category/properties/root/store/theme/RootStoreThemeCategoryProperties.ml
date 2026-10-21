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
(* package org.allbinary.business.category.properties.root.store.theme *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import javax.servlet.http.HttpServletRequest *)
(* import org.allbinary.business.category.properties.root.store.RootStoreCategoryProperties *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontFactory *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontInterface *)
(* import org.allbinary.globals.FREEBLISKET_PATH_GLOBALS *)
(* import org.allbinary.globals.URLGLOBALS *)
(* import org.allbinary.logic.io.path.AbPath *)
(* import org.allbinary.logic.io.path.AbPathData *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreInterface *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.w3c.dom.Node *)

class rootStoreThemeCategoryProperties ((transformInfoInterface : TransformInfoInterface.transformInfoInterface)) =
  object (self)
    inherit RootStoreCategoryProperties.rootStoreCategoryProperties (transformInfoInterface)
    
    
    
    
    

    method initPath () : unit =
        begin
        let transformInfoHttpStoreInterface : TransformInfoHttpStoreInterface.transformInfoHttpStoreInterface ref = ref (((Obj.magic transformInfoInterface) :> TransformInfoHttpStoreInterface.transformInfoHttpStoreInterface)) in ();
        let storeFrontInterface : StoreFrontInterface.storeFrontInterface ref = ref (((StoreFrontFactory.getInstance ((!transformInfoHttpStoreInterface#getStoreName ()))) :> StoreFrontInterface.storeFrontInterface)) in ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ((Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#sEPARATOR));
        ignore (!stringBuffer#append ((FREEBLISKET_PATH_GLOBALS.getInstance ())#xSLPATH));
        ignore (!stringBuffer#append ((!storeFrontInterface#getName ())));
        ignore (!stringBuffer#append ((Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#sEPARATOR));
        ignore (!stringBuffer#append ((FREEBLISKET_PATH_GLOBALS.getInstance ())#tHEMEPATH));
        let abPath : AbPath.abPath ref = ref (((new AbPath.abPath ((java_string_of (Obj.repr !stringBuffer)), (StringUtil.getInstance ())#eMPTY_STRING)) :> AbPath.abPath)) in ();
        let httpServletRequest : Obj.t ref = ref ((Obj.repr (Obj.magic ((!transformInfoHttpStoreInterface#getPageContext ())#getRequest ())))) in ();
        webAppAbPath <- (new AbPath.abPath ((java_string_of (Obj.repr (((Obj.magic !httpServletRequest)#getContextPath ()))) ^ (java_string_of (Obj.repr !abPath))), (StringUtil.getInstance ())#eMPTY_STRING));
        ignore (self#setRootFilePath ((new AbPath.abPath ((java_string_of (Obj.repr ((URLGLOBALS.getMainPath ()))) ^ (java_string_of (Obj.repr !abPath))), (StringUtil.getInstance ())#eMPTY_STRING))))
        end [@@warning "-7"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "RootStoreThemeCategoryProperties" (fun arguments -> Obj.repr (new rootStoreThemeCategoryProperties (Obj.obj arguments)))


