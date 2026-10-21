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
(* package org.allbinary.animation *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.media.ScaleProperties *)

class virtual animationInterfaceFactoryInterface =
  object
    inherit BasicAnimationInterfaceFactoryInterface.basicAnimationInterfaceFactoryInterface
    method virtual getInstance : 'return . int -> 'return
    method virtual setInitialScale : 'any1 . 'any1 -> unit
  end


