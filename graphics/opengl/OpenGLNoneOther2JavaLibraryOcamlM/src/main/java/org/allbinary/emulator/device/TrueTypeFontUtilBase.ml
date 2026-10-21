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
(* package org.allbinary.emulator.device *)

open Allbinary_java [@@warning "-33"]

class trueTypeFontUtilBase ((_scale : int)) =
  object
    
    

    method getAsTextureSize ((_textureSize : int)) : int =
        begin
        (-1)
        end
    

    method getCellSize ((_cellSize : int)) : int =
        begin
        (-1)
        end

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "TrueTypeFontUtilBase" (fun arguments -> Obj.repr (new trueTypeFontUtilBase (Obj.obj arguments)))


