(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.midlet *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.thread.ABRunnable *)
(* import org.allbinary.thread.NullABRunnable *)

class licenseCheckRunnableFactory () =
  object
    

    method getInstance : 'any1. 'any1 -> ABRunnable.aBRunnable = fun (_specialDemoGameMidlet) ->
        begin
        ((NullABRunnable.getInstance ()) :> ABRunnable.aBRunnable)
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "LicenseCheckRunnableFactory" (fun arguments -> Obj.repr (new licenseCheckRunnableFactory (Obj.obj arguments)))


