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
(* package org.allbinary.data.tree.category *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.business.category.CategoryFactoryInterface *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)


let getInstance : 'any1. 'any1 -> CategoryLoaderInterface.categoryLoaderInterface = fun (categoryFactoryInterface) ->
        let categoryFactoryInterface = Obj.repr categoryFactoryInterface in
        begin
        let logUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
        (try
            ((new CategoryLoader.categoryLoader ((Obj.magic categoryFactoryInterface))) :> CategoryLoaderInterface.categoryLoaderInterface)
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#eNTITYFACTORYERROR)) then begin
                ignore ((Obj.magic !logUtil)#put (!commonStrings#eXCEPTION, "CategoryNodeFactory", !commonStrings#gET_INSTANCE, e))
            end;
            ((Obj.magic 0) :> CategoryLoaderInterface.categoryLoaderInterface)
        end)
        end [@@warning "-20"]

let () = java_register_static "CategoryLoaderFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class categoryLoaderFactory () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "CategoryLoaderFactory" (fun arguments -> Obj.repr (new categoryLoaderFactory (Obj.obj arguments)))


