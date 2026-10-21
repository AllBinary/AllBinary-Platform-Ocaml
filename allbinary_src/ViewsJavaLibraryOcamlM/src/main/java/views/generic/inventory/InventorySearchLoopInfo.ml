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
(* package views.generic.inventory *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.string.StringMaker *)

class inventorySearchLoopInfo () =
  object
    val mutable lastPage : int = 0
    method lastPage = lastPage
    method set_lastPage value' = lastPage <- value'
    val mutable currentPage : int = 0
    method currentPage = currentPage
    method set_currentPage value' = currentPage <- value'
    val mutable numberOfResultsOnCurrentPage : int = 0
    method numberOfResultsOnCurrentPage = numberOfResultsOnCurrentPage
    method set_numberOfResultsOnCurrentPage value' = numberOfResultsOnCurrentPage <- value'
    val mutable numberOfResults : int = 0
    method numberOfResults = numberOfResults
    method set_numberOfResults value' = numberOfResults <- value'
    val mutable cURRENT : string = ""
    method cURRENT = cURRENT
    method set_cURRENT value' = cURRENT <- value'
    val mutable nUM : string = ""
    method nUM = nUM
    method set_nUM value' = nUM <- value'
    val mutable lAST : string = ""
    method lAST = lAST
    method set_lAST value' = lAST <- value'
    

    method toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (cURRENT));
        ignore (!stringBuffer#appendint (currentPage));
        ignore (!stringBuffer#append (nUM));
        ignore (!stringBuffer#appendint (numberOfResults));
        ignore (!stringBuffer#append (lAST));
        ignore (!stringBuffer#appendint (lastPage));
        (java_string_of (Obj.repr !stringBuffer))
        end

    initializer
      begin
        lastPage <- (-1);
        currentPage <- (-1);
        numberOfResultsOnCurrentPage <- 0;
        numberOfResults <- 0;
        cURRENT <- "current: ";
        nUM <- " num: ";
        lAST <- " last: ";
        ()
      end
  end
let () = java_register_constructor "InventorySearchLoopInfo" (fun arguments -> Obj.repr (new inventorySearchLoopInfo (Obj.obj arguments)))


