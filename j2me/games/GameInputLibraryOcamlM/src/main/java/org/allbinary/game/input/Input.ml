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
(* package org.allbinary.game.input *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)

class input ((id_arg : int), (name_arg : string)) =
  object (self)
    val mutable id : int = 0
    method id = id
    method set_id value' = id <- value'
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    
    

    method getId () : int =
        begin
        id
        end
    

    method setId ((key : int)) : unit =
        begin
        id <- key
        end
    

    method getName () : string =
        begin
        name
        end
    

    method setName ((keyName : string)) : unit =
        begin
        name <- keyName
        end
    

    method toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ("Name: "));
        ignore (!stringBuffer#append ((self#getName ())));
        ignore (!stringBuffer#append (" Id: "));
        ignore (!stringBuffer#appendint ((self#getId ())));
        (java_string_of (Obj.repr !stringBuffer))
        end

    initializer
      begin
        id <- 0;
        name <- (StringUtil.getInstance ())#eMPTY_STRING;
        ();
        (self#setId (id_arg));
        (self#setName (name_arg))
      end
  end
let () = java_register_constructor "Input" (fun arguments -> Obj.repr (new input (Obj.obj arguments)))


