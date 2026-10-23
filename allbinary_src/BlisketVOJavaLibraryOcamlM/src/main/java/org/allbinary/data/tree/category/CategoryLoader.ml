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
(* package org.allbinary.data.tree.category *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.business.category.CategoryData *)
(* import org.allbinary.business.category.CategoryFactoryInterface *)
(* import org.allbinary.business.category.CategoryInterface *)
(* import org.allbinary.business.category.properties.CategoryProperties *)
(* import org.allbinary.business.category.properties.CategoryPropertiesInterface *)
(* import org.allbinary.data.tree.dom.DomSearchHelper *)
(* import org.allbinary.data.tree.dom.document.DomDocumentHelper *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.control.crypt.file.CryptFileReader *)
(* import org.allbinary.logic.io.file.AbFile *)
(* import org.allbinary.logic.io.path.AbPath *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)
(* import org.w3c.dom.NodeList *)

class categoryLoader ((categoryFactoryInterface : CategoryFactoryInterface.categoryFactoryInterface)) =
  object (self)
    inherit CategoryModifierTree.categoryModifierTree (categoryFactoryInterface)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    

    method getDoc : 'any1 'return. 'any1 -> 'return = fun (categoryInterface) ->
        let categoryInterface = Obj.repr categoryInterface in
        try
        begin
        (try
            if ((((Obj.magic categoryInterface)#getProperties ())#getPath (((Obj.magic categoryInterface)#getHierarchy ()))) != (Obj.magic 0)) then begin
                if ((((Obj.magic categoryInterface)#getHierarchy ())#getLevel ()) == 1) then begin
                    let rootAbFile : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "AbFile.createAbFileFromAbPath" (Obj.repr (((Obj.magic categoryInterface)#getRootFilePath ()))))))) in ();
                    if (not ((Obj.magic !rootAbFile)#isDirectory ())) then begin
                        ignore ((Obj.magic !rootAbFile)#mkdirs ());
                        if (not ((Obj.magic !rootAbFile)#isDirectory ())) then begin
                            raise (Failure ("Could Not Create Directory"))
                        end;
                        ignore (self#save ((Obj.magic categoryInterface)))
                    end
                end;
                let fileAbPath : AbPath.abPath ref = ref ((((Obj.magic categoryInterface)#getFilePath ()) :> AbPath.abPath)) in ();
                let cryptFileReader : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "CryptFileReader" (Obj.repr ((CategoryData.getInstance ())#uNCRYPTED_EXTENSION, (CategoryData.getInstance ())#eNCRYPTED_EXTENSION)))))) in ();
                let document : Obj.t ref = ref ((Obj.repr (DomDocumentHelper.create (((Obj.magic !cryptFileReader)#get (!fileAbPath)))))) in ();
                raise (Java_return (Obj.repr ((Obj.magic !document))))
            end else begin
                raise (Failure ("Null Category"))
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                (try
                    ignore ((Obj.magic categoryInterface)#log ())
                with e2 -> begin
                    ignore ((Obj.magic logUtil)#put ("Could Not Log Category", self, "getDoc", e))
                end);
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#fAILURE, self, "getDoc", e))
            end;
            (Obj.magic ((Obj.magic 0)))
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method get : 'any1. 'any1 -> CategoryInterface.categoryInterface = fun (categoryInterface) ->
        let categoryInterface = Obj.repr categoryInterface in
        begin
        (try
            let document : Obj.t ref = ref ((Obj.repr (self#getDoc ((Obj.magic categoryInterface))))) in ();
            let categoryNode : Obj.t ref = ref ((Obj.repr (DomSearchHelper.getNode ((CategoryData.getInstance ())#nAME, ((Obj.magic !document)#getChildNodes ()))))) in ();
            ((self#addProperties ((Obj.magic categoryInterface), ((Obj.magic !categoryNode)#getChildNodes ()))) :> CategoryInterface.categoryInterface)
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#fAILURE, self, (self#commonStrings)#gET, e))
            end;
            ((Obj.magic 0) :> CategoryInterface.categoryInterface)
        end)
        end [@@warning "-7-20"]
    

    (* Java overload get(Document) is not converted: OCaml has one method per name *)
    

    method getAll : 'any1. 'any1 -> CategoryInterface.categoryInterface = fun (categoryInterface) ->
        let categoryInterface = Obj.repr categoryInterface in
        begin
        (try
            let document : Obj.t ref = ref ((Obj.repr (self#getDoc ((Obj.magic categoryInterface))))) in ();
            ((self#getAll ((Obj.magic !document))) :> CategoryInterface.categoryInterface)
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#fAILURE, self, (self#commonStrings)#gET, e))
            end;
            ((Obj.magic 0) :> CategoryInterface.categoryInterface)
        end)
        end [@@warning "-7-20"]
    

    (* Java overload getAll(Document) is not converted: OCaml has one method per name *)
    

    (* Java overload getAll(CategoryInterface, NodeList) is not converted: OCaml has one method per name *)
    

    method addProperties : 'any1 'any2. 'any1 * 'any2 -> CategoryInterface.categoryInterface = fun (loadedCategoryInterface, categoryNodeList) ->
        let loadedCategoryInterface = Obj.repr loadedCategoryInterface in
        let categoryNodeList = Obj.repr categoryNodeList in
        begin
        (try
            if ((Obj.magic categoryNodeList) != (Obj.magic 0)) then begin
                for index = 0 to ((Obj.magic categoryNodeList)#getLength ()) - 1 do
                    let categoryNode : Obj.t ref = ref ((Obj.repr ((Obj.magic categoryNodeList)#item (index)))) in ();
                    if (((Obj.magic !categoryNode) != (Obj.magic 0)) && ((((Obj.magic !categoryNode)#getNodeName ())#compareTo ((CategoryData.getInstance ())#nAME)) == 0)) then begin
                        let categoryPropertiesInterface : CategoryPropertiesInterface.categoryPropertiesInterface ref = ref (((Obj.magic (new CategoryProperties.categoryProperties ((Obj.magic !categoryNode)))) :> CategoryPropertiesInterface.categoryPropertiesInterface)) in ();
                        ignore ((Obj.magic loadedCategoryInterface)#addChildProperty (!categoryPropertiesInterface))
                    end
                done
            end;
            ((Obj.magic loadedCategoryInterface) :> CategoryInterface.categoryInterface)
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#fAILURE, self, (self#commonStrings)#gET, e))
            end;
            ((Obj.magic 0) :> CategoryInterface.categoryInterface)
        end)
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        (* super(...) is the inherit clause *) ();
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#cATEGORY)) then begin
            ignore ((Obj.magic logUtil)#putF ((self#commonStrings)#sTART, self, "CategoryLoader(CategoryFactoryInterface categoryFactoryInterface)"))
        end
      end
  end [@@warning "-20"]
let () = java_register_constructor "CategoryLoader" (fun arguments -> Obj.repr (new categoryLoader (Obj.obj arguments)))


