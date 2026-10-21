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
(* package org.allbinary.input.automation.module *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import javax.swing *)
(* import org.allbinary.logic.StdUtil *)

class defaultListModelHelper () =
  object
    val mutable defaultListModel : Obj.t = Obj.repr 0
    method defaultListModel : 'r. 'r = Obj.magic defaultListModel
    method set_defaultListModel : 'v. 'v -> unit = fun value' -> defaultListModel <- Obj.repr value'
    val mutable vector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method vector = vector
    method set_vector value' = vector <- value'
    
    

    method initDefaultModelList () : unit =
        begin
        defaultListModel <- Obj.repr ((new DefaultListModel.defaultListModel ()));
        let size : int ref = ref ((vector#size ())) in ();
        for index = 0 to !size - 1 do
            let moduleName : string ref = ref ((Obj.magic (vector#get (index)))) in ();
            ignore ((Obj.magic defaultListModel)#addElement (!moduleName))
        done
        end
    

    method getListModel : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic (Obj.magic defaultListModel))))
        end
    

    method add ((string : string)) : unit =
        begin
        ignore (vector#add (string))
        end
    

    method remove ((string : string)) : unit =
        begin
        ignore (vector#remove (string))
        end

    initializer
      begin
        ();
        ();
        ();
        vector <- (new BasicArrayListD.basicArrayListD ());
        defaultListModel <- Obj.repr ((new DefaultListModel.defaultListModel ()))
      end
  end [@@warning "-20"]
let () = java_register_constructor "DefaultListModelHelper" (fun arguments -> Obj.repr (new defaultListModelHelper (Obj.obj arguments)))


