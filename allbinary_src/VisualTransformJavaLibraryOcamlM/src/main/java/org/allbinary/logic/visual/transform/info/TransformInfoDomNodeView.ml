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
(* import org.w3c.dom.Attr *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.NamedNodeMap *)
(* import org.w3c.dom.Node *)

class transformInfoDomNodeView ((transformInfoInterface : TransformInfoInterface.transformInfoInterface)) =
  object (self)
    inherit TransformInfoDomNode.transformInfoDomNode (transformInfoInterface)
    
    
    
    
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        let transformInfoData : TransformInfoData.transformInfoData ref = ref (((TransformInfoData.getInstance ()) :> TransformInfoData.transformInfoData)) in ();
        let subViewNode : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createElement (!transformInfoData#nAME)))) in ();
        let viewNameAttr : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createAttribute (!transformInfoData#nAME)))) in ();
        ignore ((Obj.magic !viewNameAttr)#setValue (((self#getTransformInfoInterface ())#getName ())));
        let componentNodeAttributes : Obj.t ref = ref ((Obj.repr ((Obj.magic !subViewNode)#getAttributes ()))) in ();
        ignore ((Obj.magic !componentNodeAttributes)#setNamedItem ((Obj.magic !viewNameAttr)));
        if ((self#getMappedName ()) != (Obj.magic 0)) then begin
            let mappedNameAttr : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createAttribute (!transformInfoData#mAPPED)))) in ();
            ignore ((Obj.magic !mappedNameAttr)#setValue ((self#getMappedName ())));
            ignore ((Obj.magic !componentNodeAttributes)#setNamedItem ((Obj.magic !mappedNameAttr)))
        end;
        (Obj.magic ((Obj.magic !subViewNode)))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "TransformInfoDomNodeView" (fun arguments -> Obj.repr (new transformInfoDomNodeView (Obj.obj arguments)))


