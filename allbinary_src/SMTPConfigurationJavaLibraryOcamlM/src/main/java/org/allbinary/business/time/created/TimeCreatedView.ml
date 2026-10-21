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
(* package org.allbinary.business.time.created *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.business.entry.EntryData *)
(* import org.allbinary.data.tree.dom.DomNodeHelper *)
(* import org.allbinary.data.tree.dom.DomNodeInterface *)
(* import org.allbinary.data.tree.dom.ModDomHelper *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class timeCreatedView ((timeCreated_arg : TimeCreated.timeCreated)) =
  object (self)
    val mutable timeCreated : TimeCreated.timeCreated = (Obj.magic 0)
    method timeCreated = timeCreated
    method set_timeCreated value' = timeCreated <- value'
    
    
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        (Obj.magic ((ModDomHelper.createTextNode ((Obj.magic document), (EntryData.getInstance ())#tIMECREATED, (java_string_of (Obj.repr (self#getTimeCreated ())))))))
        end [@@warning "-20"]
    

    method getTimeCreated () : TimeCreated.timeCreated =
        begin
        (timeCreated :> TimeCreated.timeCreated)
        end
    

    method setTimeCreated : 'any1. 'any1 -> unit = fun (timeCreated_arg) ->
        let timeCreated_arg = Obj.repr timeCreated_arg in
        begin
        timeCreated <- (Obj.magic timeCreated_arg)
        end [@@warning "-20"]

    initializer
      begin
        timeCreated <- ((Obj.magic 0) :> TimeCreated.timeCreated);
        ();
        (self#setTimeCreated (timeCreated_arg))
      end
  end
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "TimeCreatedView" (fun arguments -> Obj.repr (new timeCreatedView (Obj.obj arguments)))


