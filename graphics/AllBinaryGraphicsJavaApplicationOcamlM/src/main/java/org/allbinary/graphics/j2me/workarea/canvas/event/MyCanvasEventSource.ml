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
(* package org.allbinary.graphics.j2me.workarea.canvas.event *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.swing.tree.MutableTreeNode *)

class myCanvasEventSource ((command_arg : string), treeNode_arg) =
  object
    val mutable command : string = ""
    method command = command
    method set_command value' = command <- value'
    val mutable treeNode : Obj.t = Obj.repr 0
    method treeNode : 'r. 'r = Obj.magic treeNode
    method set_treeNode : 'v. 'v -> unit = fun value' -> treeNode <- Obj.repr value'
    val mutable angle : float = 0.0
    method angle = angle
    method set_angle value' = angle <- value'
    
    
    

    method getCommand () : string =
        begin
        command
        end
    

    method getTreeNode : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic treeNode)))
        end
    

    method getAngle () : float =
        begin
        angle
        end
    

    method setAngle ((angle_arg : float)) : unit =
        begin
        angle <- angle_arg
        end

    initializer
      begin
        ();
        ();
        angle <- 0.;
        ();
        command <- command_arg;
        treeNode <- Obj.repr (treeNode_arg)
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "MyCanvasEventSource" (fun arguments -> Obj.repr (new myCanvasEventSource (Obj.obj arguments)))


