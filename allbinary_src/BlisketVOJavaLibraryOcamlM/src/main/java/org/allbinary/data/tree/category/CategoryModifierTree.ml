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
(* import org.allbinary.business.category.CategoryFactoryInterface *)
(* import org.allbinary.business.category.CategoryInterface *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.io.file.directory.Directory *)
(* import org.allbinary.logic.io.path.AbPath *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.string.CommonStrings *)

class categoryModifierTree ((categoryFactoryInterface : CategoryFactoryInterface.categoryFactoryInterface)) =
  object (self)
    inherit CategoryPrivateTree.categoryPrivateTree (categoryFactoryInterface)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable directory : Directory.directory = (Obj.magic 0)
    method directory = directory
    method set_directory value' = directory <- value'
    
    

    method insert : 'any1 'any2. 'any1 * 'any2 -> unit = fun (parentCategoryInterface, newChildCategoryInterface) ->
        let parentCategoryInterface = Obj.repr parentCategoryInterface in
        let newChildCategoryInterface = Obj.repr newChildCategoryInterface in
        begin
        (try
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#cATEGORY)) then begin
                ignore ((Obj.magic logUtil)#putF ("Inserting", self, "insert()"))
            end;
            if (((Obj.magic parentCategoryInterface)#isValid ())#booleanValue ()) then begin
                ignore ((Obj.magic parentCategoryInterface)#addChild ((Obj.magic newChildCategoryInterface)));
                let directoryToBeCreatedAbPath : AbPath.abPath ref = ref (((new AbPath.abPath (((java_string_of (Obj.repr ((Obj.magic newChildCategoryInterface)#getRootFilePath ()))) ^ (java_string_of (Obj.repr ((Obj.magic newChildCategoryInterface)#getPath ())))), (StringUtil.getInstance ())#eMPTY_STRING)) :> AbPath.abPath)) in ();
                ignore (directory#create (!directoryToBeCreatedAbPath));
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#cATEGORY)) then begin
                    ignore ((Obj.magic logUtil)#putF ("Saving", self, "insert()"))
                end;
                ignore (self#save ((Obj.magic parentCategoryInterface)));
                ignore (self#save ((Obj.magic newChildCategoryInterface)))
            end else begin
                raise (Failure ("Will Not Add Null Category"))
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#fAILURE, self, "insert", e))
            end
        end)
        end [@@warning "-7-20"]
    

    method delete : 'any1 'any2. 'any1 * 'any2 -> unit = fun (parentCategoryInterface, existingChildCategoryInterface) ->
        let parentCategoryInterface = Obj.repr parentCategoryInterface in
        let existingChildCategoryInterface = Obj.repr existingChildCategoryInterface in
        begin
        (try
            if (((Obj.magic parentCategoryInterface)#isValid ())#booleanValue ()) then begin
                ignore ((Obj.magic parentCategoryInterface)#addChild ((Obj.magic existingChildCategoryInterface)));
                let directoryToBeDeletedAbPath : AbPath.abPath ref = ref (((new AbPath.abPath (((java_string_of (Obj.repr ((Obj.magic existingChildCategoryInterface)#getRootFilePath ()))) ^ (java_string_of (Obj.repr ((Obj.magic existingChildCategoryInterface)#getPath ())))), (StringUtil.getInstance ())#eMPTY_STRING)) :> AbPath.abPath)) in ();
                (self#delete ((Obj.magic existingChildCategoryInterface)));
                ignore ((Obj.magic parentCategoryInterface)#removeChild ((Obj.magic existingChildCategoryInterface)));
                ignore (self#save ((Obj.magic parentCategoryInterface)));
                ignore (directory#remove (!directoryToBeDeletedAbPath))
            end else begin
                raise (Failure ("Will Not Add Null Category"))
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#fAILURE, self, commonStrings#delete, e))
            end
        end)
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        directory <- ((Directory.getInstance ()) :> Directory.directory);
        ();
        (* super(...) is the inherit clause *) ();
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#cATEGORY)) then begin
            ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, "CategoryModifierTree(CategoryFactoryInterface categoryFactoryInterface)"))
        end
      end
  end [@@warning "-20"]
let () = java_register_constructor "CategoryModifierTree" (fun arguments -> Obj.repr (new categoryModifierTree (Obj.obj arguments)))


