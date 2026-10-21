(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.media *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.awt.Dimension *)
(* import java.awt.DisplayMode *)
(* import java.awt.GraphicsDevice *)
(* import java.awt.GraphicsEnvironment *)
(* import java.awt.Toolkit *)
(* import org.allbinary.graphics.PointFactory *)
(* import org.allbinary.graphics.Rectangle *)

class displaysUtil () =
  object
    

    method getPrimaryScreenSize : 'return. unit -> 'return = fun () ->
        begin
        let dimension : Obj.t ref = ref ((Obj.repr ((Toolkit.getDefaultToolkit ())#getScreenSize ()))) in ();
        (Obj.magic ((Obj.obj (java_new "Rectangle" (Obj.repr ((Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ())))#zERO_ZERO, (Obj.magic !dimension)#width, (Obj.magic !dimension)#height))))))
        end
    

    method getScreenSizesAsRectangleArray : 'return. unit -> 'return = fun () ->
        begin
        let graphicsEnvironment : Obj.t ref = ref ((Obj.repr (GraphicsEnvironment.getLocalGraphicsEnvironment ()))) in ();
        let graphicsDeviceArray : Obj.t ref = ref ((Obj.repr ((Obj.magic !graphicsEnvironment)#getScreenDevices ()))) in ();
        let graphicsDevice : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        let displayMode : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        let rectangle : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        let size : int ref = ref ((Array.length (Obj.magic !graphicsDeviceArray))) in ();
        let rectangleArray : Obj.t ref = ref ((Obj.repr (Array.make (!size) (Obj.magic 0)))) in ();
        for index = 0 to !size - 1 do
            graphicsDevice := Obj.repr ((Obj.magic !graphicsDeviceArray).(index));
            displayMode := Obj.repr (((Obj.magic !graphicsDevice)#getDisplayMode ()));
            rectangle := Obj.repr ((Obj.obj (java_new "Rectangle" (Obj.repr ((Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ())))#zERO_ZERO, ((Obj.magic !displayMode)#getWidth ()), ((Obj.magic !displayMode)#getHeight ()))))));
            (Obj.magic !rectangleArray).(index) <- (Obj.magic !rectangle)
        done;
        (Obj.magic ((Obj.magic !rectangleArray)))
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "DisplaysUtil" (fun arguments -> Obj.repr (new displaysUtil (Obj.obj arguments)))

let instance = (new displaysUtil ())
let get_instance () = instance
let () = java_register_static "DisplaysUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "DisplaysUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


