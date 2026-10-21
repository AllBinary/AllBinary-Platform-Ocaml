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

class appUrlGlobals () =
  object
    inherit UrlGlobalsInterface.urlGlobalsInterface ()
    val mutable path : string = ""
    method path = path
    method set_path value' = path <- value'
    

    method isTestingMode () : bool =
        begin
        false
        end [@@warning "-7"]
    

    method getWebappPath () : string =
        begin
        path
        end [@@warning "-7"]
    

    method setWebappPath ((path_arg : string)) : unit =
        begin
        path <- path_arg;
        if (not (((String.ends_with ~suffix:("\\") path) || (String.ends_with ~suffix:("/") path)))) then begin
            path <- (path ^ "\\")
        end
        end [@@warning "-7"]
    

    method getTestHtmlPath () : string =
        begin
        (StringUtil.getInstance ())#eMPTY_STRING
        end [@@warning "-7"]
    

    method getMainPath () : string =
        begin
        path
        end [@@warning "-7"]

    initializer
      begin
        path <- (StringUtil.getInstance ())#eMPTY_STRING;
        ()
      end
  end
let () = java_register_constructor "AppUrlGlobals" (fun arguments -> Obj.repr (new appUrlGlobals (Obj.obj arguments)))

let nULL_APP_URL_GLOBALS = (new appUrlGlobals ())
let get_nULL_APP_URL_GLOBALS () = nULL_APP_URL_GLOBALS
let () = java_register_static "AppUrlGlobals.get_nULL_APP_URL_GLOBALS" (fun _ -> Obj.repr (get_nULL_APP_URL_GLOBALS ()))


