(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2002 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.data.tables.generator *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)


let getInstance () : IdGeneratorEntityInterface.idGeneratorEntityInterface =
        begin
        (try
            ((Obj.magic (new IdGeneratorEntity.idGeneratorEntity ())) :> IdGeneratorEntityInterface.idGeneratorEntityInterface)
        with e -> begin
            let logUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic !logUtil)#put (!commonStrings#eXCEPTION, "ServerLicenseRequestEntityFactory", !commonStrings#gET_INSTANCE, e));
            ((Obj.magic 0) :> IdGeneratorEntityInterface.idGeneratorEntityInterface)
        end)
        end

let () = java_register_static "IdGeneratorEntityFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class idGeneratorEntityFactory () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "IdGeneratorEntityFactory" (fun arguments -> Obj.repr (new idGeneratorEntityFactory (Obj.obj arguments)))


