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
(* package org.allbinary.game.identification *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)

class group ((teamName : string), (teamId_arg : int)) =
  object (self)
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    val mutable teamId : int = 0
    method teamId = teamId
    method set_teamId value' = teamId <- value'
    val mutable string : string = ""
    method string = string
    method set_string value' = string <- value'
    
    

    method getGroupName () : string =
        begin
        name
        end
    

    method setName ((name_arg : string)) : unit =
        begin
        name <- name_arg;
        let groupCommonFactory : GroupCommonFactory.groupCommonFactory ref = ref (((GroupCommonFactory.getInstance ()) :> GroupCommonFactory.groupCommonFactory)) in ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (!groupCommonFactory#gROUP_NAME_LABEL));
        ignore (!stringBuffer#append (name));
        ignore (!stringBuffer#append (!groupCommonFactory#iD_LABEL));
        ignore (!stringBuffer#appendshort (teamId));
        string <- (java_string_of (Obj.repr !stringBuffer))
        end
    

    method getGroupId () : int =
        begin
        teamId
        end
    

    method toString () : string =
        begin
        string
        end

    initializer
      begin
        name <- (StringUtil.getInstance ())#eMPTY_STRING;
        ();
        string <- (StringUtil.getInstance ())#eMPTY_STRING;
        ();
        teamId <- teamId_arg;
        (self#setName (teamName))
      end
  end
let () = java_register_constructor "Group" (fun arguments -> Obj.repr (new group (Obj.obj arguments)))


