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
(* package org.allbinary.game.configuration *)

open Allbinary_java [@@warning "-33"]
(* import javax.microedition.lcdui.Gauge *)

class gameConfigurationGauge ((gameConfiguration : GameConfiguration.gameConfiguration)) =
  object
    inherit Gauge.gauge ((gameConfiguration#getName ()), ((gameConfiguration#isModifiable ())#booleanValue ()), (((gameConfiguration#getMaxValue ())#intValue ()) - ((gameConfiguration#getMinValue ())#intValue ())), (((gameConfiguration#getValue ())#intValue ()) - ((gameConfiguration#getMinValue ())#intValue ())))
    

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "GameConfigurationGauge" (fun arguments -> Obj.repr (new gameConfigurationGauge (Obj.obj arguments)))


