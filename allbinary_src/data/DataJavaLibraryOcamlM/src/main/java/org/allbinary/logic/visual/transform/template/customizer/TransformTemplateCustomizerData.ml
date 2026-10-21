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
(* package org.allbinary.logic.visual.transform.template.customizer *)

open Allbinary_java [@@warning "-33"]

let nAME : string ref = ref ("TEMPLATE_CUSTOMIZER_NAME")
let get_nAME () = !nAME
let set_nAME value' = nAME := value'
let () = java_register_static "TransformTemplateCustomizerData.get_nAME" (fun _ -> Obj.repr (get_nAME ()))
class transformTemplateCustomizerData () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "TransformTemplateCustomizerData" (fun arguments -> Obj.repr (new transformTemplateCustomizerData (Obj.obj arguments)))


