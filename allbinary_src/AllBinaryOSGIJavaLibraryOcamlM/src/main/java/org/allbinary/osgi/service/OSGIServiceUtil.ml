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
(* package org.allbinary.osgi.service *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.logic.StdUtil *)
(* import org.osgi.framework.BundleContext *)
(* import org.osgi.framework.ServiceReference *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.osgi.OSGIServiceInterface *)

class oSGIServiceUtil () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    

    method getServicesObjectVector : 'any1. 'any1 * _ -> BasicArrayList.basicArrayList = fun (bundleContext, serviceReferences) ->
        let bundleContext = Obj.repr bundleContext in
        begin
        let vector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        if (serviceReferences != (Obj.magic 0)) then begin
            let size : int ref = ref ((Array.length serviceReferences)) in ();
            ignore ((Obj.magic logUtil)#putF (("Service References: " ^ java_string_of (Obj.repr (!size))), self, "getServicesObjectVector"));
            for index = 0 to !size - 1 do
                let serviceReference : Obj.t ref = ref ((Obj.repr serviceReferences.(index))) in ();
                if ((Obj.magic !serviceReference) != (Obj.magic 0)) then begin
                    let osgiServiceInterface : OSGIServiceInterface.oSGIServiceInterface ref = ref (((Obj.magic ((Obj.magic bundleContext)#getService ((Obj.magic !serviceReference)))) :> OSGIServiceInterface.oSGIServiceInterface)) in ();
                    if (!osgiServiceInterface == (Obj.magic 0)) then begin
                        raise (Failure ("No Service For Reference"))
                    end;
                    ignore (!vector#add (!osgiServiceInterface))
                end
            done
        end;
        (!vector :> BasicArrayList.basicArrayList)
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "OSGIServiceUtil" (fun arguments -> Obj.repr (new oSGIServiceUtil (Obj.obj arguments)))

let instance = (new oSGIServiceUtil ())
let get_instance () = instance
let () = java_register_static "OSGIServiceUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "OSGIServiceUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


