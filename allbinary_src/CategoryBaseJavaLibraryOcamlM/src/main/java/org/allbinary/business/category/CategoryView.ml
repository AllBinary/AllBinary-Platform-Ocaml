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
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.category.properties.CategoryPropertiesInterface *)
(* import org.allbinary.business.category.properties.CategoryPropertiesView *)
(* import org.allbinary.data.tree.dom.DomNodeInterface *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.java.anyType.InterfaceUtil *)
(* import org.allbinary.string.CommonSeps *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class categoryView ((categoryInterface_arg : CategoryInterface.categoryInterface)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable categoryInterface : CategoryInterface.categoryInterface = (Obj.magic 0)
    method categoryInterface = categoryInterface
    method set_categoryInterface value' = categoryInterface <- value'
    
    

    method getCategoryInterface () : CategoryInterface.categoryInterface =
        begin
        (categoryInterface :> CategoryInterface.categoryInterface)
        end
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        let node : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createElement ((CategoryData.getInstance ())#nAME)))) in ();
        let childCategoryVector : BasicArrayList.basicArrayList ref = ref (((categoryInterface#getChildNodes ()) :> BasicArrayList.basicArrayList)) in ();
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#cATEGORY)) then begin
            ignore ((Obj.magic logUtil)#putF (("Number Of Children: " ^ java_string_of (Obj.repr ((!childCategoryVector#size ())))), self, "toXmlNode"))
        end;
        let size : int ref = ref ((!childCategoryVector#size ())) in ();
        for i = 0 to !size - 1 do
            let anyType : Obj.t ref = ref ((Obj.repr (!childCategoryVector#get (i)))) in ();
            let categoryPropertiesInterface : CategoryPropertiesInterface.categoryPropertiesInterface ref = ref (((Obj.magic 0) :> CategoryPropertiesInterface.categoryPropertiesInterface)) in ();
            if (InterfaceUtil.isImplemented ("CategoryPropertiesInterface", !anyType)) then begin
                categoryPropertiesInterface := (Obj.magic !anyType)
            end else if (InterfaceUtil.isImplemented ("CategoryInterface", !anyType)) then begin
                let categoryInterface_arg : CategoryInterface.categoryInterface ref = ref (((Obj.magic !anyType) :> CategoryInterface.categoryInterface)) in ();
                categoryPropertiesInterface := (!categoryInterface_arg#getProperties ())
            end else begin
                let isImpl : string ref = ref ((InterfaceUtil.viewAll ((java_get_class (Obj.repr !anyType)), (CommonSeps.getInstance ())#nEW_LINE))) in ();
                raise (Failure ((("CategoryView found unknown object.\n" ^ "Show Testing:") ^ !isImpl)))
            end;
            let childCategoryNode : Obj.t ref = ref ((Obj.repr ((new CategoryPropertiesView.categoryPropertiesView (!categoryPropertiesInterface))#toXmlNode ((Obj.magic document))))) in ();
            ignore ((Obj.magic !node)#appendChild ((Obj.magic !childCategoryNode)))
        done;
        (Obj.magic ((Obj.magic !node)))
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        categoryInterface <- categoryInterface_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "CategoryView" (fun arguments -> Obj.repr (new categoryView (Obj.obj arguments)))


