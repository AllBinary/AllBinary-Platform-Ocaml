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
(* package views.business.context.modules.storefront.customizer *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.data.tables.transform.info.TransformInfoEntity *)
(* import org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder *)
(* import org.allbinary.data.tree.dom.DomNodeInterface *)
(* import org.allbinary.data.tree.dom.document.DomDocumentHelper *)
(* import org.allbinary.data.tree.dom.document.XmlDocumentHelper *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.visual.transform.info.TransformInfo *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface *)
(* import org.w3c.dom.Document *)

class customizerUtil () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    

    method getTransformInfoInterfaceToCustomize : 'any1 'any2. 'any1 * 'any2 -> TransformInfoInterface.transformInfoInterface = fun (customizerTransformInfoInterface, transformInfoInterface) ->
        let customizerTransformInfoInterface = Obj.repr customizerTransformInfoInterface in
        let transformInfoInterface = Obj.repr transformInfoInterface in
        begin
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
            ignore ((Obj.magic logUtil)#putF (("View Name: " ^ ((Obj.magic customizerTransformInfoInterface)#getName ())), self, "getTransformInfoInterfaceToCustomize()"))
        end;
        let transformInfoEntityInterface : TransformInfoEntity.transformInfoEntity ref = ref (((TransformInfoEntityBuilder.getInstance ()) :> TransformInfoEntity.transformInfoEntity)) in ();
        let viewName : string ref = ref (((Obj.magic transformInfoInterface)#getName ())) in ();
        let httpTransformInfoInterface : TransformInfoHttpInterface.transformInfoHttpInterface ref = ref (((Obj.magic (Obj.magic customizerTransformInfoInterface)) :> TransformInfoHttpInterface.transformInfoHttpInterface)) in ();
        let customizedTransformInfoInterface : TransformInfoInterface.transformInfoInterface ref = ref (((!transformInfoEntityInterface#get (!viewName, (!httpTransformInfoInterface#getPropertiesHashMap ()), (!httpTransformInfoInterface#getPageContext ()))) :> TransformInfoInterface.transformInfoInterface)) in ();
        (!customizedTransformInfoInterface :> TransformInfoInterface.transformInfoInterface)
        end [@@warning "-20"]
    

    method getTransformInfoObjectConfigComponentNodesToCustomize : 'any1 'any2. 'any1 * 'any2 -> BasicArrayList.basicArrayList = fun (customizerTransformInfoInterface, transformInfoInterface) ->
        let customizerTransformInfoInterface = Obj.repr customizerTransformInfoInterface in
        let transformInfoInterface = Obj.repr transformInfoInterface in
        begin
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
            ignore ((Obj.magic logUtil)#putF (("View Name: " ^ ((Obj.magic customizerTransformInfoInterface)#getName ())), self, "getTransformInfoObjectConfigComponentNodesToCustomize()"))
        end;
        let transformInfoEntityInterface : TransformInfoEntity.transformInfoEntity ref = ref (((TransformInfoEntityBuilder.getInstance ()) :> TransformInfoEntity.transformInfoEntity)) in ();
        let viewName : string ref = ref (((Obj.magic transformInfoInterface)#getName ())) in ();
        let httpTransformInfoInterface : TransformInfoHttpInterface.transformInfoHttpInterface ref = ref (((Obj.magic (Obj.magic customizerTransformInfoInterface)) :> TransformInfoHttpInterface.transformInfoHttpInterface)) in ();
        let customizedTransformInfoInterface : TransformInfoInterface.transformInfoInterface ref = ref (((!transformInfoEntityInterface#get (!viewName, (!httpTransformInfoInterface#getPropertiesHashMap ()), (!httpTransformInfoInterface#getPageContext ()))) :> TransformInfoInterface.transformInfoInterface)) in ();
        ((self#getTransformInfoObjectConfigComponentNodes (!customizedTransformInfoInterface)) :> BasicArrayList.basicArrayList)
        end [@@warning "-20"]
    

    method getTransformInfoObjectConfigComponentNodes : 'any1. 'any1 -> BasicArrayList.basicArrayList = fun (transformInfoInterface) ->
        let transformInfoInterface = Obj.repr transformInfoInterface in
        begin
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
            ignore ((Obj.magic logUtil)#putF (("View Name: " ^ ((Obj.magic transformInfoInterface)#getName ())), self, "getTransformInfoObjectConfigComponentNodes()"))
        end;
        let transformInfoObjectConfigInterface : TransformInfoObjectConfigInterface.transformInfoObjectConfigInterface ref = ref ((((Obj.magic transformInfoInterface)#getObjectConfigInterface ()) :> TransformInfoObjectConfigInterface.transformInfoObjectConfigInterface)) in ();
        ((!transformInfoObjectConfigInterface#getTransforms ()) :> BasicArrayList.basicArrayList)
        end [@@warning "-20"]
    

    method getTransformInfoObjectConfigGroupComponentNodes : 'any1. 'any1 -> BasicArrayList.basicArrayList = fun (transformInfoInterface) ->
        let transformInfoInterface = Obj.repr transformInfoInterface in
        begin
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
            ignore ((Obj.magic logUtil)#putF (("View Name: " ^ ((Obj.magic transformInfoInterface)#getName ())), self, "getTransformInfoObjectConfigComponentNodes()"))
        end;
        let transformInfoObjectConfigInterface : TransformInfoObjectConfigInterface.transformInfoObjectConfigInterface ref = ref ((((Obj.magic transformInfoInterface)#getObjectConfigInterface ()) :> TransformInfoObjectConfigInterface.transformInfoObjectConfigInterface)) in ();
        ((!transformInfoObjectConfigInterface#getGroupTransforms ()) :> BasicArrayList.basicArrayList)
        end [@@warning "-20"]
    

    method insert : 'any1 'any2. 'any1 * 'any2 -> unit = fun (transformInfoInterface, domNodeInterface) ->
        let transformInfoInterface = Obj.repr transformInfoInterface in
        let domNodeInterface = Obj.repr domNodeInterface in
        begin
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
            ignore ((Obj.magic logUtil)#putF (("View Name: " ^ ((Obj.magic transformInfoInterface)#getName ())), self, "insert()"))
        end;
        let transformInfoEntityInterface : TransformInfoEntity.transformInfoEntity ref = ref (((TransformInfoEntityBuilder.getInstance ()) :> TransformInfoEntity.transformInfoEntity)) in ();
        let allViewsToBeModified : BasicArrayList.basicArrayList ref = ref (((self#getTransformInfoObjectConfigGroupComponentNodes ((Obj.magic transformInfoInterface))) :> BasicArrayList.basicArrayList)) in ();
        let document : Obj.t ref = ref ((Obj.repr (DomDocumentHelper.create ()))) in ();
        ignore ((Obj.magic !document)#appendChild (((Obj.magic domNodeInterface)#toXmlNode ((Obj.magic !document)))));
        let documentString : string ref = ref ((XmlDocumentHelper.toString ((Obj.magic !document)))) in ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
            ignore (!stringBuffer#append ("Total Views For Modification: "));
            ignore (!stringBuffer#appendint ((!allViewsToBeModified#size ())));
            ignore (!stringBuffer#append (" New Xml/Data: "));
            ignore (!stringBuffer#append (!documentString));
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "insert()"))
        end;
        ignore ((Obj.magic transformInfoInterface)#setData (!documentString));
        let size : int ref = ref ((!allViewsToBeModified#size ())) in ();
        for index = 0 to !size - 1 do
            let transformInfo : TransformInfo.transformInfo ref = ref (((Obj.magic (!allViewsToBeModified#get (index))) :> TransformInfo.transformInfo)) in ();
            let viewNameOfViewToBeModified : string ref = ref ((!transformInfo#getName ())) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
                ignore (!stringBuffer#append (((Obj.magic transformInfoInterface)#getName ())));
                ignore (!stringBuffer#append (" is modifying view: "));
                ignore (!stringBuffer#append (!viewNameOfViewToBeModified));
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "insert()"))
            end;
            let httpTransformInfoInterface : TransformInfoHttpInterface.transformInfoHttpInterface ref = ref (((Obj.magic (Obj.magic transformInfoInterface)) :> TransformInfoHttpInterface.transformInfoHttpInterface)) in ();
            let specifiedTransformInfoInterface : TransformInfoInterface.transformInfoInterface ref = ref (((!transformInfoEntityInterface#get (!viewNameOfViewToBeModified, (!httpTransformInfoInterface#getPropertiesHashMap ()), (!httpTransformInfoInterface#getPageContext ()))) :> TransformInfoInterface.transformInfoInterface)) in ();
            if (!specifiedTransformInfoInterface == (Obj.magic 0)) then begin
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                    ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
                    ignore (!stringBuffer#append (((Obj.magic transformInfoInterface)#getName ())));
                    ignore (!stringBuffer#append (" is unable to add data to view: "));
                    ignore (!stringBuffer#append (!viewNameOfViewToBeModified));
                    ignore (!stringBuffer#append (" since it does not exist"));
                    ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "insert()"))
                end
            end else begin
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                    ignore ((Obj.magic logUtil)#putF (((((Obj.magic transformInfoInterface)#getName ()) ^ " is adding data to view: ") ^ !viewNameOfViewToBeModified), self, "insert()"))
                end;
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                    ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
                    ignore (!stringBuffer#append (!viewNameOfViewToBeModified));
                    ignore (!stringBuffer#append (" is changing data in "));
                    ignore (!stringBuffer#append ((java_string_of (Obj.repr (!specifiedTransformInfoInterface#getDataFilePath ())))));
                    ignore (!stringBuffer#append (" to the following data:\n"));
                    ignore (!stringBuffer#append (!documentString));
                    ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "insert()"))
                end;
                (self#write (!specifiedTransformInfoInterface, !documentString))
            end
        done
        end [@@warning "-20"]
    

    method write : 'any1. 'any1 * string -> unit = fun (specifiedTransformInfoInterface, (documentString : string)) ->
        let specifiedTransformInfoInterface = Obj.repr specifiedTransformInfoInterface in
        begin
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
            ignore ((Obj.magic logUtil)#putF (("View Name: " ^ ((Obj.magic specifiedTransformInfoInterface)#getName ())), self, "write()"))
        end;
        let transformInfoEntityInterface : TransformInfoEntity.transformInfoEntity ref = ref (((TransformInfoEntityBuilder.getInstance ()) :> TransformInfoEntity.transformInfoEntity)) in ();
        ignore ((Obj.magic specifiedTransformInfoInterface)#setData (documentString));
        ignore (!transformInfoEntityInterface#update (((Obj.magic specifiedTransformInfoInterface)#toHashMap ())))
        end [@@warning "-20"]
    

    method getViewDataForComponentsInObjectConfig : 'any1 'return. 'any1 -> 'return = fun (transformInfoInterface) ->
        let transformInfoInterface = Obj.repr transformInfoInterface in
        begin
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
            ignore ((Obj.magic logUtil)#putF (("View Name: " ^ ((Obj.magic transformInfoInterface)#getName ())), self, "getViewDataForComponentsInObjectConfig()"))
        end;
        let transformInfoObjectConfigInterface : TransformInfoObjectConfigInterface.transformInfoObjectConfigInterface ref = ref ((((Obj.magic transformInfoInterface)#getObjectConfigInterface ()) :> TransformInfoObjectConfigInterface.transformInfoObjectConfigInterface)) in ();
        let allViewsToBeModified : BasicArrayList.basicArrayList ref = ref (((!transformInfoObjectConfigInterface#getGroupTransforms ()) :> BasicArrayList.basicArrayList)) in ();
        let transformInfoEntityInterface : TransformInfoEntity.transformInfoEntity ref = ref (((TransformInfoEntityBuilder.getInstance ()) :> TransformInfoEntity.transformInfoEntity)) in ();
        let size : int ref = ref ((!allViewsToBeModified#size ())) in ();
        for index = 0 to !size - 1 do
            let nextTransformInfoInterface : TransformInfo.transformInfo ref = ref (((Obj.magic (!allViewsToBeModified#get (index))) :> TransformInfo.transformInfo)) in ();
            let viewNameOfViewToBeModified : string ref = ref ((!nextTransformInfoInterface#getName ())) in ();
            let httpTransformInfoInterface : TransformInfoHttpInterface.transformInfoHttpInterface ref = ref (((Obj.magic (Obj.magic transformInfoInterface)) :> TransformInfoHttpInterface.transformInfoHttpInterface)) in ();
            let specifiedTransformInfoInterface : TransformInfoInterface.transformInfoInterface ref = ref (((!transformInfoEntityInterface#get (!viewNameOfViewToBeModified, (!httpTransformInfoInterface#getPropertiesHashMap ()), (!httpTransformInfoInterface#getPageContext ()))) :> TransformInfoInterface.transformInfoInterface)) in ();
            (Obj.magic ((!specifiedTransformInfoInterface#getDataDocument ())))
        done;
        raise (Failure ("No Components Specified in ObjectConfig"))
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "CustomizerUtil" (fun arguments -> Obj.repr (new customizerUtil (Obj.obj arguments)))

let instance = (new customizerUtil ())
let get_instance () = instance
let () = java_register_static "CustomizerUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "CustomizerUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


