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
(* package org.allbinary.media.audio *)

open Allbinary_java [@@warning "-33"]
(* import javax.microedition.media.MediaException *)
(* import javax.microedition.media.TimeBase *)

class virtual timeBaseInterface =
  object
    method virtual getTimeBase : 'return . unit -> 'return
    method virtual setTimeBase : 'any1 . 'any1 -> unit
  end


