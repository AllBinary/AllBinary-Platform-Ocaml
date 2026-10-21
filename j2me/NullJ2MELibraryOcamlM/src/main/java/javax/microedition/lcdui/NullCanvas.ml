(* Generated Code Do Not Modify *)
(* package javax.microedition.lcdui *)

open Allbinary_java [@@warning "-33"]
(* import java.util.Stack *)

class nullCanvas () =
  object
    inherit Canvas.canvas ()
    
    

    method setFullScreenMode ((_mode : bool)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method sizeChanged ((_w : int), (_h : int)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method getCommandStack () : java_stack =
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-7"]
    

    method isCommand : 'any1. 'any1 -> bool = fun (_command) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-7-20"]
    

    method addCommand : 'any1. 'any1 -> unit = fun (_command) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method removeCommand : 'any1. 'any1 -> unit = fun (_command) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method removeAllCommands () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method setCommandListener : 'any1. 'any1 -> unit = fun (_l) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method getCustomCommandListener () : CommandListener.commandListener =
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-7"]
    

    method isPaused () : bool =
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-7"]
    

    method removePauseCommand () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method pause () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method unPause () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method process () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method paint : 'any1. 'any1 -> unit = fun (_graphics) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method destroy () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method setPaused ((_isPaused : bool)) : unit =
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-7"]
    

    method pointerDragged ((_x : int), (_y : int)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method pointerPressed ((_x : int), (_y : int)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method pointerReleased ((_x : int), (_y : int)) : unit =
        begin
        ()
        end [@@warning "-7"]

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "NullCanvas" (fun arguments -> Obj.repr (new nullCanvas (Obj.obj arguments)))

let nULL_CANVAS = (new nullCanvas ())
let get_nULL_CANVAS () = nULL_CANVAS
let () = java_register_static "NullCanvas.get_nULL_CANVAS" (fun _ -> Obj.repr (get_nULL_CANVAS ()))


