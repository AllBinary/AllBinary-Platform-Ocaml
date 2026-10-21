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
(* package org.allbinary.media.graphics.geography.map.racetrack *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.NullUtil *)

class customMapGeneratorBase () =
  object
    

    method copyMapIntoCustomMap () : unit =
        begin
        ()
        end
    

    method getCustomMapArray () : int array array =
        begin
        (NullUtil.getInstance ())#nULL_INT_ARRAY_ARRAY
        end
    

    method getCustomType ((_column : int), (_row : int), (_currentType : int)) : int =
        begin
        (-1)
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "CustomMapGeneratorBase" (fun arguments -> Obj.repr (new customMapGeneratorBase (Obj.obj arguments)))


