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
(* package org.allbinary.globals *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.string.StringUtil *)

class urlGlobalsInterface () =
  object
    

    method getMainPath () : string =
        begin
        (StringUtil.getInstance ())#eMPTY_STRING
        end
    

    method getTestHtmlPath () : string =
        begin
        (StringUtil.getInstance ())#eMPTY_STRING
        end
    

    method getWebappPath () : string =
        begin
        (StringUtil.getInstance ())#eMPTY_STRING
        end
    

    method isTestingMode () : bool =
        begin
        false
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "UrlGlobalsInterface" (fun arguments -> Obj.repr (new urlGlobalsInterface (Obj.obj arguments)))


