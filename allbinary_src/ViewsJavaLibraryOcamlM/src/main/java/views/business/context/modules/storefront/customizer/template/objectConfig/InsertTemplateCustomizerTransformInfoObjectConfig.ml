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
(* package views.business.context.modules.storefront.customizer.template.objectConfig *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoDomNodeView *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.allbinary.logic.visual.transform.info.TransformInfosData *)
(* import org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)
(* import org.w3c.dom.NodeList *)

class insertTemplateCustomizerTransformInfoObjectConfig ((transformInfoInterface : TransformInfoInterface.transformInfoInterface)) =
  object (self)
    inherit NoTemplateTransformInfoObjectConfig.noTemplateTransformInfoObjectConfig (transformInfoInterface)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    
    
    

    method set ((aParentViewName : string)) : unit =
        begin
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
            ignore ((Obj.magic logUtil)#putF (("Setting: " ^ aParentViewName), self, "set()"))
        end;
        let document : Obj.t ref = ref ((Obj.repr (self#toXmlDoc ()))) in ();
        let parentComponentsNodeList : Obj.t ref = ref ((Obj.repr ((Obj.magic !document)#getElementsByTagName ((TransformInfosData.getInstance ())#nAME)))) in ();
        if (((Obj.magic !parentComponentsNodeList) != (Obj.magic 0)) && (((Obj.magic !parentComponentsNodeList)#getLength ()) > 0)) then begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                ignore ((Obj.magic logUtil)#putF ("Replacing", self, "set()"))
            end;
            let componentNode : Obj.t ref = ref ((Obj.repr ((((Obj.magic !parentComponentsNodeList)#item (0))#getChildNodes ())#item (0)))) in ();
            if ((Obj.magic !componentNode) != (Obj.magic 0)) then begin
                ignore ((Obj.magic !document)#removeChild ((Obj.magic !componentNode)))
            end;
            ignore (((Obj.magic !parentComponentsNodeList)#item (0))#appendChild (((new TransformInfoDomNodeView.transformInfoDomNodeView (aParentViewName))#toXmlNode ((Obj.magic !document)))))
        end else begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                ignore ((Obj.magic logUtil)#putF ("Setting", self, "set()"))
            end;
            let objectConfigNode : Obj.t ref = ref ((Obj.repr (((Obj.magic !document)#getElementsByTagName ((TransformInfoObjectConfigData.getInstance ())#nAME))#item (0)))) in ();
            let parentComponentsNode : Obj.t ref = ref ((Obj.repr ((Obj.magic !document)#createElement ((TransformInfosData.getInstance ())#nAME)))) in ();
            ignore ((Obj.magic !objectConfigNode)#appendChild ((Obj.magic !parentComponentsNode)));
            let transformInfoDomNodeView : TransformInfoDomNodeView.transformInfoDomNodeView ref = ref (((new TransformInfoDomNodeView.transformInfoDomNodeView (aParentViewName)) :> TransformInfoDomNodeView.transformInfoDomNodeView)) in ();
            ignore ((Obj.magic !parentComponentsNode)#appendChild ((!transformInfoDomNodeView#toXmlNode ((Obj.magic !document)))))
        end
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        (* super(...) is the inherit clause *) ()
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "InsertTemplateCustomizerTransformInfoObjectConfig" (fun arguments -> Obj.repr (new insertTemplateCustomizerTransformInfoObjectConfig (Obj.obj arguments)))


