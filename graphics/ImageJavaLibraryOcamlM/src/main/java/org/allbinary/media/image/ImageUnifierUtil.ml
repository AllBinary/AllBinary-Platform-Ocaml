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
(* package org.allbinary.media.image *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.awt *)
(* import java.awt.image.BufferedImage *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonLabels *)

class imageUnifierUtil () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable imageUtil : Obj.t = Obj.repr 0
    method imageUtil : 'r. 'r = Obj.magic imageUtil
    method set_imageUtil : 'v. 'v -> unit = fun value' -> imageUtil <- Obj.repr value'
    
    

    method getDefaultConfiguration : 'return. unit -> 'return = fun () ->
        begin
        let ge : Obj.t ref = ref ((Obj.repr (GraphicsEnvironment.getLocalGraphicsEnvironment ()))) in ();
        let gd : Obj.t ref = ref ((Obj.repr ((Obj.magic !ge)#getDefaultScreenDevice ()))) in ();
        (Obj.magic (((Obj.magic !gd)#getDefaultConfiguration ())))
        end
    

    method getImage : 'any2 'return. _ * 'any2 -> 'return = fun (bufferedImageArray, imageUnifierProperties) ->
        let imageUnifierProperties = Obj.repr imageUnifierProperties in
        begin
        let newBufferedImage : Obj.t ref = ref ((Obj.repr ((Obj.magic imageUtil)#create (((Obj.magic imageUnifierProperties)#getWidth ()), ((Obj.magic imageUnifierProperties)#getHeight ()))))) in ();
        let commonLabels : CommonLabels.commonLabels ref = ref (((CommonLabels.getInstance ()) :> CommonLabels.commonLabels)) in ();
        ignore ((Obj.magic logUtil)#putF ((((("Setting Image - " ^ java_string_of (Obj.repr (!commonLabels#wIDTH_LABEL))) ^ java_string_of (Obj.repr (((Obj.magic !newBufferedImage)#getWidth ())))) ^ java_string_of (Obj.repr (!commonLabels#hEIGHT_LABEL))) ^ java_string_of (Obj.repr (((Obj.magic !newBufferedImage)#getHeight ())))), self, "getImage"));
        let g : Obj.t ref = ref ((Obj.repr ((Obj.magic !newBufferedImage)#createGraphics ()))) in ();
        let columnIndex : int ref = ref (0) in ();
        let rowIndex : int ref = ref (0) in ();
        for index = 0 to (Array.length bufferedImageArray) - 1 do
            let x : int ref = ref ((((((Obj.magic imageUnifierProperties)#getImageUnifierCell ())#getWidth ())#intValue ()) * (let value = !columnIndex in columnIndex := !columnIndex + 1; value))) in ();
            let y : int ref = ref ((((((Obj.magic imageUnifierProperties)#getImageUnifierCell ())#getHeight ())#intValue ()) * !rowIndex)) in ();
            ignore ((Obj.magic logUtil)#putF (((((("Adding Image: " ^ java_string_of (Obj.repr (index))) ^ " x: ") ^ java_string_of (Obj.repr (!x))) ^ " y: ") ^ java_string_of (Obj.repr (!y))), self, "getImage"));
            ignore ((Obj.magic !g)#drawImage (bufferedImageArray.(index), !x, !y, ((((Obj.magic imageUnifierProperties)#getImageUnifierCell ())#getWidth ())#intValue ()), ((((Obj.magic imageUnifierProperties)#getImageUnifierCell ())#getHeight ())#intValue ()), (Obj.magic 0)));
            let totalColumnsMinusOne : int ref = ref ((((((Obj.magic imageUnifierProperties)#getColumns ())#intValue ()) - 1))) in ();
            if (!columnIndex > !totalColumnsMinusOne) then begin
                rowIndex := !rowIndex + 1;
                columnIndex := 0
            end
        done;
        ignore ((Obj.magic !g)#dispose ());
        (Obj.magic ((Obj.magic !newBufferedImage)))
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        imageUtil <- (Obj.repr (Obj.magic (java_call_static "ImageUtil.getInstance" (Obj.repr ()))));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "ImageUnifierUtil" (fun arguments -> Obj.repr (new imageUnifierUtil (Obj.obj arguments)))

let instance = (new imageUnifierUtil ())
let get_instance () = instance
let () = java_register_static "ImageUnifierUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ImageUnifierUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


