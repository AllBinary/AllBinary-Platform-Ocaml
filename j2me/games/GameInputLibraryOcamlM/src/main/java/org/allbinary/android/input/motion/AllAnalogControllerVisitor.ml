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
(* package org.allbinary.android.input.motion *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.input.analog.AnalogLocationInput *)
(* import org.allbinary.game.input.analog.AnalogLocationInputFactory *)
(* import org.allbinary.layer.AllBinaryLayerManager *)
(* import org.allbinary.util.BasicArrayList *)

class allAnalogControllerVisitor () =
  object
    inherit AnalogControllerVisitor.analogControllerVisitor ()
    

    method process : 'any1 'any2. 'any1 * 'any2 -> unit = fun (allbinaryLayerManager, analogLocationInputProcessor) ->
        let allbinaryLayerManager = Obj.repr allbinaryLayerManager in
        let analogLocationInputProcessor = Obj.repr analogLocationInputProcessor in
        begin
        let analogLocationInputList : BasicArrayList.basicArrayList ref = ref ((((AnalogLocationInputFactory.getInstance ())#getList ()) :> BasicArrayList.basicArrayList)) in ();
        let analogLocationInput : AnalogLocationInput.analogLocationInput ref = ref (((Obj.magic 0) :> AnalogLocationInput.analogLocationInput)) in ();
        for index = ((!analogLocationInputList#size ()) - 1) downto 0 do
            analogLocationInput := (Obj.magic (!analogLocationInputList#get (index)));
            ignore ((Obj.magic analogLocationInputProcessor)#process ((Obj.magic allbinaryLayerManager), !analogLocationInput))
        done
        end [@@warning "-7-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "AllAnalogControllerVisitor" (fun arguments -> Obj.repr (new allAnalogControllerVisitor (Obj.obj arguments)))


