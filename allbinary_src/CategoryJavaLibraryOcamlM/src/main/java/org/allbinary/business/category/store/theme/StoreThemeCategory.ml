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
(* package org.allbinary.business.category.store.theme *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.category.Category *)
(* import org.allbinary.business.category.CategoryInterface *)
(* import org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface *)
(* import org.allbinary.data.tree.dom.DomSearchHelper *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.visual.theme.ThemeData *)
(* import org.allbinary.logic.visual.theme.ThemeValidation *)
(* import org.allbinary.logic.visual.theme.ThemesData *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.w3c.dom.Node *)
(* import org.w3c.dom.NodeList *)

class storeThemeCategory ((transformInfoInterface_arg : TransformInfoInterface.transformInfoInterface), (categoryPropertiesFactoryInterface : CategoryPropertiesFactoryInterface.categoryPropertiesFactoryInterface), (level : int)) =
  object (self)
    inherit Category.category (categoryPropertiesFactoryInterface, level) as super
    val mutable transformInfoInterface : TransformInfoInterface.transformInfoInterface = (Obj.magic 0)
    method transformInfoInterface = transformInfoInterface
    method set_transformInfoInterface value' = transformInfoInterface <- value'
    val mutable themeVector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method themeVector = themeVector
    method set_themeVector value' = themeVector <- value'
    
    
    
    
    

    method getTransformInfoInterface () : TransformInfoInterface.transformInfoInterface =
        begin
        (transformInfoInterface :> TransformInfoInterface.transformInfoInterface)
        end [@@warning "-7"]
    

    method addThemes : 'any1. 'any1 -> unit = fun (node) ->
        let node = Obj.repr node in
        begin
        let themesNode : Obj.t ref = ref ((Obj.repr (DomSearchHelper.getNode ((ThemesData.getInstance ())#nAME, ((Obj.magic node)#getChildNodes ()))))) in ();
        let nodeList : Obj.t ref = ref ((Obj.repr ((Obj.magic !themesNode)#getChildNodes ()))) in ();
        for index = 0 to ((Obj.magic !nodeList)#getLength ()) - 1 do
            let themeNode : Obj.t ref = ref ((Obj.repr ((Obj.magic !nodeList)#item (index)))) in ();
            if ((((Obj.magic !themeNode)#getNodeName ())#compareTo ((ThemeData.getInstance ())#nAME)) == 0) then begin
                ignore (themeVector#add ((Obj.obj (java_new "ThemeValidation" (Obj.repr (self, (Obj.magic !themeNode)))))))
            end
        done
        end [@@warning "-7-20"]
    

    method addTheme : 'any1. 'any1 -> unit = fun (themeValidation) ->
        let themeValidation = Obj.repr themeValidation in
        begin
        ignore (themeVector#add ((Obj.magic themeValidation)))
        end [@@warning "-7-20"]
    

    method getThemes () : BasicArrayList.basicArrayList =
        begin
        (themeVector :> BasicArrayList.basicArrayList)
        end [@@warning "-7"]
    

    method isValid () : bool =
        try
        begin
        if (not ((super#isValid ())#booleanValue ())) then begin
            raise (Java_return (Obj.repr (false)))
        end;
        true
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method toHashMap () : java_hash_map =
        begin
        let categoryHashMap : java_hash_map ref = ref (((super#toHashMap ()) :> java_hash_map)) in ();
        ignore (!categoryHashMap#put ((ThemesData.getInstance ())#nAME, themeVector));
        (!categoryHashMap :> java_hash_map)
        end [@@warning "-7"]
    

    method toVector () : BasicArrayList.basicArrayList =
        begin
        let categoryVector : BasicArrayList.basicArrayList ref = ref (((super#toVector ()) :> BasicArrayList.basicArrayList)) in ();
        (!categoryVector :> BasicArrayList.basicArrayList)
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        ();
        (* super(...) is the inherit clause *) ();
        transformInfoInterface <- transformInfoInterface_arg;
        themeVector <- (new BasicArrayListD.basicArrayListD ())
      end
  end
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "StoreThemeCategory" (fun arguments -> Obj.repr (new storeThemeCategory (Obj.obj arguments)))


