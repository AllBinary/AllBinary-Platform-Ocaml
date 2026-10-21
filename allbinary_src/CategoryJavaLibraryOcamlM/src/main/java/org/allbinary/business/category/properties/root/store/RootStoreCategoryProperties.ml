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
(* package org.allbinary.business.category.properties.root.store *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import javax.servlet.http.HttpServletRequest *)
(* import org.allbinary.business.category.CategoryData *)
(* import org.allbinary.business.category.CategoryUtil *)
(* import org.allbinary.business.category.hierarchy.CategoryHierarchyInterface *)
(* import org.allbinary.business.category.properties.CategoryPropertiesInterface *)
(* import org.allbinary.business.category.properties.root.RootCategoryPropertiesInterface *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontFactory *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontInterface *)
(* import org.allbinary.globals.URLGLOBALS *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.io.path.AbPath *)
(* import org.allbinary.logic.io.path.AbPathData *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.string.StringValidationUtil *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class rootStoreCategoryProperties ((transformInfoInterface_arg : TransformInfoInterface.transformInfoInterface)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable pathData : Obj.t = Obj.repr 0
    method pathData : 'r. 'r = Obj.magic pathData
    method set_pathData : 'v. 'v -> unit = fun value' -> pathData <- Obj.repr value'
    val mutable fileAbPath : AbPath.abPath = (Obj.magic 0)
    method fileAbPath = fileAbPath
    method set_fileAbPath value' = fileAbPath <- value'
    val mutable abPath : AbPath.abPath = (Obj.magic 0)
    method abPath = abPath
    method set_abPath value' = abPath <- value'
    val mutable category : string = ""
    method category = category
    method set_category value' = category <- value'
    val mutable isRealRoot : bool = false
    method isRealRoot = isRealRoot
    method set_isRealRoot value' = isRealRoot <- value'
    val mutable webAppAbPath : AbPath.abPath = (Obj.magic 0)
    method webAppAbPath = webAppAbPath
    method set_webAppAbPath value' = webAppAbPath <- value'
    val mutable transformInfoInterface : TransformInfoInterface.transformInfoInterface = (Obj.magic 0)
    method transformInfoInterface = transformInfoInterface
    method set_transformInfoInterface value' = transformInfoInterface <- value'
    
    
    
    
    

    method initPath () : unit =
        begin
        let transformInfoHttpStoreInterface : TransformInfoHttpInterface.transformInfoHttpInterface ref = ref (((Obj.magic transformInfoInterface) :> TransformInfoHttpInterface.transformInfoHttpInterface)) in ();
        let storeFrontInterface : StoreFrontInterface.storeFrontInterface ref = ref (((StoreFrontFactory.getInstance ((!transformInfoHttpStoreInterface#getStoreName ()))) :> StoreFrontInterface.storeFrontInterface)) in ();
        let postPath : string ref = ref (((!storeFrontInterface#getCurrentHostNamePath ()) + (!storeFrontInterface#getCategoryPath ()))) in ();
        let httpServletRequest : Obj.t ref = ref ((Obj.repr (Obj.magic ((!transformInfoHttpStoreInterface#getPageContext ())#getRequest ())))) in ();
        webAppAbPath <- (new AbPath.abPath ((java_string_of (Obj.repr (((Obj.magic !httpServletRequest)#getContextPath ()))) ^ !postPath), (StringUtil.getInstance ())#eMPTY_STRING));
        (self#setRootFilePath ((new AbPath.abPath ((java_string_of (Obj.repr ((URLGLOBALS.getMainPath ()))) ^ !postPath), (StringUtil.getInstance ())#eMPTY_STRING))))
        end
    

    method isRealRoot () : bool =
        begin
        isRealRoot
        end
    

    method isRoot () : bool =
        begin
        true
        end
    

    method getKey () : Obj.t =
        begin
        (Obj.repr ((Obj.magic (self#getValue ()))))
        end
    

    method setPath : 'any1. 'any1 -> unit = fun (path) ->
        let path = Obj.repr path in
        begin
        abPath <- (Obj.magic path)
        end [@@warning "-20"]
    

    method setRootFilePath : 'any1. 'any1 -> unit = fun (value) ->
        let value = Obj.repr value in
        begin
        fileAbPath <- (Obj.magic value)
        end [@@warning "-20"]
    

    method getRootFilePath () : AbPath.abPath =
        begin
        (fileAbPath :> AbPath.abPath)
        end
    

    method getValue () : string =
        begin
        category
        end
    

    method getWebAppPath () : AbPath.abPath =
        begin
        (webAppAbPath :> AbPath.abPath)
        end
    

    method getPath : 'any1. 'any1 -> AbPath.abPath = fun (_categoryHierarchyInterface) ->
        begin
        (abPath :> AbPath.abPath)
        end [@@warning "-20"]
    

    method getFileName () : string =
        begin
        (((self#getValue ()) + (Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#eXTENSION_SEP) + (CategoryData.getInstance ())#uNCRYPTED_EXTENSION)
        end
    

    method setValue ((value : string)) : unit =
        begin
        category <- value
        end
    

    method isValid () : bool =
        begin
        true
        end
    

    method toHashMap () : java_hash_map =
        begin
        let categoryHashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        ignore (!categoryHashMap#put ((CategoryData.getInstance ())#nAME, (self#getValue ())));
        (!categoryHashMap :> java_hash_map)
        end
    

    method toVector () : BasicArrayList.basicArrayList =
        begin
        let categoryVector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        ignore (!categoryVector#add ((self#getValue ())));
        (!categoryVector :> BasicArrayList.basicArrayList)
        end
    

    method toValidationInfoDoc : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic 0)))
        end
    

    method toValidationInfoNode : 'any1 'return. 'any1 -> 'return = fun (_document) ->
        begin
        (Obj.magic ((Obj.magic 0)))
        end [@@warning "-20"]
    

    method validationInfo () : string =
        begin
        (Obj.magic 0)
        end
    

    method log () : unit =
        begin
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#cATEGORY)) then begin
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((((((new StringMaker.stringMaker ())#append ("filePath = "))#append ((java_string_of (Obj.repr fileAbPath))))#append ("\npath = "))#append ((java_string_of (Obj.repr abPath))))#append ("\ncategory = "))#append (category)))), self, "log()"))
        end
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        pathData <- (Obj.repr (Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ()))));
        fileAbPath <- ((Obj.magic 0) :> AbPath.abPath);
        ();
        ();
        ();
        webAppAbPath <- ((Obj.magic 0) :> AbPath.abPath);
        ();
        ();
        transformInfoInterface <- transformInfoInterface_arg;
        abPath <- (AbPath.createAbPath ());
        category <- (CategoryData.getInstance ())#rOOTCATEGORY;
        isRealRoot <- true;
        (self#initPath ());
        (self#log ())
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "RootStoreCategoryProperties" (fun arguments -> Obj.repr (new rootStoreCategoryProperties (Obj.obj arguments)))


