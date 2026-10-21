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
(* package org.allbinary.business.category.properties.root *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.category.CategoryData *)
(* import org.allbinary.business.category.hierarchy.CategoryHierarchyInterface *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.io.path.AbPath *)
(* import org.allbinary.logic.io.path.AbPathData *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class rootCategoryPropertiesAbstract () =
  object (self)
    val mutable category : string = ""
    method category = category
    method set_category value' = category <- value'
    val mutable fileName : string = ""
    method fileName = fileName
    method set_fileName value' = fileName <- value'
    
    

    method getKey () : Obj.t =
        begin
        (Obj.repr ((Obj.magic (self#getValue ()))))
        end
    

    method getValue () : string =
        begin
        category
        end
    

    method setValue ((_value : string)) : unit =
        begin
        raise (Failure ("No Value Allowed"))
        end
    

    method setRootFilePath : 'any1. 'any1 -> unit = fun (_value) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-20"]
    

    (* Java overload setRootFilePath(String) is not converted: OCaml has one method per name *)
    

    method getRootFilePath () : AbPath.abPath =
        begin
        raise (Failure ("No Value Allowed"))
        end
    

    method isRealRoot () : bool =
        begin
        raise (Failure ("No A Real Root"))
        end
    

    method isRoot () : bool =
        begin
        raise (Failure ("Root but not implemented"))
        end
    

    method getWebAppPath : 'any1. 'any1 -> string = fun (_categoryHierarchyInterface) ->
        begin
        raise (Failure ("Not Root"))
        end [@@warning "-20"]
    

    method getPath : 'any1. 'any1 -> AbPath.abPath = fun (_categoryHierarchyInterface) ->
        begin
        ((AbPath.createAbPath ()) :> AbPath.abPath)
        end [@@warning "-20"]
    

    method getFileName () : string =
        begin
        fileName
        end
    

    method isValid () : bool =
        begin
        true
        end
    

    method toHashMap () : java_hash_map =
        begin
        let categoryHashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        ignore (!categoryHashMap#put ((CategoryData.getInstance ())#nAME, category));
        (!categoryHashMap :> java_hash_map)
        end
    

    method toVector () : BasicArrayList.basicArrayList =
        begin
        let categoryVector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        ignore (!categoryVector#add (category));
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

    initializer
      begin
        category <- (CategoryData.getInstance ())#rOOTCATEGORY;
        fileName <- ((category ^ java_string_of (Obj.repr ((Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#eXTENSION_SEP))) ^ java_string_of (Obj.repr ((CategoryData.getInstance ())#uNCRYPTED_EXTENSION)));
        ();
        ()
      end
  end
let () = java_register_constructor "RootCategoryPropertiesAbstract" (fun arguments -> Obj.repr (new rootCategoryPropertiesAbstract (Obj.obj arguments)))


