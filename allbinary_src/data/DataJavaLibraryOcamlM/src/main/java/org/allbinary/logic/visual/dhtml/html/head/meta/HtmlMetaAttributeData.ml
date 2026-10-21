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
(* package org.allbinary.logic.visual.dhtml.html.head.meta *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class htmlMetaAttributeData ((id_arg : int), (value : string)) =
  object
    val mutable id : int = 0
    method id = id
    method set_id value' = id <- value'
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    
    

    method equals : 'any1. 'any1 -> bool = fun (htmlMetaAttributeData) ->
        let htmlMetaAttributeData = Obj.repr htmlMetaAttributeData in
        try
        begin
        if ((Obj.magic htmlMetaAttributeData)#id == id) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method toString () : string =
        begin
        name
        end

    initializer
      begin
        ();
        ();
        ();
        name <- value;
        id <- id_arg
      end
  end
let () = java_register_constructor "HtmlMetaAttributeData" (fun arguments -> Obj.repr (new htmlMetaAttributeData (Obj.obj arguments)))


