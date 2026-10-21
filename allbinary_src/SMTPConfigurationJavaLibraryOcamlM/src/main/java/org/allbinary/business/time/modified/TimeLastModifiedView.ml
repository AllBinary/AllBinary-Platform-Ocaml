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
(* package org.allbinary.business.time.modified *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.business.entry.EntryData *)
(* import org.allbinary.data.tree.dom.DomNodeHelper *)
(* import org.allbinary.data.tree.dom.DomNodeInterface *)
(* import org.allbinary.data.tree.dom.ModDomHelper *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class timeLastModifiedView ((timeLastModified_arg : TimeLastModified.timeLastModified)) =
  object (self)
    val mutable timeLastModified : TimeLastModified.timeLastModified = (Obj.magic 0)
    method timeLastModified = timeLastModified
    method set_timeLastModified value' = timeLastModified <- value'
    
    
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        (Obj.magic ((ModDomHelper.createTextNode ((Obj.magic document), (EntryData.getInstance ())#tIMECREATED, (java_string_of (Obj.repr (self#getTimeLastModified ())))))))
        end [@@warning "-20"]
    

    method getTimeLastModified () : TimeLastModified.timeLastModified =
        begin
        (timeLastModified :> TimeLastModified.timeLastModified)
        end
    

    method setTimeLastModified : 'any1. 'any1 -> unit = fun (timeLastModified_arg) ->
        let timeLastModified_arg = Obj.repr timeLastModified_arg in
        begin
        timeLastModified <- (Obj.magic timeLastModified_arg)
        end [@@warning "-20"]

    initializer
      begin
        timeLastModified <- ((Obj.magic 0) :> TimeLastModified.timeLastModified);
        ();
        (self#setTimeLastModified (timeLastModified_arg))
      end
  end
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "TimeLastModifiedView" (fun arguments -> Obj.repr (new timeLastModifiedView (Obj.obj arguments)))


