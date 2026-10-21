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
(* import java.util.HashMap *)
(* import org.allbinary.business.category.properties.CategoryPropertiesFactory *)
(* import org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.io.path.AbPath *)
(* import org.allbinary.string.CommonStrings *)
(* import org.w3c.dom.Node *)

class categoryAbstractFactory () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    
    

    method getRootInstance () : CategoryInterface.categoryInterface =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    (* Java overload getRootInstance(AbPath) is not converted: OCaml has one method per name *)
    

    method getRootInstanceFromNode : 'any1. 'any1 -> CategoryInterface.categoryInterface = fun (_node) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-20"]
    

    method getInstance ((categoryName : string)) : CategoryInterface.categoryInterface =
        begin
        (try
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#cATEGORY)) then begin
                ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, "getInstance(String)"))
            end;
            let categoryPropertiesFactoryInterface : CategoryPropertiesFactoryInterface.categoryPropertiesFactoryInterface ref = ref (((Obj.magic (new CategoryPropertiesFactory.categoryPropertiesFactory (categoryName))) :> CategoryPropertiesFactoryInterface.categoryPropertiesFactoryInterface)) in ();
            ((Obj.magic (Obj.obj (java_new "Category" (Obj.repr (!categoryPropertiesFactoryInterface))))) :> CategoryInterface.categoryInterface)
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#eNTITYFACTORYERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "getInstance(String, int)", e))
            end;
            ((Obj.magic 0) :> CategoryInterface.categoryInterface)
        end)
        end
    

    (* Java overload getInstance(CategoryInterface, CategoryInterface, String) is not converted: OCaml has one method per name *)
    

    (* Java overload getInstance(Node) is not converted: OCaml has one method per name *)
    

    (* Java overload getInstance(CategoryInterface, CategoryInterface, Node) is not converted: OCaml has one method per name *)
    

    (* Java overload getInstance(CategoryInterface, CategoryInterface, HashMap) is not converted: OCaml has one method per name *)

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "CategoryAbstractFactory" (fun arguments -> Obj.repr (new categoryAbstractFactory (Obj.obj arguments)))


