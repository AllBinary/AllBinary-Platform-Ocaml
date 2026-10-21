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
(* package org.allbinary.gui.swing.workers *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.swing *)

class jListSwingWorker (jList_arg, listModel_arg) =
  object (self)
    inherit SwingWorker.swingWorker ()
    val mutable jList : Obj.t = Obj.repr 0
    method jList : 'r. 'r = Obj.magic jList
    method set_jList : 'v. 'v -> unit = fun value' -> jList <- Obj.repr value'
    val mutable listModel : Obj.t = Obj.repr 0
    method listModel : 'r. 'r = Obj.magic listModel
    method set_listModel : 'v. 'v -> unit = fun value' -> listModel <- Obj.repr value'
    
    

    method doInBackground () : Obj.t =
        begin
        (Obj.repr ((Obj.magic 0)))
        end [@@warning "-7"]
    

    method done_ () : unit =
        begin
        ignore ((self#getJList ())#setModel ((self#getListModel ())))
        end [@@warning "-7"]
    

    method getJList : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic jList)))
        end [@@warning "-7"]
    

    method setJList : 'any1. 'any1 -> unit = fun (jList_arg) ->
        let jList_arg = Obj.repr jList_arg in
        begin
        jList <- Obj.repr ((Obj.magic jList_arg))
        end [@@warning "-7-20"]
    

    method getListModel : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic listModel)))
        end [@@warning "-7"]
    

    method setListModel : 'any1. 'any1 -> unit = fun (listModel_arg) ->
        let listModel_arg = Obj.repr listModel_arg in
        begin
        listModel <- Obj.repr ((Obj.magic listModel_arg))
        end [@@warning "-7-20"]

    initializer
      begin
        jList <- (Obj.repr (Obj.magic 0));
        listModel <- (Obj.repr (Obj.magic 0));
        ();
        (self#setJList (jList_arg));
        (self#setListModel (listModel_arg))
      end
  end [@@warning "-20"]
let () = java_register_constructor "JListSwingWorker" (fun arguments -> Obj.repr (new jListSwingWorker (Obj.obj arguments)))


