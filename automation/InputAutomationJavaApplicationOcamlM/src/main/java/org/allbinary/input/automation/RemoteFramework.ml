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
(* package org.allbinary.input.automation *)

open Allbinary_java [@@warning "-33"]
(* import java.util.Map *)
(* import org.osgi.framework.BundleContext *)

class virtual remoteFramework =
  object
    method virtual connect : 'return . string -> 'return
    method virtual disconnect : 'any1 . 'any1 -> unit
    method virtual getSystemProperties : 'any1 'return . 'any1 -> 'return
  end


