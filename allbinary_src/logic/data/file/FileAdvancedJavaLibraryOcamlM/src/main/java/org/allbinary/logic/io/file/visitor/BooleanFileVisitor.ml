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
(* package org.allbinary.logic.io.file.visitor *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.logic.io.file.AbFile *)
(* import org.allbinary.logic.util.visitor.VisitorInterface *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.BasicArrayList *)

class booleanFileVisitor ((filterStringBasicArrayList_arg : BasicArrayList.basicArrayList)) =
  object (self)
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable filterStringBasicArrayList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method filterStringBasicArrayList = filterStringBasicArrayList
    method set_filterStringBasicArrayList value' = filterStringBasicArrayList <- value'
    
    

    method visit : 'any1. 'any1 -> Obj.t = fun (anyType) ->
        let anyType = Obj.repr anyType in
        begin
        (Obj.repr ((Obj.magic (self#visit ((Obj.magic anyType))))))
        end
    

    (* Java overload visit(AbFile) is not converted: OCaml has one method per name *)
    

    method getFilterStringBasicArrayList () : BasicArrayList.basicArrayList =
        begin
        (filterStringBasicArrayList :> BasicArrayList.basicArrayList)
        end
    

    method setFilterStringBasicArrayList : 'any1. 'any1 -> unit = fun (filterStringBasicArrayList_arg) ->
        let filterStringBasicArrayList_arg = Obj.repr filterStringBasicArrayList_arg in
        begin
        filterStringBasicArrayList <- (Obj.magic filterStringBasicArrayList_arg)
        end [@@warning "-20"]
    

    (* Java overload visit(AbFile, String) is not converted: OCaml has one method per name *)

    initializer
      begin
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        filterStringBasicArrayList <- ((Obj.magic 0) :> BasicArrayList.basicArrayList);
        ();
        (self#setFilterStringBasicArrayList (filterStringBasicArrayList_arg));
        ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr (("Filter BasicArrayList: " ^ (java_string_of (Obj.repr (self#getFilterStringBasicArrayList ())))), self, commonStrings#cONSTRUCTOR))))
      end
  end
let () = java_register_constructor "BooleanFileVisitor" (fun arguments -> Obj.repr (new booleanFileVisitor (Obj.obj arguments)))


