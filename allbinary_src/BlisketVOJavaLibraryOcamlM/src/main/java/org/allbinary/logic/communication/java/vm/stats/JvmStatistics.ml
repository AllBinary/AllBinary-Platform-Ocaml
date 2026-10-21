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
(* package org.allbinary.logic.communication.java.vm.stats *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class jvmStatistics () =
  object (self)
    val mutable runtime : Obj.t = Obj.repr 0
    method runtime : 'r. 'r = Obj.magic runtime
    method set_runtime : 'v. 'v -> unit = fun value' -> runtime <- Obj.repr value'
    
    

    method getFreeMemoryBytes () : int =
        begin
        ((Obj.magic runtime)#freeMemory ())
        end
    

    method getFreeMemoryKilobytes () : int =
        begin
        ((self#getFreeMemoryBytes ()) / 1024)
        end
    

    method getFreeMemoryMegabytes () : int =
        begin
        ((self#getFreeMemoryKilobytes ()) / 1024)
        end
    

    method getMaxMemoryBytes () : int =
        begin
        ((Obj.magic runtime)#maxMemory ())
        end
    

    method getMaxMemoryKilobytes () : int =
        begin
        ((self#getMaxMemoryBytes ()) / 1024)
        end
    

    method getMaxMemoryMegabytes () : int =
        begin
        ((self#getMaxMemoryKilobytes ()) / 1024)
        end
    

    method getTotalMemoryBytes () : int =
        begin
        ((Obj.magic runtime)#totalMemory ())
        end
    

    method getTotalMemoryKilobytes () : int =
        begin
        ((self#getTotalMemoryBytes ()) / 1024)
        end
    

    method getTotalMemoryMegabytes () : int =
        begin
        ((self#getTotalMemoryKilobytes ()) / 1024)
        end
    

    method getFreeMemoryBytesLong () : int =
        begin
        (Obj.obj (java_new "Long" (Obj.repr ((self#getFreeMemoryBytes ())))))
        end
    

    method getFreeMemoryKilobytesLong () : int =
        begin
        (Obj.obj (java_new "Long" (Obj.repr ((self#getFreeMemoryKilobytes ())))))
        end
    

    method getFreeMemoryMegabytesLong () : int =
        begin
        (Obj.obj (java_new "Long" (Obj.repr ((self#getFreeMemoryMegabytes ())))))
        end
    

    method getMaxMemoryBytesLong () : int =
        begin
        (Obj.obj (java_new "Long" (Obj.repr ((self#getMaxMemoryBytes ())))))
        end
    

    method getMaxMemoryKilobytesLong () : int =
        begin
        (Obj.obj (java_new "Long" (Obj.repr ((self#getMaxMemoryKilobytes ())))))
        end
    

    method getMaxMemoryMegabytesLong () : int =
        begin
        (Obj.obj (java_new "Long" (Obj.repr ((self#getMaxMemoryMegabytes ())))))
        end
    

    method getTotalMemoryBytesLong () : int =
        begin
        (Obj.obj (java_new "Long" (Obj.repr ((self#getTotalMemoryBytes ())))))
        end
    

    method getTotalMemoryKilobytesLong () : int =
        begin
        (Obj.obj (java_new "Long" (Obj.repr ((self#getTotalMemoryKilobytes ())))))
        end
    

    method getTotalMemoryMegabytesLong () : int =
        begin
        (Obj.obj (java_new "Long" (Obj.repr ((self#getTotalMemoryMegabytes ())))))
        end
    

    method getFreeMemoryBytesString () : string =
        begin
        (java_string_of (Obj.repr (self#getFreeMemoryBytesLong ())))
        end
    

    method getFreeMemoryKilobytesString () : string =
        begin
        (java_string_of (Obj.repr (self#getFreeMemoryKilobytesLong ())))
        end
    

    method getFreeMemoryMegabytesString () : string =
        begin
        (java_string_of (Obj.repr (self#getFreeMemoryMegabytesLong ())))
        end
    

    method getMaxMemoryBytesString () : string =
        begin
        (java_string_of (Obj.repr (self#getMaxMemoryBytesLong ())))
        end
    

    method getMaxMemoryKilobytesString () : string =
        begin
        (java_string_of (Obj.repr (self#getMaxMemoryKilobytesLong ())))
        end
    

    method getMaxMemoryMegabytesString () : string =
        begin
        (java_string_of (Obj.repr (self#getMaxMemoryMegabytesLong ())))
        end
    

    method getTotalMemoryBytesString () : string =
        begin
        (java_string_of (Obj.repr (self#getTotalMemoryBytesLong ())))
        end
    

    method getTotalMemoryKilobytesString () : string =
        begin
        (java_string_of (Obj.repr (self#getTotalMemoryKilobytesLong ())))
        end
    

    method getTotalMemoryMegabytesString () : string =
        begin
        (java_string_of (Obj.repr (self#getTotalMemoryMegabytesLong ())))
        end
    

    method getNumberOfThreads () : int =
        begin
        (Obj.magic (java_call_static "Thread.activeCount" (Obj.repr ())))
        end
    

    method getNumberOfThreadsLong () : int =
        begin
        (Obj.obj (java_new "Long" (Obj.repr ((self#getNumberOfThreads ())))))
        end
    

    method getNumberOfThreadsString () : string =
        begin
        (java_string_of (Obj.repr (self#getNumberOfThreadsLong ())))
        end
    

    method collectGarbage () : unit =
        begin
        ignore ((Obj.magic runtime)#gc ())
        end

    initializer
      begin
        ();
        ();
        runtime <- Obj.repr ((Runtime.getRuntime ()))
      end
  end [@@warning "-20"]
let () = java_register_constructor "JvmStatistics" (fun arguments -> Obj.repr (new jvmStatistics (Obj.obj arguments)))


