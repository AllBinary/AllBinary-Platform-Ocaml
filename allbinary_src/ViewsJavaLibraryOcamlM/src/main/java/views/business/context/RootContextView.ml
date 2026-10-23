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
(* package views.business.context *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringValidationUtil *)
(* import org.allbinary.logic.visual.transform.TransformFactory *)
(* import org.allbinary.logic.visual.transform.TransformInterface *)
(* import org.allbinary.logic.visual.transform.info.TransformInfo *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.allbinary.logic.visual.transform.template.TransformTemplateInterface *)
(* import views.business.context.modules.storefront.HttpStoreComponentView *)
(* import views.business.context.modules.storefront.customizer.template.objectConfig.NoTemplateTransformInfoObjectConfig *)

class rootContextView ((transformInfoInterface : TransformInfoInterface.transformInfoInterface)) =
  object (self)
    inherit HttpStoreComponentView.httpStoreComponentView (transformInfoInterface)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    

    method view () : string =
        begin
        (try
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                ignore ((Obj.magic logUtil)#putF (("View Name: " ^ ((self#getTransformInfoInterface ())#getName ())), self, "view()"))
            end;
            let viewName : string ref = ref ((self#getName ())) in ();
            let componentInterface : TransformInterface.transformInterface ref = ref ((((TransformFactory.getInstance ())#getInstance ((self#abeClientInformation), !viewName, (self#getTransformInfoInterface ()))) :> TransformInterface.transformInterface)) in ();
            (!componentInterface#view ())
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPERERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "view()", e))
            end;
            raise e
        end)
        end [@@warning "-7"]
    

    method getName () : string =
        begin
        (try
            let objectConfig : Obj.t ref = ref ((Obj.repr (new NoTemplateTransformInfoObjectConfig.noTemplateTransformInfoObjectConfig ((self#getTransformInfoInterface ()), (((self#getTransformInfoInterface ())#getObjectConfigInterface ())#toXmlDoc ()))))) in ();
            let componentsVector : BasicArrayList.basicArrayList ref = ref ((((Obj.magic !objectConfig)#getTransforms ()) :> BasicArrayList.basicArrayList)) in ();
            if ((!componentsVector#size ()) = 0) then begin
                raise (Failure ("Template View Not Set - No Components"))
            end;
            if ((!componentsVector#size ()) > 1) then begin
                raise (Failure (("To Many Root Template Views: " ^ java_string_of (Obj.repr ((!componentsVector#size ()))))))
            end;
            let transformInfoInterface : TransformInfo.transformInfo ref = ref (((Obj.magic (!componentsVector#get (0))) :> TransformInfo.transformInfo)) in ();
            let viewName : string ref = ref ((!transformInfoInterface#getName ())) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                ignore ((Obj.magic logUtil)#putF (("Root Template With View Name: " ^ !viewName), self, "getName()"))
            end;
            if ((StringValidationUtil.getInstance ())#isEmpty (!viewName)) then begin
                raise (Failure ("Template View Not Set - No View Name"))
            end;
            !viewName
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEWERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "getName()", e))
            end;
            raise e
        end)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        (* super(...) is the inherit clause *) ();
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
            ignore ((Obj.magic logUtil)#putF (("View Name: " ^ (transformInfoInterface#getName ())), self, "RootContextView()"))
        end
      end
  end [@@warning "-20"]
let () = java_register_constructor "RootContextView" (fun arguments -> Obj.repr (new rootContextView (Obj.obj arguments)))


