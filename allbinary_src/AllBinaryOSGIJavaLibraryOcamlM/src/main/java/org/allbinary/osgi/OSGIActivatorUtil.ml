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
(* package org.allbinary.osgi *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.util.ABHashtable *)
(* import org.osgi.framework.BundleContext *)
(* import org.osgi.framework.NullServiceReferenceFactory *)
(* import org.osgi.framework.ServiceReference *)
(* import org.osgi.framework.ServiceRegistration *)


let rec registerAsService : 'any1 'any2. 'any1 * 'any2 * string -> unit = fun (bundleContext, anyType, (serviceName : string)) ->
        let bundleContext = Obj.repr bundleContext in
        let anyType = Obj.repr anyType in
        begin
        ignore (registerAsService ((Obj.magic bundleContext), anyType, serviceName, ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashtable ())))
        end [@@warning "-20"]

(* Java overload registerAsService(BundleContext, Any, String, ABHashtable) is not converted: OCaml has one method per name *)

let () = java_register_static "OSGIActivatorUtil.registerAsService" (fun arguments -> Obj.repr (registerAsService (Obj.obj arguments)))
class oSGIActivatorUtil () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "OSGIActivatorUtil" (fun arguments -> Obj.repr (new oSGIActivatorUtil (Obj.obj arguments)))


