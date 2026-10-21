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
(* import org.osgi.framework.BundleContext *)
(* import org.osgi.framework.ServiceReference *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.osgi.OSGIServiceInterface *)
(* import org.allbinary.osgi.OSGIServiceVisitorInterface *)
(* import org.allbinary.string.CommonStrings *)

class inputAutomationServiceConsumer ((registryName_arg : string), bundleContext_arg, (osgiServiceVisitorInterface_arg : OSGIServiceVisitorInterface.oSGIServiceVisitorInterface)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable osgiServiceUtil : OSGIServiceUtil.oSGIServiceUtil = (Obj.magic 0)
    method osgiServiceUtil = osgiServiceUtil
    method set_osgiServiceUtil value' = osgiServiceUtil <- value'
    val mutable registryName : string = ""
    method registryName = registryName
    method set_registryName value' = registryName <- value'
    val mutable bundleContext : Obj.t = Obj.repr 0
    method bundleContext : 'r. 'r = Obj.magic bundleContext
    method set_bundleContext : 'v. 'v -> unit = fun value' -> bundleContext <- Obj.repr value'
    val mutable osgiServiceVisitorInterface : OSGIServiceVisitorInterface.oSGIServiceVisitorInterface = (Obj.magic 0)
    method osgiServiceVisitorInterface = osgiServiceVisitorInterface
    method set_osgiServiceVisitorInterface value' = osgiServiceVisitorInterface <- value'
    
    

    method process () : unit =
        begin
        ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, commonStrings#pROCESS));
        let vector : BasicArrayList.basicArrayList ref = ref (((osgiServiceUtil#getServicesObjectVector ((self#getBundleContext ()), (self#getServiceReferences ()))) :> BasicArrayList.basicArrayList)) in ();
        ignore ((Obj.magic logUtil)#putF ((("Processing " ^ java_string_of (Obj.repr ((!vector#size ())))) ^ " Services"), self, commonStrings#pROCESS));
        let size : int ref = ref ((!vector#size ())) in ();
        let osgiServiceInterface : OSGIServiceInterface.oSGIServiceInterface ref = ref (((Obj.magic 0) :> OSGIServiceInterface.oSGIServiceInterface)) in ();
        for index = 0 to !size - 1 do
            osgiServiceInterface := (Obj.magic (!vector#get (index)));
            if (not ((self#getOsgiServiceVisitorInterface ())#visit (!osgiServiceInterface))) then begin
                raise (Failure (("Unable to process service: " ^ java_string_of (Obj.repr (!osgiServiceInterface)))))
            end
        done
        end
    

    method getServiceReferences : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (((self#getBundleContext ())#getServiceReferences ((self#getRegistryName ()), (Obj.magic 0)))))
        end
    

    method getBundleContext : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic bundleContext)))
        end
    

    method setBundleContext : 'any1. 'any1 -> unit = fun (aBundleContext) ->
        let aBundleContext = Obj.repr aBundleContext in
        begin
        bundleContext <- Obj.repr ((Obj.magic aBundleContext))
        end [@@warning "-20"]
    

    method getRegistryName () : string =
        begin
        registryName
        end
    

    method setRegistryName ((registryName_arg : string)) : unit =
        begin
        registryName <- registryName_arg
        end
    

    method getOsgiServiceVisitorInterface () : OSGIServiceVisitorInterface.oSGIServiceVisitorInterface =
        begin
        (osgiServiceVisitorInterface :> OSGIServiceVisitorInterface.oSGIServiceVisitorInterface)
        end
    

    method setOsgiServiceVisitorInterface : 'any1. 'any1 -> unit = fun (osgiServiceVisitorInterface_arg) ->
        let osgiServiceVisitorInterface_arg = Obj.repr osgiServiceVisitorInterface_arg in
        begin
        osgiServiceVisitorInterface <- (Obj.magic osgiServiceVisitorInterface_arg)
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        osgiServiceUtil <- ((OSGIServiceUtil.getInstance ()) :> OSGIServiceUtil.oSGIServiceUtil);
        registryName <- "";
        bundleContext <- (Obj.repr (Obj.magic 0));
        osgiServiceVisitorInterface <- ((Obj.magic 0) :> OSGIServiceVisitorInterface.oSGIServiceVisitorInterface);
        ();
        (self#setRegistryName (registryName_arg));
        (self#setBundleContext (bundleContext_arg));
        (self#setOsgiServiceVisitorInterface (osgiServiceVisitorInterface_arg))
      end
  end [@@warning "-20"]
let () = java_register_constructor "InputAutomationServiceConsumer" (fun arguments -> Obj.repr (new inputAutomationServiceConsumer (Obj.obj arguments)))


