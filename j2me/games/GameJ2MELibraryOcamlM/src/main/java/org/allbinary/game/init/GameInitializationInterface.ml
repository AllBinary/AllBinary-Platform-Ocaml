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
(* package org.allbinary.game.init *)

open Allbinary_java [@@warning "-33"]
(* import javax.microedition.lcdui.CommandListener *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)

class virtual gameInitializationInterface =
  object
    method virtual init : 'any1 'any2 . 'any1 * 'any2 * int -> unit
  end


