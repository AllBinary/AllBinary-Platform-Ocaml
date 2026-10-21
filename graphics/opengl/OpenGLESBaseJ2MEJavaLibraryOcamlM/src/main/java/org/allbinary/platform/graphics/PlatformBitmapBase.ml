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
(* package org.allbinary.platform.graphics *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Image *)
(* import javax.microedition.lcdui.NullImage *)

class platformBitmapBase () =
  object
    

    method getImage : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((NullImage.get_nULL_IMAGE ())))
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "PlatformBitmapBase" (fun arguments -> Obj.repr (new platformBitmapBase (Obj.obj arguments)))


