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
(* import org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreFactory *)
(* import org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactory *)
(* import org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactory *)


let getInstance () : TransformInfoEntity.transformInfoEntity =
        begin
        ((TransformInfoEntityFactory.getInstance ((TransformInfoObjectConfigGeneratorFactory.getInstance ()), (Obj.magic (java_call_static "TransformInfoObjectConfigAndManipulatorFactory.getInstance" (Obj.repr ()))), (Obj.magic (java_call_static "TransformInfoHttpStoreFactory.getInstance" (Obj.repr ()))))) :> TransformInfoEntity.transformInfoEntity)
        end

let () = java_register_static "TransformInfoEntityBuilder.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class transformInfoEntityBuilder () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "TransformInfoEntityBuilder" (fun arguments -> Obj.repr (new transformInfoEntityBuilder (Obj.obj arguments)))


