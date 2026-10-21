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
(* package org.allbinary.business.user *)

open Allbinary_java [@@warning "-33"]
(* import java.io.Serializable *)
(* import java.util.HashMap *)

class virtual userFactoryInterface =
  object
    method virtual getInstance : 'return . java_hash_map -> 'return
  end


