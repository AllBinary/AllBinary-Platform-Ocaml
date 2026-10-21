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
(* package views.admin.customizers *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.Arrays *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder *)
(* import org.allbinary.data.tree.dom.DomNodeInterface *)
(* import org.allbinary.data.tree.dom.ModDomHelper *)
(* import org.allbinary.globals.GLOBALS2 *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.control.sort.StringComparator *)
(* import org.allbinary.logic.visual.transform.info.CustomizerTransformInfoData *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.allbinary.logic.visual.transform.template.customizer.TransformTemplateCustomizerData *)
(* import org.allbinary.logic.visual.transform.template.customizer.TransformTemplateCustomizersData *)
(* import org.allbinary.logic.visual.transform.template.customizer.bodies.BodyData *)
(* import org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleData *)
(* import org.allbinary.logic.visual.transform.template.util.TransformTemplateCustomizerUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)
(* import views.business.context.modules.storefront.HttpStoreComponentView *)

class customizersView ((transformInfoInterface : TransformInfoInterface.transformInfoInterface)) =
  object (self)
    inherit HttpStoreComponentView.httpStoreComponentView (transformInfoInterface) as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable customizersVector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method customizersVector = customizersVector
    method set_customizersVector value' = customizersVector <- value'
    
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        (try
            let node : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createElement ((TransformTemplateCustomizersData.get_nAME ()))))) in ();
            let unsortedCustomizerViewVector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
            let size : int ref = ref ((customizersVector#size ())) in ();
            for index = 0 to !size - 1 do
                let viewName : string ref = ref ((Obj.magic (customizersVector#get (index)))) in ();
                if (((((java_string_index_of !viewName (Obj.repr ((CustomizerTransformInfoData.get_nAME ())))) > 0) && ((java_string_index_of !viewName (Obj.repr ((GLOBALS2.get_eDIT ())))) > 0)) && ((java_string_index_of !viewName (Obj.repr ((BodyData.getInstance ())#vIEWNAMEKEY))) > 0)) && ((java_string_index_of !viewName (Obj.repr ((TitleData.getInstance ())#vIEWNAMEKEY))) > 0)) then begin
                    ignore (!unsortedCustomizerViewVector#add (!viewName))
                end
            done;
            let objectArray : Obj.t array ref = ref ((Obj.magic (!unsortedCustomizerViewVector#toArray ()))) in ();
            ignore (Arrays.sort (!objectArray, (new StringComparator.stringComparator ())));
            for index = 0 to (Array.length !objectArray) - 1 do
                let viewName : string ref = ref ((Obj.magic !objectArray.(index))) in ();
                let viewNameNode : Obj.t ref = ref ((Obj.repr (ModDomHelper.createNameValueNodes ((Obj.magic document), (TransformTemplateCustomizerData.get_nAME ()), !viewName, ((TransformTemplateCustomizerUtil.getInstance ())#getPageNameHack (!viewName, ((self#getWeblisketSession ())#getStoreName ()))))))) in ();
                ignore ((Obj.magic !node)#appendChild ((Obj.magic !viewNameNode)))
            done;
            (Obj.magic ((Obj.magic !node)))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#xSLLOGGINGERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#fAILURE, self, "toXmlNode", e))
            end;
            (Obj.magic ((Obj.magic 0)))
        end)
        end [@@warning "-7-20"]
    

    method addDomNodeInterfaces () : unit =
        begin
        ignore (self#addDomNodeInterface ((Obj.magic self)))
        end [@@warning "-7"]
    

    method view () : string =
        begin
        (try
            (self#addDomNodeInterfaces ());
            (super#view ())
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPERERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "view()", e))
            end;
            raise e
        end)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        ();
        (* super(...) is the inherit clause *) ();
        customizersVector <- ((TransformInfoEntityBuilder.getInstance ())#getNames (((self#getWeblisketSession ())#getStoreName ())))
      end
  end [@@warning "-20"]
let () = java_register_constructor "CustomizersView" (fun arguments -> Obj.repr (new customizersView (Obj.obj arguments)))


