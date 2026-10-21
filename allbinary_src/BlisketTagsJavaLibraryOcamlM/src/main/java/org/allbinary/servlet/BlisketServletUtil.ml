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
(* package org.allbinary.servlet *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.servlet.http.HttpServletRequest *)
(* import org.allbinary.globals.AppUrlGlobals *)
(* import org.allbinary.globals.URLGLOBALS *)
(* import org.allbinary.logic.io.path.AbPathData *)
(* import org.allbinary.logic.system.loader.WebappClassLoaderInfo *)

class blisketServletUtil () =
  object (self)
    

    method init : 'any1. 'any1 -> unit = fun (request) ->
        let request = Obj.repr request in
        begin
        let urlGlobals : AppUrlGlobals.appUrlGlobals ref = ref (((new AppUrlGlobals.appUrlGlobals ()) :> AppUrlGlobals.appUrlGlobals)) in ();
        ignore (!urlGlobals#setWebappPath ((((Obj.magic request)#getServletContext ())#getRealPath ((Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#sEPARATOR))));
        ignore (URLGLOBALS.init (!urlGlobals));
        ignore (WebappClassLoaderInfo.setLoader (((java_get_class (Obj.repr self))#getClassLoader ())))
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "BlisketServletUtil" (fun arguments -> Obj.repr (new blisketServletUtil (Obj.obj arguments)))

let instance = (new blisketServletUtil ())
let get_instance () = instance
let () = java_register_static "BlisketServletUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "BlisketServletUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


