(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package admin.taghelpers *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.string.CommonStrings *)
(* import tags.TagStrings *)

class modifyTable () =
  object
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable tagStrings : Obj.t = Obj.repr 0
    method tagStrings : 'r. 'r = Obj.magic tagStrings
    method set_tagStrings : 'v. 'v -> unit = fun value' -> tagStrings <- Obj.repr value'
    

    method insert () : string =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method delete () : string =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method update () : string =
        begin
        raise (Failure ("RuntimeException"))
        end

    initializer
      begin
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        tagStrings <- (Obj.repr (TagStrings.getInstance ()));
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "ModifyTable" (fun arguments -> Obj.repr (new modifyTable (Obj.obj arguments)))


