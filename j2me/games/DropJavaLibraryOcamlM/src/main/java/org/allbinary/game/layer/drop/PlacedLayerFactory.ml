(* Generated Code Do Not Modify *)
(* package org.allbinary.game.layer.drop *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.layer.AllBinaryLayerFactoryInterface *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.util.BasicArrayListUtil *)

class placedLayerFactory () =
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
    

    method getRandomInstance () : AllBinaryLayerFactoryInterface.allBinaryLayerFactoryInterface =
        begin
        ((Obj.magic (basicArrayListUtil#getRandom (list))) :> AllBinaryLayerFactoryInterface.allBinaryLayerFactoryInterface)
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
let () = java_register_constructor "PlacedLayerFactory" (fun arguments -> Obj.repr (new placedLayerFactory (Obj.obj arguments)))

let instance = (new placedLayerFactory ())
let get_instance () = instance
let () = java_register_static "PlacedLayerFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "PlacedLayerFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


