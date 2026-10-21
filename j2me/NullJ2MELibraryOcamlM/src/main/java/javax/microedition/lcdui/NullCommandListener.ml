(* Generated Code Do Not Modify *)
(* package javax.microedition.lcdui *)

open Allbinary_java [@@warning "-33"]

class nullCommandListener () =
  object
    

    method commandAction : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_c, _d) ->
        begin
        ()
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "NullCommandListener" (fun arguments -> Obj.repr (new nullCommandListener (Obj.obj arguments)))

let nULL_COMMAND_LISTENER = (new nullCommandListener ())
let get_nULL_COMMAND_LISTENER () = nULL_COMMAND_LISTENER
let () = java_register_static "NullCommandListener.get_nULL_COMMAND_LISTENER" (fun _ -> Obj.repr (get_nULL_COMMAND_LISTENER ()))


