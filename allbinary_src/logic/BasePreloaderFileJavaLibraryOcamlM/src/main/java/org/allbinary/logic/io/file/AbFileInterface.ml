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
(* package org.allbinary.logic.io.file *)

open Allbinary_java [@@warning "-33"]
(* import java.io.FilenameFilter *)
(* import java.io.IOException *)
(* import java.net.URI *)

class virtual abFileInterface =
  object
    method virtual canRead : unit -> bool
    method virtual canWrite : unit -> bool
    method virtual createNewFile : unit -> bool
    method virtual delete : unit -> bool
    method virtual deleteOnExit : unit -> unit
    method virtual exists : unit -> bool
    method virtual getAbsolutePath : unit -> string
    method virtual getCanonicalPath : unit -> string
    method virtual getParent : unit -> string
    method virtual getPath : unit -> string
    method virtual isAbsolute : unit -> bool
    method virtual isDirectory : unit -> bool
    method virtual isFile : unit -> bool
    method virtual isHidden : unit -> bool
    method virtual lastModified : unit -> int
    method virtual length : unit -> int
    method virtual list : unit -> string array
    method virtual listWithFilter : 'any1 . 'any1 -> string array
    method virtual mkdir : unit -> bool
    method virtual mkdirs : unit -> bool
    method virtual setLastModified : int -> bool
    method virtual setReadOnly : unit -> bool
    method virtual toString : unit -> string
    method virtual toURI : 'return . unit -> 'return
  end


