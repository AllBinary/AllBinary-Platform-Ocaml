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

class myCanvasEvent ((source : Obj.t)) =
  object (self)
    inherit EventObject.eventObject (source) as super
    
    

    method getSource () : Obj.t =
        begin
        (Obj.repr ((super#getSource ())))
        end [@@warning "-7"]
    

    method toString () : string =
        begin
        (super#toString ())
        end [@@warning "-7"]
    

    method getCommand () : string =
        begin
        let myEventSource : MyCanvasEventSource.myCanvasEventSource ref = ref (((Obj.magic (self#getSource ())) :> MyCanvasEventSource.myCanvasEventSource)) in ();
        (!myEventSource#getCommand ())
        end [@@warning "-7"]
    

    method getTreeNode : 'return. unit -> 'return = fun () ->
        begin
        let myEventSource : MyCanvasEventSource.myCanvasEventSource ref = ref (((Obj.magic (self#getSource ())) :> MyCanvasEventSource.myCanvasEventSource)) in ();
        (Obj.magic ((!myEventSource#getTreeNode ())))
        end [@@warning "-7"]
    

    method getAngle () : float =
        begin
        let myEventSource : MyCanvasEventSource.myCanvasEventSource ref = ref (((Obj.magic (self#getSource ())) :> MyCanvasEventSource.myCanvasEventSource)) in ();
        (!myEventSource#getAngle ())
        end [@@warning "-7"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "MyCanvasEvent" (fun arguments -> Obj.repr (new myCanvasEvent (Obj.obj arguments)))


