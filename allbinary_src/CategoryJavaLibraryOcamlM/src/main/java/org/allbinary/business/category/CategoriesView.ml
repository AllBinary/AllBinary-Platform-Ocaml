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
(* package org.allbinary.business.category *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.data.tree.dom.DomNodeInterface *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class categoriesView ((categoryInterface_arg : CategoryInterface.categoryInterface)) =
  object
    val mutable categoryInterface : CategoryInterface.categoryInterface = (Obj.magic 0)
    method categoryInterface = categoryInterface
    method set_categoryInterface value' = categoryInterface <- value'
    
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        let node : Obj.t ref = ref ((Obj.repr ((new CategoryView.categoryView (categoryInterface))#toXmlNode ((Obj.magic document))))) in ();
        let childArray : Obj.t array ref = ref (((categoryInterface#getChildNodes ())#toArray ())) in ();
        let size : int ref = ref ((Array.length !childArray)) in ();
        for i = 0 to !size - 1 do
            let childCategoryInterface : CategoryInterface.categoryInterface ref = ref (((Obj.magic !childArray.(i)) :> CategoryInterface.categoryInterface)) in ();
            let childCategoryNode : Obj.t ref = ref ((Obj.repr ((new categoriesView (!childCategoryInterface))#toXmlNode ((Obj.magic document))))) in ();
            ignore ((Obj.magic !node)#appendChild ((Obj.magic !childCategoryNode)))
        done;
        (Obj.magic ((Obj.magic !node)))
        end [@@warning "-20"]

    initializer
      begin
        ();
        ();
        categoryInterface <- categoryInterface_arg
      end
  end
let () = java_register_constructor "CategoriesView" (fun arguments -> Obj.repr (new categoriesView (Obj.obj arguments)))


