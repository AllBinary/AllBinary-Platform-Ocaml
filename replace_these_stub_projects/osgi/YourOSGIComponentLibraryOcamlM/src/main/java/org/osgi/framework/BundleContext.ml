(* Generated Code Do Not Modify *)
(* package org.osgi.framework *)

open Allbinary_java [@@warning "-33"]
(* import java.util.Dictionary *)

class virtual bundleContext =
  object
    method virtual getBundles : unit -> Bundle.bundle array
    method virtual installBundle : string -> Bundle.bundle
    method virtual registerService : 'any2 'any3 . string * 'any2 * 'any3 -> ServiceRegistration.serviceRegistration
    method virtual getService : 'any1 . 'any1 -> Obj.t
    method virtual getServiceReferences : string * string -> ServiceReference.serviceReference array
    method virtual getServiceReference : string -> ServiceReference.serviceReference
  end


