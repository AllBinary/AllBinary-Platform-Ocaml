(* Generated Code Do Not Modify *)
(* package org.allbinary.game.input.analog *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class analogLocationInputFactory () =
  object
    val mutable list : BasicArrayList.basicArrayList = (Obj.magic 0)
    method list = list
    method set_list value' = list <- value'
    
    

    method addPlayer ((playerInputId : int)) : unit =
        begin
        let analogLocationInput : AnalogLocationInput.analogLocationInput ref = ref (((AnalogLocationInput.get_nULL_ANALOG_LOCATION_INPUT ()) :> AnalogLocationInput.analogLocationInput)) in ();
        if (playerInputId < (list#size ())) then begin
            analogLocationInput := (Obj.magic (list#get (playerInputId)))
        end;
        if ((Obj.repr !analogLocationInput) == (Obj.repr (AnalogLocationInput.get_nULL_ANALOG_LOCATION_INPUT ()))) then begin
            analogLocationInput := (new AnalogLocationInput.analogLocationInput (playerInputId));
            ignore (list#add (!analogLocationInput))
        end
        end
    

    method getInstanceForPlayer : 'return. int -> 'return = fun ((playerInputId : int)) ->
        begin
        (Obj.magic ((Obj.magic (list#get (playerInputId)))))
        end
    

    method getList : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (list))
        end

    initializer
      begin
        list <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        ();
        ()
      end
  end
let () = java_register_constructor "AnalogLocationInputFactory" (fun arguments -> Obj.repr (new analogLocationInputFactory (Obj.obj arguments)))

let instance = (new analogLocationInputFactory ())
let get_instance () = instance
let () = java_register_static "AnalogLocationInputFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (instance))
        end
let () = java_register_static "AnalogLocationInputFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


