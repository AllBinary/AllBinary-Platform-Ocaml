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
(* package org.allbinary.media.graphics.geography.map.racetrack.drop *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.util.BasicArrayListUtil *)
(* import org.allbinary.layer.LayerInterfaceFactoryInterface *)

class raceTrackAdjacentDropLayerFactory () =
  object
    val mutable list : BasicArrayList.basicArrayList = (Obj.magic 0)
    method list = list
    method set_list value' = list <- value'
    val mutable basicArrayListUtil : BasicArrayListUtil.basicArrayListUtil = (Obj.magic 0)
    method basicArrayListUtil = basicArrayListUtil
    method set_basicArrayListUtil value' = basicArrayListUtil <- value'
    
    

    method clear () : unit =
        begin
        ignore (list#clear ())
        end
    

    method getSize () : int =
        begin
        (list#size ())
        end
    

    method getRandomInstance () : LayerInterfaceFactoryInterface.layerInterfaceFactoryInterface =
        begin
        ((Obj.magic (basicArrayListUtil#getRandom (list))) :> LayerInterfaceFactoryInterface.layerInterfaceFactoryInterface)
        end
    

    method add : 'any1. 'any1 -> unit = fun (layerInterfaceFactoryInterface) ->
        let layerInterfaceFactoryInterface = Obj.repr layerInterfaceFactoryInterface in
        begin
        ignore (list#add ((Obj.magic layerInterfaceFactoryInterface)))
        end [@@warning "-20"]

    initializer
      begin
        list <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        basicArrayListUtil <- ((BasicArrayListUtil.getInstance ()) :> BasicArrayListUtil.basicArrayListUtil);
        ();
        ()
      end
  end
let () = java_register_constructor "RaceTrackAdjacentDropLayerFactory" (fun arguments -> Obj.repr (new raceTrackAdjacentDropLayerFactory (Obj.obj arguments)))

let dROP_LAYER_FACTORY = ref ((new raceTrackAdjacentDropLayerFactory ()))
let get_dROP_LAYER_FACTORY () = !dROP_LAYER_FACTORY
let set_dROP_LAYER_FACTORY value' = dROP_LAYER_FACTORY := value'
let () = java_register_static "RaceTrackAdjacentDropLayerFactory.get_dROP_LAYER_FACTORY" (fun _ -> Obj.repr (get_dROP_LAYER_FACTORY ()))

let getInstance () =
        begin
        !dROP_LAYER_FACTORY
        end
let () = java_register_static "RaceTrackAdjacentDropLayerFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


