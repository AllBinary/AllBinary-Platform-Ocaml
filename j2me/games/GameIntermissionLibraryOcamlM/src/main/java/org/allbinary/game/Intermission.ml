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
(* package org.allbinary.game *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.time.TimeDelayHelper *)

class intermission () =
  object (self)
    val mutable enabled : bool = false
    method enabled = enabled
    method set_enabled value' = enabled <- value'
    val mutable timeElapsedHelper : TimeDelayHelper.timeDelayHelper = (Obj.magic 0)
    method timeElapsedHelper = timeElapsedHelper
    method set_timeElapsedHelper value' = timeElapsedHelper <- value'
    val mutable intermissionEnableListener : IntermissionEnableListenerInterface.intermissionEnableListenerInterface = (Obj.magic 0)
    method intermissionEnableListener = intermissionEnableListener
    method set_intermissionEnableListener value' = intermissionEnableListener <- value'
    
    

    method setListener : 'any1. 'any1 -> unit = fun (enableListener) ->
        let enableListener = Obj.repr enableListener in
        begin
        intermissionEnableListener <- (Obj.magic enableListener)
        end [@@warning "-20"]
    

    method getTimeDelayHelper () : TimeDelayHelper.timeDelayHelper =
        begin
        (timeElapsedHelper :> TimeDelayHelper.timeDelayHelper)
        end
    

    method setEnabled ((enabled_arg : bool)) : unit =
        begin
        enabled <- enabled_arg;
        if (self#isEnabled ()) then begin
            ignore ((self#getTimeDelayHelper ())#setStartTimeTNT ())
        end;
        ignore (intermissionEnableListener#notifyIntermission (enabled_arg))
        end
    

    method isEnabled () : bool =
        begin
        enabled
        end

    initializer
      begin
        enabled <- false;
        timeElapsedHelper <- ((new TimeDelayHelper.timeDelayHelper (0)) :> TimeDelayHelper.timeDelayHelper);
        intermissionEnableListener <- ((NullIntermissionEnableListener.getInstance ()) :> IntermissionEnableListenerInterface.intermissionEnableListenerInterface);
        ();
        ()
      end
  end
let () = java_register_constructor "Intermission" (fun arguments -> Obj.repr (new intermission (Obj.obj arguments)))


