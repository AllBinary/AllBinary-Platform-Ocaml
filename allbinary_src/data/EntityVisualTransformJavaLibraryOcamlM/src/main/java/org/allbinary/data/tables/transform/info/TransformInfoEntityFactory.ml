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
(* package org.allbinary.data.tables.transform.info *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoFactoryInterface *)
(* import org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactoryBase *)
(* import org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactoryInterface *)
(* import org.allbinary.string.CommonStrings *)


let getInstance : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 -> TransformInfoEntity.transformInfoEntity = fun (transformInfoObjectConfigGeneratorFactoryInterface, transformInfoObjectConfigAndManipulatorFactoryInterface, transformInfoFactoryInterface) ->
        let transformInfoObjectConfigGeneratorFactoryInterface = Obj.repr transformInfoObjectConfigGeneratorFactoryInterface in
        let transformInfoObjectConfigAndManipulatorFactoryInterface = Obj.repr transformInfoObjectConfigAndManipulatorFactoryInterface in
        let transformInfoFactoryInterface = Obj.repr transformInfoFactoryInterface in
        begin
        let logUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
        (try
            ((new TransformInfoEntity.transformInfoEntity ((Obj.magic transformInfoObjectConfigGeneratorFactoryInterface), (Obj.magic transformInfoObjectConfigAndManipulatorFactoryInterface), (Obj.magic transformInfoFactoryInterface))) :> TransformInfoEntity.transformInfoEntity)
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#eNTITYFACTORYERROR)) then begin
                ignore ((Obj.magic !logUtil)#put (!commonStrings#eXCEPTION, "TransformInfoEntityFactory", !commonStrings#gET_INSTANCE, e))
            end;
            ((Obj.magic 0) :> TransformInfoEntity.transformInfoEntity)
        end)
        end [@@warning "-20"]

let () = java_register_static "TransformInfoEntityFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class transformInfoEntityFactory () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "TransformInfoEntityFactory" (fun arguments -> Obj.repr (new transformInfoEntityFactory (Obj.obj arguments)))


