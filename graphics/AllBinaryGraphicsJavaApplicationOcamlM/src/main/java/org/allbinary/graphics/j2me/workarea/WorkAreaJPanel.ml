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
(* package org.allbinary.graphics.j2me.workarea *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.awt *)
(* import java.util.EventListener *)
(* import java.util.HashMap *)
(* import java.util.LinkedList *)
(* import javax.swing *)
(* import javax.swing.tree.MutableTreeNode *)
(* import org.allbinary.dom.DomHelper *)
(* import org.allbinary.graphics.j2me.StatusFactory *)
(* import org.allbinary.graphics.j2me.workarea.canvas.CanvasDom *)
(* import org.allbinary.graphics.j2me.workarea.canvas.CanvasJPanel *)
(* import org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent *)
(* import org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventListener *)
(* import org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventService *)
(* import org.allbinary.graphics.j2me.workarea.properties.PropertiesJPanel *)
(* import org.allbinary.graphics.j2me.workarea.tools.ToolJPanel *)
(* import org.allbinary.log.LOGGING *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

let document : Obj.t ref = ref ((Obj.repr (Obj.magic 0)))
let get_document () = Obj.magic !document
let set_document value' = document := Obj.repr value'
let () = java_register_static "WorkAreaJPanel.get_document" (fun _ -> Obj.repr (get_document ()))

let getDocument : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic !document)))
        end

let () = java_register_static "WorkAreaJPanel.getDocument" (fun arguments -> Obj.repr (getDocument (Obj.obj arguments)))
class workAreaJPanel (workAreaDom, dimension) =
  object (self)
    inherit JPanel.jPanel () as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable canvasJPanelList : Obj.t = Obj.repr 0
    method canvasJPanelList : 'r. 'r = Obj.magic canvasJPanelList
    method set_canvasJPanelList : 'v. 'v -> unit = fun value' -> canvasJPanelList <- Obj.repr value'
    val mutable canvasHolderJPanel : Obj.t = Obj.repr 0
    method canvasHolderJPanel : 'r. 'r = Obj.magic canvasHolderJPanel
    method set_canvasHolderJPanel : 'v. 'v -> unit = fun value' -> canvasHolderJPanel <- Obj.repr value'
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    val mutable selectedFrame : int = 0
    method selectedFrame = selectedFrame
    method set_selectedFrame value' = selectedFrame <- value'
    val mutable propertiesJPanel : PropertiesJPanel.propertiesJPanel = (Obj.magic 0)
    method propertiesJPanel = propertiesJPanel
    method set_propertiesJPanel value' = propertiesJPanel <- value'
    val mutable workAreaJTreeJPanel : Obj.t = Obj.repr 0
    method workAreaJTreeJPanel : 'r. 'r = Obj.magic workAreaJTreeJPanel
    method set_workAreaJTreeJPanel : 'v. 'v -> unit = fun value' -> workAreaJTreeJPanel <- Obj.repr value'
    val mutable isPlaying : bool = false
    method isPlaying = isPlaying
    method set_isPlaying value' = isPlaying <- value'
    val mutable innerJPanel : Obj.t = Obj.repr 0
    method innerJPanel : 'r. 'r = Obj.magic innerJPanel
    method set_innerJPanel : 'v. 'v -> unit = fun value' -> innerJPanel <- Obj.repr value'
    
    
    

    method initMyComponents : 'any1. 'any1 -> unit = fun (dimension) ->
        let dimension = Obj.repr dimension in
        begin
        workAreaJTreeJPanel <- Obj.repr ((new WorkAreaJTreeJPanel.workAreaJTreeJPanel (name)));
        canvasHolderJPanel <- Obj.repr ((new JPanel.jPanel ()));
        ignore ((Obj.magic canvasHolderJPanel)#setSize ((Obj.magic dimension)));
        ignore ((Obj.magic canvasHolderJPanel)#setLayout ((new GridLayout.gridLayout (1, 1))));
        ignore (self#setSize ((Obj.magic dimension)));
        canvasJPanelList <- Obj.repr ((new LinkedList.linkedList ()));
        let gridBagLayout : Obj.t ref = ref ((Obj.repr (new GridBagLayout.gridBagLayout ()))) in ();
        let gridBagConstraints : Obj.t ref = ref ((Obj.repr (new GridBagConstraints.gridBagConstraints ()))) in ();
        ignore ((Obj.magic innerJPanel)#setLayout ((Obj.magic !gridBagLayout)));
        ignore ((Obj.magic !gridBagConstraints)#set_gridx (0));
        ignore ((Obj.magic !gridBagConstraints)#set_gridy (0));
        ignore ((Obj.magic !gridBagConstraints)#set_gridwidth (1));
        ignore ((Obj.magic !gridBagConstraints)#set_fill ((java.get_awt ())#gridBagConstraints#bOTH));
        ignore ((Obj.magic !gridBagConstraints)#set_weightx (.05));
        ignore ((Obj.magic !gridBagConstraints)#set_weighty (.05));
        let toolJPanel : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "ToolJPanel" (Obj.repr ()))))) in ();
        ignore ((Obj.magic !gridBagLayout)#setConstraints ((Obj.magic !toolJPanel), (Obj.magic !gridBagConstraints)));
        ignore ((Obj.magic innerJPanel)#add ((Obj.magic !toolJPanel)));
        gridBagConstraints := Obj.repr ((new GridBagConstraints.gridBagConstraints ()));
        ignore ((Obj.magic !gridBagConstraints)#set_gridx (1));
        ignore ((Obj.magic !gridBagConstraints)#set_gridy (0));
        ignore ((Obj.magic !gridBagConstraints)#set_gridwidth (6));
        ignore ((Obj.magic !gridBagConstraints)#set_fill ((java.get_awt ())#gridBagConstraints#bOTH));
        ignore ((Obj.magic !gridBagConstraints)#set_weightx (1));
        ignore ((Obj.magic !gridBagConstraints)#set_weighty (1));
        ignore ((Obj.magic !gridBagLayout)#setConstraints ((Obj.magic canvasHolderJPanel), (Obj.magic !gridBagConstraints)));
        ignore ((Obj.magic innerJPanel)#add ((Obj.magic canvasHolderJPanel)));
        gridBagConstraints := Obj.repr ((new GridBagConstraints.gridBagConstraints ()));
        ignore ((Obj.magic !gridBagConstraints)#set_gridx (8));
        ignore ((Obj.magic !gridBagConstraints)#set_gridy (0));
        ignore ((Obj.magic !gridBagConstraints)#set_gridwidth ((java.get_awt ())#gridBagConstraints#rEMAINDER));
        ignore ((Obj.magic !gridBagConstraints)#set_fill ((java.get_awt ())#gridBagConstraints#bOTH));
        ignore ((Obj.magic !gridBagConstraints)#set_weightx (.1));
        ignore ((Obj.magic !gridBagConstraints)#set_weighty (.1));
        propertiesJPanel <- (new PropertiesJPanel.propertiesJPanel ());
        ignore ((Obj.magic !gridBagLayout)#setConstraints (propertiesJPanel, (Obj.magic !gridBagConstraints)));
        ignore ((Obj.magic innerJPanel)#add (propertiesJPanel));
        ignore (MyCanvasEventService.addListener ((Obj.magic self)))
        end [@@warning "-7-20"]
    

    method getCanvasHashMap () : java_hash_map =
        begin
        let canvasJPanelHashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        let size : int ref = ref (((Obj.magic canvasJPanelList)#size ())) in ();
        for index = 0 to !size - 1 do
            let canvasJPanel : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic canvasJPanelList)#get (index))))) in ();
            ignore (!canvasJPanelHashMap#put (((Obj.magic !canvasJPanel)#getTreeNode ()), (Obj.obj (java_new "Integer" (Obj.repr (index))))))
        done;
        (!canvasJPanelHashMap :> java_hash_map)
        end [@@warning "-7"]
    

    method play () : unit =
        begin
        isPlaying <- true
        end [@@warning "-7"]
    

    method stop () : unit =
        begin
        isPlaying <- false
        end [@@warning "-7"]
    

    method isPlaying () : bool =
        begin
        isPlaying
        end [@@warning "-7"]
    

    method getName () : string =
        begin
        name
        end [@@warning "-7"]
    

    method setName ((value : string)) : unit =
        begin
        name <- value
        end [@@warning "-7"]
    

    method disableCanvas () : unit =
        begin
        ignore ((Obj.magic canvasHolderJPanel)#removeAll ())
        end [@@warning "-7"]
    

    method enableCanvas () : unit =
        begin
        ignore ((Obj.magic canvasHolderJPanel)#add ((Obj.magic (self#getCurrentFrame ()))))
        end [@@warning "-7"]
    

    method deselect () : unit =
        begin
        ignore (super#setVisible (false))
        end [@@warning "-7"]
    

    method select () : unit =
        begin
        ignore (super#setVisible (true));
        if (((Obj.magic canvasHolderJPanel)#getComponentCount ()) == 1) then begin
            let component : Obj.t ref = ref ((Obj.repr ((Obj.magic canvasHolderJPanel)#getComponent (0)))) in ();
            if ((Obj.magic !component) != (Obj.magic 0)) then begin
                ignore ((Obj.magic !component)#repaint ())
            end
        end
        end [@@warning "-7"]
    

    method changeZoom ((factor : int)) : unit =
        begin
        let size : int ref = ref (((Obj.magic canvasJPanelList)#size ())) in ();
        for index = 0 to !size - 1 do
            let canvasJPanel : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic canvasJPanelList)#get (index))))) in ();
            ignore (((Obj.magic !canvasJPanel)#getGrid ())#setZoom (((((Obj.magic !canvasJPanel)#getGrid ())#getZoom ()) + factor)))
        done
        end [@@warning "-7"]
    

    method getCurrentFrame : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic ((Obj.magic canvasJPanelList)#get (selectedFrame)))))
        end [@@warning "-7"]
    

    method initDuplicate : 'any1. 'any1 -> unit = fun (newCanvasJPanel) ->
        let newCanvasJPanel = Obj.repr newCanvasJPanel in
        begin
        if ((Obj.magic newCanvasJPanel) != (Obj.magic 0)) then begin
            ignore ((Obj.magic canvasJPanelList)#add ((Obj.magic newCanvasJPanel)));
            (self#select ((((Obj.magic canvasJPanelList)#size ()) - 1)))
        end
        end [@@warning "-7-20"]
    

    method duplicate : 'any1. 'any1 -> unit = fun (treeNode) ->
        let treeNode = Obj.repr treeNode in
        begin
        let canvasJPanelHashMap : java_hash_map ref = ref (((self#getCanvasHashMap ()) :> java_hash_map)) in ();
        if (!canvasJPanelHashMap#containsKey ((Obj.magic treeNode))) then begin
            let frameInteger : int ref = ref ((Obj.magic (!canvasJPanelHashMap#get ((Obj.magic treeNode))))) in ();
            let canvasJPanel : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic canvasJPanelList)#get (!frameInteger))))) in ();
            (self#initDuplicate (((Obj.magic !canvasJPanel)#duplicate ())))
        end
        end [@@warning "-7-20"]
    

    method autoRotate ((increments : int), (totalAngle : int)) : unit =
        begin
        let incrementAngle : int ref = ref (((totalAngle / increments))) in ();
        for index = 1 to increments - 1 do
            let canvasJPanel : Obj.t ref = ref ((Obj.repr (Obj.magic (self#getCurrentFrame ())))) in ();
            let newCanvasJPanel : Obj.t ref = ref ((Obj.repr ((Obj.magic !canvasJPanel)#duplicate ()))) in ();
            ignore ((Obj.magic !newCanvasJPanel)#setAngle ((!incrementAngle * index)));
            (self#initDuplicate ((Obj.magic !newCanvasJPanel)))
        done
        end [@@warning "-7"]
    

    method explodeAll () : unit =
        begin
        let canvasJPanel : Obj.t ref = ref ((Obj.repr (Obj.magic (self#getCurrentFrame ())))) in ();
        ignore ((Obj.magic !canvasJPanel)#explodeAll ())
        end [@@warning "-7"]
    

    method autoExplode ((numberOfFrames : int), (explodeType : int)) : unit =
        begin
        for index = 1 to numberOfFrames - 1 do
            let canvasJPanel : Obj.t ref = ref ((Obj.repr (Obj.magic (self#getCurrentFrame ())))) in ();
            let newCanvasJPanel : Obj.t ref = ref ((Obj.repr ((Obj.magic !canvasJPanel)#duplicate ()))) in ();
            ignore ((Obj.magic !newCanvasJPanel)#explode ((index + 1), explodeType));
            (self#initDuplicate ((Obj.magic !newCanvasJPanel)))
        done
        end [@@warning "-7"]
    

    method autoMirror () : unit =
        begin
        let canvasJPanel : Obj.t ref = ref ((Obj.repr (Obj.magic (self#getCurrentFrame ())))) in ();
        let newCanvasJPanel : Obj.t ref = ref ((Obj.repr ((Obj.magic !canvasJPanel)#duplicate ()))) in ();
        ignore ((Obj.magic !newCanvasJPanel)#mirror ());
        (self#initDuplicate ((Obj.magic !newCanvasJPanel)))
        end [@@warning "-7"]
    

    (* Java overload select(INT) is not converted: OCaml has one method per name *)
    

    (* Java overload select(MutableTreeNode) is not converted: OCaml has one method per name *)
    

    method toDocument : 'return. unit -> 'return = fun () ->
        begin
        document := Obj.repr (((DomHelper.getInstance ())#createDocument ()));
        let workAreaNode : Obj.t ref = ref ((Obj.repr ((Obj.magic !document)#createElement ((WorkAreaDom.get_wORKAREA ()))))) in ();
        let nameNode : Obj.t ref = ref ((Obj.repr ((Obj.magic !document)#createElement ((WorkAreaDom.get_nAME ()))))) in ();
        let nameTextNode : Obj.t ref = ref ((Obj.repr ((Obj.magic !document)#createTextNode (name)))) in ();
        ignore ((Obj.magic !nameNode)#appendChild ((Obj.magic !nameTextNode)));
        let framesNode : Obj.t ref = ref ((Obj.repr ((Obj.magic !document)#createElement ((WorkAreaDom.get_fRAMES ()))))) in ();
        let size : int ref = ref (((Obj.magic canvasJPanelList)#size ())) in ();
        for index = 0 to !size - 1 do
            let canvasJPanel : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic canvasJPanelList)#get (index))))) in ();
            ignore ((Obj.magic !framesNode)#appendChild (((Obj.magic !canvasJPanel)#toDom ())))
        done;
        ignore ((Obj.magic !workAreaNode)#appendChild ((Obj.magic !nameNode)));
        ignore ((Obj.magic !workAreaNode)#appendChild ((Obj.magic !framesNode)));
        ignore ((Obj.magic !document)#appendChild ((Obj.magic !workAreaNode)));
        (Obj.magic ((Obj.magic !document)))
        end [@@warning "-7"]
    

    method initComponents () : unit =
        begin
        innerJPanel <- Obj.repr ((new JPanel.jPanel ()));
        ignore (self#setLayout ((new GridLayout.gridLayout (1, 1))));
        ignore ((Obj.magic innerJPanel)#addKeyListener ((object (self)
            inherit KeyAdapter.keyAdapter () as super
            

            method keyTyped : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#innerJPanelKeyTyped ((Obj.magic evt)))
                end [@@warning "-20"]
            

            method keyPressed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#innerJPanelKeyPressed ((Obj.magic evt)))
                end [@@warning "-20"]
            

            method keyReleased : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#innerJPanelKeyReleased ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore (self#add ((Obj.magic innerJPanel)))
        end [@@warning "-7"]
    

    method innerJPanelKeyReleased : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        ignore ((Obj.magic (java_call_static "StatusFactory.getInstance" (Obj.repr ())))#setStatus ("Key Pressed1"))
        end [@@warning "-7-20"]
    

    method innerJPanelKeyPressed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        ignore ((Obj.magic (java_call_static "StatusFactory.getInstance" (Obj.repr ())))#setStatus ("Key Pressed2"))
        end [@@warning "-7-20"]
    

    method innerJPanelKeyTyped : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        ignore ((Obj.magic (java_call_static "StatusFactory.getInstance" (Obj.repr ())))#setStatus ("Key Pressed3"))
        end [@@warning "-7-20"]
    

    method keyPressed : 'any1. 'any1 -> unit = fun (keyEvent) ->
        let keyEvent = Obj.repr keyEvent in
        begin
        ignore ((self#getCurrentFrame ())#keyPressed ((Obj.magic keyEvent)))
        end [@@warning "-7-20"]
    

    method keyReleased : 'any1. 'any1 -> unit = fun (_keyEvent) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method keyTyped : 'any1. 'any1 -> unit = fun (_keyEvent) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method delete : 'any1. 'any1 -> unit = fun (evt) ->
        let evt = Obj.repr evt in
        begin
        let canvasJPanelHashMap : java_hash_map ref = ref (((self#getCanvasHashMap ()) :> java_hash_map)) in ();
        if (!canvasJPanelHashMap#containsKey (((Obj.magic evt)#getTreeNode ()))) then begin
            ignore ((Obj.magic canvasHolderJPanel)#removeAll ());
            let frameInt : int ref = ref ((Obj.magic (!canvasJPanelHashMap#get (((Obj.magic evt)#getTreeNode ()))))) in ();
            ignore ((Obj.magic canvasJPanelList)#remove (!frameInt));
            (self#select (!frameInt))
        end
        end [@@warning "-7-20"]
    

    (* Java overload duplicate(MyCanvasEvent) is not converted: OCaml has one method per name *)
    

    (* Java overload select(MyCanvasEvent) is not converted: OCaml has one method per name *)
    

    method rotate : 'any1. 'any1 -> unit = fun (evt) ->
        let evt = Obj.repr evt in
        begin
        let canvasJPanelHashMap : java_hash_map ref = ref (((self#getCanvasHashMap ()) :> java_hash_map)) in ();
        let treeNode : Obj.t ref = ref ((Obj.repr ((Obj.magic evt)#getTreeNode ()))) in ();
        let frameInt : int ref = ref ((Obj.magic (!canvasJPanelHashMap#get (((Obj.magic evt)#getTreeNode ()))))) in ();
        let canvasJPanel : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic canvasJPanelList)#get (!frameInt))))) in ();
        if ((Obj.magic !canvasJPanel) != (Obj.magic 0)) then begin
            ignore ((Obj.magic !canvasJPanel)#addAngle (((Obj.magic evt)#getAngle ())));
            (self#select (!frameInt))
        end;
        ignore ((Obj.magic (java_call_static "StatusFactory.getInstance" (Obj.repr ())))#setStatus ("Canvas Rotated"))
        end [@@warning "-7-20"]
    

    method explode : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (self#explodeAll ())
        end [@@warning "-7-20"]
    

    (* Java overload autoExplode(MyCanvasEvent) is not converted: OCaml has one method per name *)
    

    method center () : unit =
        begin
        let canvasJPanel : Obj.t ref = ref ((Obj.repr (Obj.magic (self#getCurrentFrame ())))) in ();
        ignore ((Obj.magic !canvasJPanel)#center ())
        end [@@warning "-7"]
    

    (* Java overload center(MyCanvasEvent) is not converted: OCaml has one method per name *)
    

    method run () : unit =
        begin
        (try
            while true do
                if (self#isPlaying ()) then begin
                    let size : int ref = ref (((Obj.magic canvasJPanelList)#size ())) in ();
                    for index = 0 to !size - 1 do
                        if (not (self#isPlaying ())) then begin
                            raise Java_break
                        end;
                        (self#select (index));
                        ignore (Unix.sleepf (Float.of_int (100) /. 1000.0))
                    done
                end else begin
                    ignore (Unix.sleepf (Float.of_int (500) /. 1000.0))
                end;
                ignore (Unix.sleepf (Float.of_int (250) /. 1000.0))
            done
        with e -> begin
            ()
        end)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        canvasJPanelList <- (Obj.repr (Obj.magic 0));
        canvasHolderJPanel <- (Obj.repr (Obj.magic 0));
        name <- "";
        selectedFrame <- 0;
        propertiesJPanel <- ((Obj.magic 0) :> PropertiesJPanel.propertiesJPanel);
        workAreaJTreeJPanel <- (Obj.repr (Obj.magic 0));
        isPlaying <- false;
        innerJPanel <- (Obj.repr (Obj.magic 0));
        ();
        (try
            (self#initComponents ());
            name <- (workAreaDom#getName ());
            (self#initMyComponents (dimension));
            let canvasNodeList : BasicArrayList.basicArrayList ref = ref (((workAreaDom#getCanvasNodes ()) :> BasicArrayList.basicArrayList)) in ();
            let numberOfFrames : int ref = ref ((!canvasNodeList#size ())) in ();
            for index = 0 to !numberOfFrames - 1 do
                let node : Obj.t ref = ref ((Obj.repr (Obj.magic (!canvasNodeList#get (index))))) in ();
                let canvasJPanel : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "CanvasJPanel" (Obj.repr ((Obj.magic workAreaJTreeJPanel), (self#getSize ()), (Obj.obj (java_new "CanvasDom" (Obj.repr ((Obj.magic !node))))))))))) in ();
                ignore ((Obj.magic canvasJPanelList)#add ((Obj.magic !canvasJPanel)))
            done;
            selectedFrame <- 0;
            ignore ((Obj.magic canvasHolderJPanel)#add ((Obj.magic (self#getCurrentFrame ()))));
            ignore (propertiesJPanel#set ((Obj.magic workAreaJTreeJPanel)))
        with e -> begin
            if (LOGGING.contains ((LOGGING.get_lOADINGERROR ()))) then begin
                ignore ((Obj.magic logUtil)#put ("Constructor Error", self, "WorkAreaJPanel", e))
            end;
            raise e
        end)
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "WorkAreaJPanel" (fun arguments -> Obj.repr (new workAreaJPanel (Obj.obj arguments)))


