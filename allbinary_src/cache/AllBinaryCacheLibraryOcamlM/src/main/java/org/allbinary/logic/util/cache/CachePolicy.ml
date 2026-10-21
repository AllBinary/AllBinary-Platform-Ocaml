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
(* package org.allbinary.logic.util.cache *)

open Allbinary_java [@@warning "-33"]

class cachePolicy ((name_arg : string), (maxTime_arg : int), (maxSize_arg : int)) =
  object (self)
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    val mutable maxTime : int = 0
    method maxTime = maxTime
    method set_maxTime value' = maxTime <- value'
    val mutable maxSize : int = 0
    method maxSize = maxSize
    method set_maxSize value' = maxSize <- value'
    
    

    method getMaxTime () : int =
        begin
        maxTime
        end
    

    method setMaxTime ((maxTime_arg : int)) : unit =
        begin
        maxTime <- maxTime_arg
        end
    

    method getMaxSize () : int =
        begin
        maxSize
        end
    

    method setMaxSize ((maxSize_arg : int)) : unit =
        begin
        maxSize <- maxSize_arg
        end
    

    method getName () : string =
        begin
        name
        end

    initializer
      begin
        ();
        maxTime <- 0;
        maxSize <- 0;
        ();
        name <- name_arg;
        (self#setMaxTime (maxTime_arg));
        (self#setMaxSize (maxSize_arg))
      end
  end
let () = java_register_constructor "CachePolicy" (fun arguments -> Obj.repr (new cachePolicy (Obj.obj arguments)))


