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

class basicTable () =
  object
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    

    method drop () : string =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method create () : string =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method restore () : string =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method backup () : string =
        begin
        raise (Failure ("RuntimeException"))
        end

    initializer
      begin
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ()
      end
  end
let () = java_register_constructor "BasicTable" (fun arguments -> Obj.repr (new basicTable (Obj.obj arguments)))


