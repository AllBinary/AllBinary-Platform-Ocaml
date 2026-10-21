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
(* package org.allbinary.business.category *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.category.hierarchy.CategoryHierarchy *)
(* import org.allbinary.business.category.hierarchy.CategoryHierarchyInterface *)
(* import org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface *)
(* import org.allbinary.business.category.properties.CategoryPropertiesInterface *)
(* import org.allbinary.business.category.properties.root.RootCategoryPropertiesInterface *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.io.path.AbPath *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

let nOT_ROOT : string = "This is not the root so it has no file path."
let get_nOT_ROOT () = nOT_ROOT
let () = java_register_static "Category.get_nOT_ROOT" (fun _ -> Obj.repr (get_nOT_ROOT ()))
class category ((categoryPropertiesFactoryInterface : CategoryPropertiesFactoryInterface.categoryPropertiesFactoryInterface)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable categoryHierarchyInterface : CategoryHierarchyInterface.categoryHierarchyInterface = (Obj.magic 0)
    method categoryHierarchyInterface = categoryHierarchyInterface
    method set_categoryHierarchyInterface value' = categoryHierarchyInterface <- value'
    val mutable categoryPropertiesInterface : CategoryPropertiesInterface.categoryPropertiesInterface = (Obj.magic 0)
    method categoryPropertiesInterface = categoryPropertiesInterface
    method set_categoryPropertiesInterface value' = categoryPropertiesInterface <- value'
    val mutable childCategoryVector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method childCategoryVector = childCategoryVector
    method set_childCategoryVector value' = childCategoryVector <- value'
    val mutable typeVector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method typeVector = typeVector
    method set_typeVector value' = typeVector <- value'
    val mutable pROPERTIES : int = (Obj.magic 0)
    method pROPERTIES = pROPERTIES
    method set_pROPERTIES value' = pROPERTIES <- value'
    val mutable cATEGORY : int = (Obj.magic 0)
    method cATEGORY = cATEGORY
    method set_cATEGORY value' = cATEGORY <- value'
    
    
    
    

    method getKey () : Obj.t =
        begin
        (Obj.repr ((categoryPropertiesInterface#getKey ())))
        end
    

    method getRootFilePath () : AbPath.abPath =
        begin
        let rootAbPath : AbPath.abPath ref = ref (((new AbPath.abPath (nOT_ROOT, (StringUtil.getInstance ())#eMPTY_STRING)) :> AbPath.abPath)) in ();
        let categoryInterface : CategoryInterface.categoryInterface ref = ref (((categoryHierarchyInterface#getRoot ()) :> CategoryInterface.categoryInterface)) in ();
        if ((!categoryInterface#getProperties ())#isRoot ()) then begin
            let rootCategoryPropertiesInterface : RootCategoryPropertiesInterface.rootCategoryPropertiesInterface ref = ref (((Obj.magic (!categoryInterface#getProperties ())) :> RootCategoryPropertiesInterface.rootCategoryPropertiesInterface)) in ();
            rootAbPath := (!rootCategoryPropertiesInterface#getRootFilePath ())
        end;
        (!rootAbPath :> AbPath.abPath)
        end
    

    method getFilePath () : AbPath.abPath =
        begin
        ((new AbPath.abPath (((java_string_of (Obj.repr (self#getRootFilePath ()))) ^ (java_string_of (Obj.repr ((self#getProperties ())#getPath ((self#getHierarchy ())))))), ((self#getProperties ())#getFileName ()))) :> AbPath.abPath)
        end
    

    method getWebAppPath () : AbPath.abPath =
        begin
        let categoryInterface : CategoryInterface.categoryInterface ref = ref (((categoryHierarchyInterface#getRoot ()) :> CategoryInterface.categoryInterface)) in ();
        (((!categoryInterface#getProperties ())#getWebAppPath ()) :> AbPath.abPath)
        end
    

    method getPath () : AbPath.abPath =
        begin
        ((categoryPropertiesInterface#getPath (categoryHierarchyInterface)) :> AbPath.abPath)
        end
    

    method addChildProperty : 'any1. 'any1 -> bool = fun (categoryPropertiesInterface_arg) ->
        let categoryPropertiesInterface_arg = Obj.repr categoryPropertiesInterface_arg in
        begin
        ignore (typeVector#add (pROPERTIES));
        (childCategoryVector#add ((Obj.magic categoryPropertiesInterface_arg)))
        end [@@warning "-20"]
    

    method addChild : 'any1. 'any1 -> bool = fun (categoryInterface) ->
        let categoryInterface = Obj.repr categoryInterface in
        begin
        ignore (self#removeDuplicateChild ((Obj.magic categoryInterface)));
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#cATEGORY)) then begin
            ignore ((Obj.magic logUtil)#putF ("adding", self, "addChild"))
        end;
        let childCategoryHierarchyInterface : CategoryHierarchyInterface.categoryHierarchyInterface ref = ref ((((Obj.magic categoryInterface)#getHierarchy ()) :> CategoryHierarchyInterface.categoryHierarchyInterface)) in ();
        ignore (!childCategoryHierarchyInterface#setParent (self));
        ignore (!childCategoryHierarchyInterface#setRoot (((self#getHierarchy ())#getRoot ())));
        ignore ((Obj.magic categoryInterface)#setHierarchy (!childCategoryHierarchyInterface));
        ignore (typeVector#add (cATEGORY));
        (childCategoryVector#add ((Obj.magic categoryInterface)))
        end [@@warning "-20"]
    

    method getChildNodes () : BasicArrayList.basicArrayList =
        begin
        (childCategoryVector :> BasicArrayList.basicArrayList)
        end
    

    method removeChild : 'any1. 'any1 -> bool = fun (categoryInterface) ->
        let categoryInterface = Obj.repr categoryInterface in
        begin
        let removalVector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        let bool_return : bool ref = ref (false) in ();
        let size : int ref = ref ((childCategoryVector#size ())) in ();
        for index = 0 to !size - 1 do
            if ((Obj.repr cATEGORY) == (Obj.repr (typeVector#get (index)))) then begin
                let anyType : Obj.t ref = ref ((Obj.repr (childCategoryVector#get (index)))) in ();
                let currentCategoryInterface : CategoryInterface.categoryInterface ref = ref (((Obj.magic !anyType) :> CategoryInterface.categoryInterface)) in ();
                if ((((!currentCategoryInterface#getProperties ())#getValue ())#compareTo ((((Obj.magic categoryInterface)#getProperties ())#getValue ()))) == 0) then begin
                    ignore (!removalVector#add (!currentCategoryInterface));
                    bool_return := true
                end
            end
        done;
        (self#removal (!removalVector));
        !bool_return
        end [@@warning "-20"]
    

    method removal : 'any1. 'any1 -> unit = fun (removalVector) ->
        let removalVector = Obj.repr removalVector in
        begin
        let removalSize : int ref = ref (((Obj.magic removalVector)#size ())) in ();
        for index = 0 to !removalSize - 1 do
            let anyType : Obj.t ref = ref ((Obj.repr ((Obj.magic removalVector)#get (index)))) in ();
            let objectIndex : int ref = ref ((childCategoryVector#indexOf (!anyType))) in ();
            ignore (typeVector#remove (!objectIndex));
            ignore (childCategoryVector#remove (!objectIndex))
        done
        end [@@warning "-20"]
    

    method removeDuplicateChild : 'any1. 'any1 -> bool = fun (categoryInterface) ->
        let categoryInterface = Obj.repr categoryInterface in
        begin
        let removalVector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        let bool_return : bool ref = ref (false) in ();
        let size : int ref = ref ((childCategoryVector#size ())) in ();
        for index = 0 to !size - 1 do
            let anyType : Obj.t ref = ref ((Obj.repr (childCategoryVector#get (index)))) in ();
            if ((Obj.repr pROPERTIES) == (Obj.repr (typeVector#get (index)))) then begin
                let categoryPropertiesInterface_arg : CategoryPropertiesInterface.categoryPropertiesInterface ref = ref (((Obj.magic !anyType) :> CategoryPropertiesInterface.categoryPropertiesInterface)) in ();
                if (((((Obj.magic categoryInterface)#getProperties ())#getValue ())#compareTo ((!categoryPropertiesInterface_arg#getValue ()))) == 0) then begin
                    ignore (!removalVector#add (!categoryPropertiesInterface_arg));
                    bool_return := true;
                    raise Java_break
                end
            end else if ((Obj.repr cATEGORY) == (Obj.repr (typeVector#get (index)))) then begin
                let existingCategoryInterface : CategoryInterface.categoryInterface ref = ref (((Obj.magic !anyType) :> CategoryInterface.categoryInterface)) in ();
                let categoryPropertiesInterface_arg : CategoryPropertiesInterface.categoryPropertiesInterface ref = ref (((!existingCategoryInterface#getProperties ()) :> CategoryPropertiesInterface.categoryPropertiesInterface)) in ();
                if (((((Obj.magic categoryInterface)#getProperties ())#getValue ())#compareTo ((!categoryPropertiesInterface_arg#getValue ()))) == 0) then begin
                    ignore (!removalVector#add (!existingCategoryInterface));
                    bool_return := true;
                    raise Java_break
                end
            end
        done;
        (self#removal (!removalVector));
        !bool_return
        end [@@warning "-20"]
    

    method isLeaf () : bool =
        try
        begin
        if (childCategoryVector == (Obj.magic 0)) then begin
            raise (Failure ("Category Error"))
        end;
        if ((childCategoryVector#size ()) = 0) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value
    

    method getProperties () : CategoryPropertiesInterface.categoryPropertiesInterface =
        begin
        (categoryPropertiesInterface :> CategoryPropertiesInterface.categoryPropertiesInterface)
        end
    

    method setProperties : 'any1. 'any1 -> unit = fun (categoryPropertiesInterface_arg) ->
        let categoryPropertiesInterface_arg = Obj.repr categoryPropertiesInterface_arg in
        begin
        categoryPropertiesInterface <- (Obj.magic categoryPropertiesInterface_arg)
        end [@@warning "-20"]
    

    method getHierarchy () : CategoryHierarchyInterface.categoryHierarchyInterface =
        begin
        (categoryHierarchyInterface :> CategoryHierarchyInterface.categoryHierarchyInterface)
        end
    

    method setHierarchy : 'any1. 'any1 -> unit = fun (categoryHierarchyInterface_arg) ->
        let categoryHierarchyInterface_arg = Obj.repr categoryHierarchyInterface_arg in
        begin
        categoryHierarchyInterface <- (Obj.magic categoryHierarchyInterface_arg)
        end [@@warning "-20"]
    

    method isValid () : bool =
        try
        begin
        if (not ((categoryPropertiesInterface#isValid ())#booleanValue ())) then begin
            raise (Java_return (Obj.repr (false)))
        end;
        let size : int ref = ref ((childCategoryVector#size ())) in ();
        for index = 0 to !size - 1 do
            let anyType : Obj.t ref = ref ((Obj.repr (childCategoryVector#get (index)))) in ();
            if ((Obj.repr pROPERTIES) == (Obj.repr (typeVector#get (index)))) then begin
                let categoryPropertiesInterface_arg : CategoryPropertiesInterface.categoryPropertiesInterface ref = ref (((Obj.magic !anyType) :> CategoryPropertiesInterface.categoryPropertiesInterface)) in ();
                if (not ((!categoryPropertiesInterface_arg#isValid ())#booleanValue ())) then begin
                    raise (Java_return (Obj.repr (false)))
                end
            end else if ((Obj.repr cATEGORY) == (Obj.repr (typeVector#get (index)))) then begin
                let categoryInterface : CategoryInterface.categoryInterface ref = ref (((Obj.magic !anyType) :> CategoryInterface.categoryInterface)) in ();
                if (not ((!categoryInterface#isValid ())#booleanValue ())) then begin
                    raise (Java_return (Obj.repr (false)))
                end
            end
        done;
        true
        end
        with Java_return value -> Obj.obj value
    

    method toValidationInfoDoc : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic 0)))
        end
    

    method toValidationInfoNode : 'any1 'return. 'any1 -> 'return = fun (_document) ->
        begin
        (Obj.magic ((Obj.magic 0)))
        end [@@warning "-20"]
    

    method validationInfo () : string =
        begin
        (Obj.magic 0)
        end
    

    method toHashMap () : java_hash_map =
        begin
        let categoryHashMap : java_hash_map ref = ref (((categoryPropertiesInterface#toHashMap ()) :> java_hash_map)) in ();
        (!categoryHashMap :> java_hash_map)
        end
    

    method toVector () : BasicArrayList.basicArrayList =
        begin
        let categoryVector : BasicArrayList.basicArrayList ref = ref (((categoryPropertiesInterface#toVector ()) :> BasicArrayList.basicArrayList)) in ();
        ignore (!categoryVector#add (childCategoryVector));
        (!categoryVector :> BasicArrayList.basicArrayList)
        end
    

    method log () : unit =
        begin
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#cATEGORY)) then begin
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (!stringBuffer#append ("Category Name: "));
            ignore (!stringBuffer#append ((categoryPropertiesInterface#getValue ())));
            ignore (!stringBuffer#append ("\nPath = "));
            ignore (!stringBuffer#append ((java_string_of (Obj.repr (self#getPath ())))));
            ignore (!stringBuffer#append ("\nFile Path: "));
            ignore (!stringBuffer#append ((java_string_of (Obj.repr (self#getFilePath ())))));
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "log()"))
        end
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        ();
        childCategoryVector <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        typeVector <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        pROPERTIES <- (Obj.obj (java_new "Integer" (Obj.repr (1))));
        cATEGORY <- (Obj.obj (java_new "Integer" (Obj.repr (0))));
        ();
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#cATEGORY)) then begin
            ignore ((Obj.magic logUtil)#putF (commonStrings#cONSTRUCTOR, self, "Category(CategoryPropertiesFactoryInterface)"))
        end;
        categoryPropertiesInterface <- (categoryPropertiesFactoryInterface#getInstance ());
        categoryHierarchyInterface <- (Obj.magic (new CategoryHierarchy.categoryHierarchy (self, self)));
        (self#log ())
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "Category" (fun arguments -> Obj.repr (new category (Obj.obj arguments)))


