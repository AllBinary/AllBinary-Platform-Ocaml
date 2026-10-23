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
(* package org.allbinary.business.category.store *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.business.category.Category *)
(* import org.allbinary.business.category.CategoryAbstractFactory *)
(* import org.allbinary.business.category.CategoryFactoryInterface *)
(* import org.allbinary.business.category.CategoryInterface *)
(* import org.allbinary.business.category.CategoryUtil *)
(* import org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface *)
(* import org.allbinary.business.category.properties.root.store.RootStoreCategoryPropertiesFactory *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.io.path.AbPath *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.w3c.dom.Node *)

class storeCategoryFactory ((transformInfoInterface_arg : TransformInfoInterface.transformInfoInterface)) =
  object (self)
    inherit CategoryAbstractFactory.categoryAbstractFactory ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable transformInfoInterface : TransformInfoInterface.transformInfoInterface = (Obj.magic 0)
    method transformInfoInterface = transformInfoInterface
    method set_transformInfoInterface value' = transformInfoInterface <- value'
    
    

    method getRootInstance () : CategoryInterface.categoryInterface =
        begin
        (try
            let categoryPropertiesFactoryInterface : CategoryPropertiesFactoryInterface.categoryPropertiesFactoryInterface ref = ref (((Obj.magic (new RootStoreCategoryPropertiesFactory.rootStoreCategoryPropertiesFactory (transformInfoInterface))) :> CategoryPropertiesFactoryInterface.categoryPropertiesFactoryInterface)) in ();
            ((Obj.magic (Obj.obj (java_new "Category" (Obj.repr (!categoryPropertiesFactoryInterface))))) :> CategoryInterface.categoryInterface)
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#eNTITYFACTORYERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "getInstance(String, int)", e))
            end;
            ((Obj.magic 0) :> CategoryInterface.categoryInterface)
        end)
        end [@@warning "-7"]
    

    (* Java overload getRootInstance(AbPath) is not converted: OCaml has one method per name *)
    

    method getRootInstanceFromNode : 'any1. 'any1 -> CategoryInterface.categoryInterface = fun (node) ->
        let node = Obj.repr node in
        begin
        (try
            let categoryPropertiesFactoryInterface : CategoryPropertiesFactoryInterface.categoryPropertiesFactoryInterface ref = ref (((Obj.magic (new RootStoreCategoryPropertiesFactory.rootStoreCategoryPropertiesFactory (transformInfoInterface, (Obj.magic node)))) :> CategoryPropertiesFactoryInterface.categoryPropertiesFactoryInterface)) in ();
            let categoryPath : AbPath.abPath ref = ref (((new AbPath.abPath ((CategoryUtil.getNameFromNode ((Obj.magic node))), (StringUtil.getInstance ())#eMPTY_STRING)) :> AbPath.abPath)) in ();
            let level : int ref = ref ((CategoryUtil.getPathLevel (!categoryPath))) in ();
            ((Obj.magic (Obj.obj (java_new "Category" (Obj.repr (!categoryPropertiesFactoryInterface, !level))))) :> CategoryInterface.categoryInterface)
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#eNTITYFACTORYERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "getInstance(String, int)", e))
            end;
            ((Obj.magic 0) :> CategoryInterface.categoryInterface)
        end)
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#cATEGORY)) then begin
            ignore ((Obj.magic logUtil)#putF ((self#commonStrings)#sTART, self, "StoreCategoryFactory(TransformInfoInterface transformInfoInterface)"))
        end;
        transformInfoInterface <- transformInfoInterface_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "StoreCategoryFactory" (fun arguments -> Obj.repr (new storeCategoryFactory (Obj.obj arguments)))


