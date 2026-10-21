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
[@@@warning "-20"]
(* import org.allbinary.data.tree.dom.DomNodeInterface *)
(* import org.allbinary.data.tree.dom.ModDomHelper *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class transformInfoInterfaceView ((transformInfoInterface_arg : TransformInfoInterface.transformInfoInterface)) =
  object
    val mutable transformInfoInterface : TransformInfoInterface.transformInfoInterface = (Obj.magic 0)
    method transformInfoInterface = transformInfoInterface
    method set_transformInfoInterface value' = transformInfoInterface <- value'
    
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        (Obj.magic ((ModDomHelper.createNameValueNodes ((Obj.magic document), (TransformInfoData.getInstance ())#nAME, (transformInfoInterface#toHashMap ())))))
        end [@@warning "-20"]

    initializer
      begin
        ();
        ();
        transformInfoInterface <- transformInfoInterface_arg
      end
  end
let () = java_register_constructor "TransformInfoInterfaceView" (fun arguments -> Obj.repr (new transformInfoInterfaceView (Obj.obj arguments)))


