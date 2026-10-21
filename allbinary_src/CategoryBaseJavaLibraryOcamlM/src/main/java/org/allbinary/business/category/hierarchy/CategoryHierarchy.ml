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
(* package org.allbinary.business.category.hierarchy *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.business.category.CategoryData *)
(* import org.allbinary.business.category.CategoryInterface *)
(* import org.allbinary.logic.string.StringUtil *)

class categoryHierarchy ((rootCategoryInterface_arg : CategoryInterface.categoryInterface), (parentCategoryInterface_arg : CategoryInterface.categoryInterface)) =
  object (self)
    val mutable rootCategoryInterface : CategoryInterface.categoryInterface = (Obj.magic 0)
    method rootCategoryInterface = rootCategoryInterface
    method set_rootCategoryInterface value' = rootCategoryInterface <- value'
    val mutable parentCategoryInterface : CategoryInterface.categoryInterface = (Obj.magic 0)
    method parentCategoryInterface = parentCategoryInterface
    method set_parentCategoryInterface value' = parentCategoryInterface <- value'
    val mutable level : int = 0
    method level = level
    method set_level value' = level <- value'
    
    
    
    

    method getLevel () : int =
        begin
        level
        end
    

    method getLevelString () : string =
        begin
        (string_of_int (level))
        end
    

    method setLevel ((level_arg : int)) : unit =
        begin
        level <- level_arg
        end
    

    method setParent : 'any1. 'any1 -> unit = fun (categoryInterface) ->
        let categoryInterface = Obj.repr categoryInterface in
        begin
        parentCategoryInterface <- (Obj.magic categoryInterface)
        end [@@warning "-20"]
    

    method setRoot : 'any1. 'any1 -> unit = fun (categoryInterface) ->
        let categoryInterface = Obj.repr categoryInterface in
        begin
        rootCategoryInterface <- (Obj.magic categoryInterface)
        end [@@warning "-20"]
    

    method getRoot () : CategoryInterface.categoryInterface =
        begin
        (rootCategoryInterface :> CategoryInterface.categoryInterface)
        end
    

    method getParent () : CategoryInterface.categoryInterface =
        begin
        (parentCategoryInterface :> CategoryInterface.categoryInterface)
        end

    initializer
      begin
        rootCategoryInterface <- ((Obj.magic 0) :> CategoryInterface.categoryInterface);
        parentCategoryInterface <- ((Obj.magic 0) :> CategoryInterface.categoryInterface);
        ();
        ();
        level <- 0;
        (self#setRoot (rootCategoryInterface_arg));
        (self#setParent (parentCategoryInterface_arg))
      end
  end
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "CategoryHierarchy" (fun arguments -> Obj.repr (new categoryHierarchy (Obj.obj arguments)))


