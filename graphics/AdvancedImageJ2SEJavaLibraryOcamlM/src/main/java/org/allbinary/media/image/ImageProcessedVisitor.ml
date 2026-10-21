(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.media.image *)

open Allbinary_java [@@warning "-33"]
(* import java.awt.image.BufferedImage *)
(* import java.io.IOException *)

class virtual imageProcessedVisitor =
  object
    inherit ImageProcessorInputCompositeInterface.imageProcessorInputCompositeInterface
    method virtual visit : 'any1 . 'any1 * string * int -> unit
  end


