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
(* package org.allbinary.game.layer *)

open Allbinary_java [@@warning "-33"]
(* import javax.microedition.lcdui.Image *)
(* import javax.microedition.lcdui.game.Sprite *)

class virtual spriteFactoryInterface =
  object
    method virtual createSprite : 'any1 'return . 'any1 * int * int -> 'return
  end


