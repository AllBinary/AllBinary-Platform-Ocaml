(* Generated Code Do Not Modify *)
(* package org.allbinary.graphics.font *)

open Allbinary_java [@@warning "-33"]
(* import javax.microedition.lcdui.Font *)
(* import org.allbinary.logic.string.StringMaker *)

class fontDebugBase () =
  object
    val mutable sET_FONT : string = ""
    method sET_FONT = sET_FONT
    method set_sET_FONT value' = sET_FONT <- value'
    

    method debugMetrics : 'any1 'any3 'any4. 'any1 * float * 'any3 * 'any4 -> unit = fun (_currentFont, (_convertedTextSize : float), _displayMetrics, _stringBuffer) ->
        begin
        ()
        end [@@warning "-20"]
    

    method debugDpi : 'any2. int * 'any2 -> unit = fun ((_densityDpi : int), _stringBuffer) ->
        begin
        ()
        end [@@warning "-20"]
    

    method debugDimension : 'any1 'any4. 'any1 * float * int * 'any4 -> unit = fun (_currentFont, (_convertedTextSize : float), (_longestDimensionTotalPixels : int), _stringBuffer) ->
        begin
        ()
        end [@@warning "-20"]

    initializer
      begin
        sET_FONT <- "setFont";
        ()
      end
  end
let () = java_register_constructor "FontDebugBase" (fun arguments -> Obj.repr (new fontDebugBase (Obj.obj arguments)))

let instanceBase = (new fontDebugBase ())
let get_instanceBase () = instanceBase
let () = java_register_static "FontDebugBase.get_instanceBase" (fun _ -> Obj.repr (get_instanceBase ()))

let getInstance () =
        begin
        instanceBase
        end
let () = java_register_static "FontDebugBase.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


