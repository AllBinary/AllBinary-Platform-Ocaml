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
(* import org.allbinary.business.category.CategoryComponent *)
(* import org.allbinary.business.category.CategoryData *)
(* import org.allbinary.business.category.CategoryFactoryInterface *)
(* import org.allbinary.business.category.CategoryInterface *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.control.crypt.file.CryptFileWriter *)
(* import org.allbinary.logic.io.file.AbFile *)
(* import org.allbinary.string.CommonStrings *)
(* import org.w3c.dom.Document *)

class categoryPrivateTree ((categoryFactoryInterface_arg : CategoryFactoryInterface.categoryFactoryInterface)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable categoryFactoryInterface : CategoryFactoryInterface.categoryFactoryInterface = (Obj.magic 0)
    method categoryFactoryInterface = categoryFactoryInterface
    method set_categoryFactoryInterface value' = categoryFactoryInterface <- value'
    
    

    method save : 'any1. 'any1 -> unit = fun (categoryInterface) ->
        let categoryInterface = Obj.repr categoryInterface in
        begin
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
            ignore ((Obj.magic logUtil)#putF (("Saving Category File: " ^ java_string_of (Obj.repr (((Obj.magic categoryInterface)#getFilePath ())))), self, "save()"))
        end;
        let document : Obj.t ref = ref ((Obj.repr ((new CategoryComponent.categoryComponent ((Obj.magic categoryInterface)))#toXmlDoc ()))) in ();
        let cryptFileWriter : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "CryptFileWriter" (Obj.repr ((CategoryData.getInstance ())#uNCRYPTED_EXTENSION, (CategoryData.getInstance ())#eNCRYPTED_EXTENSION)))))) in ();
        ignore ((Obj.magic !cryptFileWriter)#write (((Obj.magic categoryInterface)#getFilePath ()), (Obj.magic !document)));
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
            ignore ((Obj.magic logUtil)#putF ("end", self, "save()"))
        end
        end [@@warning "-20"]
    

    method delete : 'any1. 'any1 -> unit = fun (categoryInterface) ->
        let categoryInterface = Obj.repr categoryInterface in
        begin
        if ((Obj.magic categoryInterface)#isLeaf ()) then begin
            let categoryFile : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "AbFile.createAbFileFromAbPath" (Obj.repr (((Obj.magic categoryInterface)#getFilePath ()))))))) in ();
            if ((Obj.magic !categoryFile)#delete ()) then begin
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                    ignore ((Obj.magic logUtil)#putF (("Removed: " ^ java_string_of (Obj.repr (((Obj.magic categoryInterface)#getFilePath ())))), self, "delete(CategoryInterface)"))
                end
            end
        end else begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#putF ("Not a leaf unable to remove", self, "delete(CategoryInterface)"))
            end
        end
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#cATEGORY)) then begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#putF (!commonStrings#sTART, self, "CategoryPrivateTree(CategoryFactoryInterface categoryFactoryInterface)"))
        end;
        categoryFactoryInterface <- categoryFactoryInterface_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "CategoryPrivateTree" (fun arguments -> Obj.repr (new categoryPrivateTree (Obj.obj arguments)))


