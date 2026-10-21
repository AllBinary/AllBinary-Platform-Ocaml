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
[@@@warning "-20"]

let urlGlobalsInterface : UrlGlobalsInterface.urlGlobalsInterface ref = ref (((AppUrlGlobals.get_nULL_APP_URL_GLOBALS ()) :> UrlGlobalsInterface.urlGlobalsInterface))
let get_urlGlobalsInterface () = !urlGlobalsInterface
let set_urlGlobalsInterface value' = urlGlobalsInterface := value'
let () = java_register_static "URLGLOBALS.get_urlGlobalsInterface" (fun _ -> Obj.repr (get_urlGlobalsInterface ()))

let init : 'any1. 'any1 -> unit = fun (urlGlobalsInterface_arg) ->
        let urlGlobalsInterface_arg = Obj.repr urlGlobalsInterface_arg in
        begin
        urlGlobalsInterface := (Obj.magic urlGlobalsInterface_arg)
        end [@@warning "-20"]

and isTestingMode () : bool =
        begin
        (!urlGlobalsInterface#isTestingMode ())
        end

and getWebappPath () : string =
        begin
        (!urlGlobalsInterface#getWebappPath ())
        end

and getTestHtmlPath () : string =
        begin
        (!urlGlobalsInterface#getTestHtmlPath ())
        end

and getMainPath () : string =
        begin
        (!urlGlobalsInterface#getMainPath ())
        end

let () = java_register_static "URLGLOBALS.init" (fun arguments -> Obj.repr (init (Obj.obj arguments)))
let () = java_register_static "URLGLOBALS.isTestingMode" (fun arguments -> Obj.repr (isTestingMode (Obj.obj arguments)))
let () = java_register_static "URLGLOBALS.getWebappPath" (fun arguments -> Obj.repr (getWebappPath (Obj.obj arguments)))
let () = java_register_static "URLGLOBALS.getTestHtmlPath" (fun arguments -> Obj.repr (getTestHtmlPath (Obj.obj arguments)))
let () = java_register_static "URLGLOBALS.getMainPath" (fun arguments -> Obj.repr (getMainPath (Obj.obj arguments)))
class uRLGLOBALS () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "URLGLOBALS" (fun arguments -> Obj.repr (new uRLGLOBALS (Obj.obj arguments)))


