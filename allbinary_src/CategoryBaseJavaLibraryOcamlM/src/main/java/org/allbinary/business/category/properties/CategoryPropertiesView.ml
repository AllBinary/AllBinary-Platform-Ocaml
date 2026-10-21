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
(* package org.allbinary.business.category.properties *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.business.category.CategoryData *)
(* import org.allbinary.data.tree.dom.DomNodeInterface *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Element *)
(* import org.w3c.dom.Node *)

class categoryPropertiesView ((categoryPropertiesInterface_arg : CategoryPropertiesInterface.categoryPropertiesInterface)) =
  object
    val mutable categoryPropertiesInterface : CategoryPropertiesInterface.categoryPropertiesInterface = (Obj.magic 0)
    method categoryPropertiesInterface = categoryPropertiesInterface
    method set_categoryPropertiesInterface value' = categoryPropertiesInterface <- value'
    
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        let categoryNode : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createElement ((CategoryData.getInstance ())#nAME)))) in ();
        let newCategoryNode : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic !categoryNode)))) in ();
        ignore ((Obj.magic !newCategoryNode)#setAttribute ((CategoryData.getInstance ())#lABEL, (categoryPropertiesInterface#getValue ())));
        (Obj.magic ((Obj.magic !categoryNode)))
        end [@@warning "-20"]

    initializer
      begin
        ();
        ();
        categoryPropertiesInterface <- categoryPropertiesInterface_arg
      end
  end
let () = java_register_constructor "CategoryPropertiesView" (fun arguments -> Obj.repr (new categoryPropertiesView (Obj.obj arguments)))


