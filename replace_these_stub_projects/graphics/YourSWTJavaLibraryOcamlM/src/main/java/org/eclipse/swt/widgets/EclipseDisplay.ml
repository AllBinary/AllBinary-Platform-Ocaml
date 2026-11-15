(*

  AllBinary Open License Version 1
  Copyright (c) 2025 AllBinary

  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.

  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.

  Created By: Travis Berthelot

*)
(* Hand written stub of org.eclipse.swt.widgets.Display for the generated OCaml code such as SWTJavaLibraryOcaml.
   SWT is native Java UI code that is not converted. Only the methods the converted code calls are here.
   The module is EclipseDisplay since OCaml module names are simple class names and javax.microedition.lcdui.Display
   is the Display module. *)
(* package org.eclipse.swt.widgets *)

open Allbinary_java [@@warning "-33"]

class eclipseDisplay () =
  object
    (* Waits for an event like SWT. There are no SWT events so it yields. *)
    method sleep () : bool =
        Unix.sleepf 0.001;
        true

    method readAndDispatch () : bool = false

    method wake () : unit = ()

    method isDisposed () : bool = false

    method dispose () : unit = ()
  end
let () = java_register_constructor "EclipseDisplay" (fun arguments -> Obj.repr (new eclipseDisplay (Obj.obj arguments)))

let defaultDisplay : eclipseDisplay option ref = ref None

let getDefault : 'return. unit -> 'return = fun () ->
    match !defaultDisplay with
    | Some display -> Obj.magic display
    | None ->
        let display = new eclipseDisplay () in
        defaultDisplay := Some display;
        Obj.magic display
let () = java_register_static "EclipseDisplay.getDefault" (fun arguments -> Obj.repr (getDefault (Obj.obj arguments)))

let getCurrent : 'return. unit -> 'return = fun () ->
    match !defaultDisplay with
    | Some display -> Obj.magic display
    | None -> Obj.magic java_null
let () = java_register_static "EclipseDisplay.getCurrent" (fun arguments -> Obj.repr (getCurrent (Obj.obj arguments)))
