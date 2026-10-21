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
(* import org.allbinary.business.init.InitInfo *)
(* import org.allbinary.logic.string.StringValidationUtil *)

class webAppUrlGlobals () =
  object (self)
    inherit UrlGlobalsInterface.urlGlobalsInterface ()
    val mutable path : string = ""
    method path = path
    method set_path value' = path <- value'
    val mutable isWebappPathSet : bool = false
    method isWebappPathSet = isWebappPathSet
    method set_isWebappPathSet value' = isWebappPathSet <- value'
    

    method isTestingMode () : bool =
        begin
        ((InitInfo.getInstance ())#isTesting ())
        end [@@warning "-7"]
    

    method getWebappPath () : string =
        begin
        path
        end [@@warning "-7"]
    

    method setWebappPath ((path_arg : string)) : unit =
        let path_arg = ref path_arg in
        begin
        path_arg := !path_arg;
        isWebappPathSet <- true
        end [@@warning "-7"]
    

    method getTestHtmlPath () : string =
        begin
        ((InitInfo.getInstance ())#getTestHtmlPath ())
        end [@@warning "-7"]
    

    method getMainPath () : string =
        try
        begin
        let mainPath : string ref = ref (((InitInfo.getInstance ())#getMainPath ())) in ();
        if (not ((StringValidationUtil.getInstance ())#isEmpty (!mainPath))) then begin
            raise (Java_return (Obj.repr (!mainPath)))
        end else if isWebappPathSet then begin
            raise (Java_return (Obj.repr ((self#getWebappPath ()))))
        end else begin
            raise (Failure ("Webapp Path is not set"))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]

    initializer
      begin
        path <- "";
        isWebappPathSet <- false;
        ()
      end
  end
let () = java_register_constructor "WebAppUrlGlobals" (fun arguments -> Obj.repr (new webAppUrlGlobals (Obj.obj arguments)))


