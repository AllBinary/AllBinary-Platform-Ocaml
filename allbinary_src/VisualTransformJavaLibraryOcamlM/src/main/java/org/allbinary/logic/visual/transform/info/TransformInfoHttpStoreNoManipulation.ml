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
(* package org.allbinary.logic.visual.transform.info *)

open Allbinary_java [@@warning "-33"]
(* import java.util.HashMap *)
(* import javax.servlet.jsp.PageContext *)
(* import org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigNoManipulationFactory *)

class transformInfoHttpStoreNoManipulation ((propertiesHashMap : java_hash_map), pageContext) =
  object (self)
    inherit TransformInfoHttpStore.transformInfoHttpStore (propertiesHashMap, pageContext)
    
    

    method setObjectConfigFile ((value : string)) : unit =
        begin
        ignore (self#setObjectConfigFileName (value));
        ignore (self#setObjectConfigInterface (((TransformInfoObjectConfigNoManipulationFactory.getInstance ())#getInstance (self, (self#getObjectConfigFilePath ())))))
        end [@@warning "-7"]
    

    method setObjectConfig ((_value : string)) : unit =
        begin
        raise (Failure ("Should not set from config"))
        end [@@warning "-7"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "TransformInfoHttpStoreNoManipulation" (fun arguments -> Obj.repr (new transformInfoHttpStoreNoManipulation (Obj.obj arguments)))


