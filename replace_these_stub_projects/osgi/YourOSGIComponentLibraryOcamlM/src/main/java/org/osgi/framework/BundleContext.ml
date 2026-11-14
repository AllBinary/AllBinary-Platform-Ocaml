(* Generated Code Do Not Modify *)
(* package org.osgi.framework *)

open Allbinary_java [@@warning "-33"]
(* import java.util.Dictionary *)

class virtual bundleContext =
  object
    method virtual getBundles : 'return . unit -> 'return
    method virtual installBundle : 'return . string -> 'return
    method virtual registerService : 'any2 'any3 'return . string * 'any2 * 'any3 -> 'return
    method virtual getService : 'any1 . 'any1 -> Obj.t
    method virtual getServiceReferences : 'return . string * string -> 'return
    method virtual getServiceReference : 'return . string -> 'return
  end


