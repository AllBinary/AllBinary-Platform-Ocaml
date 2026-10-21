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
(* import javax.swing *)
(* import javax.swing.tree.DefaultMutableTreeNode *)
(* import javax.swing.tree.MutableTreeNode *)
(* import javax.swing.tree.TreePath *)
(* import org.allbinary.graphics.j2me.workarea.canvas.CanvasTreeLabel *)
(* import org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent *)
(* import org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventService *)
(* import org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventSource *)
(* import org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEvent *)
(* import org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventService *)
(* import org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventSource *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class workAreaJTreeJPanel ((workAreaName : string)) =
  object (self)
    inherit JPanel.jPanel ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable rootTreeNode : Obj.t = Obj.repr 0
    method rootTreeNode : 'r. 'r = Obj.magic rootTreeNode
    method set_rootTreeNode : 'v. 'v -> unit = fun value' -> rootTreeNode <- Obj.repr value'
    val mutable workAreaJTree : Obj.t = Obj.repr 0
    method workAreaJTree : 'r. 'r = Obj.magic workAreaJTree
    method set_workAreaJTree : 'v. 'v -> unit = fun value' -> workAreaJTree <- Obj.repr value'
    val mutable highlightedBasicArrayList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method highlightedBasicArrayList = highlightedBasicArrayList
    method set_highlightedBasicArrayList value' = highlightedBasicArrayList <- value'
    val mutable copyJMenuItem : Obj.t = Obj.repr 0
    method copyJMenuItem : 'r. 'r = Obj.magic copyJMenuItem
    method set_copyJMenuItem : 'v. 'v -> unit = fun value' -> copyJMenuItem <- Obj.repr value'
    val mutable deleteJMenuItem : Obj.t = Obj.repr 0
    method deleteJMenuItem : 'r. 'r = Obj.magic deleteJMenuItem
    method set_deleteJMenuItem : 'v. 'v -> unit = fun value' -> deleteJMenuItem <- Obj.repr value'
    val mutable itemJPopupMenu : Obj.t = Obj.repr 0
    method itemJPopupMenu : 'r. 'r = Obj.magic itemJPopupMenu
    method set_itemJPopupMenu : 'v. 'v -> unit = fun value' -> itemJPopupMenu <- Obj.repr value'
    val mutable itemJScrollPane1 : Obj.t = Obj.repr 0
    method itemJScrollPane1 : 'r. 'r = Obj.magic itemJScrollPane1
    method set_itemJScrollPane1 : 'v. 'v -> unit = fun value' -> itemJScrollPane1 <- Obj.repr value'
    val mutable rotateJMenuItem : Obj.t = Obj.repr 0
    method rotateJMenuItem : 'r. 'r = Obj.magic rotateJMenuItem
    method set_rotateJMenuItem : 'v. 'v -> unit = fun value' -> rotateJMenuItem <- Obj.repr value'
    val mutable workAreaPropertiesJPanel : Obj.t = Obj.repr 0
    method workAreaPropertiesJPanel : 'r. 'r = Obj.magic workAreaPropertiesJPanel
    method set_workAreaPropertiesJPanel : 'v. 'v -> unit = fun value' -> workAreaPropertiesJPanel <- Obj.repr value'
    
    

    method add : 'any1. 'any1 -> unit = fun (treeNode) ->
        let treeNode = Obj.repr treeNode in
        begin
        ignore ((Obj.magic rootTreeNode)#add ((Obj.magic treeNode)))
        end [@@warning "-7-20"]
    

    method updateTree () : unit =
        begin
        workAreaJTree <- Obj.repr ((new JTree.jTree ((Obj.magic rootTreeNode))));
        ignore ((Obj.magic workAreaJTree)#addMouseListener ((object (self)
            inherit MouseAdapter.mouseAdapter () as super
            

            method mousePressed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#workAreaJTreeMousePressed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic workAreaPropertiesJPanel)#removeAll ());
        ignore ((Obj.magic workAreaPropertiesJPanel)#add ((Obj.magic workAreaJTree)))
        end [@@warning "-7"]
    

    method getNode (treePathArray) : BasicArrayList.basicArrayList =
        begin
        let basicArrayList : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        if (treePathArray != (Obj.magic 0)) then begin
            for index = 0 to (Array.length treePathArray) - 1 do
                ignore (!basicArrayList#add ((self#getNode (treePathArray.(index)))))
            done
        end;
        (!basicArrayList :> BasicArrayList.basicArrayList)
        end [@@warning "-7"]
    

    (* Java overload getNode(TreePath) is not converted: OCaml has one method per name *)
    

    method deselectAll () : unit =
        begin
        let size : int ref = ref ((highlightedBasicArrayList#size ())) in ();
        ignore ((Obj.magic logUtil)#putF (("size: " ^ java_string_of (Obj.repr (!size))), self, "deselectAll"));
        for index = 0 to !size - 1 do
            let node : Obj.t ref = ref ((Obj.repr (Obj.magic (highlightedBasicArrayList#get (index))))) in ();
            ignore (MyGraphicItemEventService.fire ((new MyGraphicItemEvent.myGraphicItemEvent ((Obj.magic (new MyGraphicItemEventSource.myGraphicItemEventSource ((MyGraphicItemEventService.get_dESELECT ()), (Obj.magic !node))))))))
        done;
        ignore (highlightedBasicArrayList#clear ())
        end [@@warning "-7"]
    

    method selectGraphicItem : 'any1. 'any1 -> unit = fun (node) ->
        let node = Obj.repr node in
        begin
        ignore (highlightedBasicArrayList#add ((Obj.magic node)));
        ignore (MyGraphicItemEventService.fire ((new MyGraphicItemEvent.myGraphicItemEvent ((Obj.magic (new MyGraphicItemEventSource.myGraphicItemEventSource ((MyGraphicItemEventService.get_sELECT ()), (Obj.magic node))))))))
        end [@@warning "-7-20"]
    

    method removeGraphicItem : 'any1. 'any1 -> unit = fun (node) ->
        let node = Obj.repr node in
        begin
        ignore (MyGraphicItemEventService.fire ((new MyGraphicItemEvent.myGraphicItemEvent ((Obj.magic (new MyGraphicItemEventSource.myGraphicItemEventSource ((MyGraphicItemEventService.get_dELETE ()), (Obj.magic node))))))))
        end [@@warning "-7-20"]
    

    method removeCanvas : 'any1. 'any1 -> unit = fun (node) ->
        let node = Obj.repr node in
        begin
        ignore (MyCanvasEventService.fire ((new MyCanvasEvent.myCanvasEvent ((Obj.magic (new MyCanvasEventSource.myCanvasEventSource ((MyCanvasEventService.get_dELETE ()), (Obj.magic node))))))))
        end [@@warning "-7-20"]
    

    method remove : 'any1. 'any1 -> unit = fun (treePath) ->
        let treePath = Obj.repr treePath in
        begin
        let node : Obj.t ref = ref ((Obj.repr (self#getNode ((Obj.magic treePath))))) in ();
        if ((Obj.magic !node) != (Obj.magic 0)) then begin
            if (java_instanceof (Obj.repr ((Obj.magic !node)#getUserObject ())) "CanvasTreeLabel") then begin
                (self#removeCanvas ((Obj.magic !node)))
            end else begin
                (self#removeGraphicItem ((Obj.magic !node)))
            end
        end;
        let parent : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic !node)#getParent ())))) in ();
        ignore ((Obj.magic !parent)#remove ((Obj.magic !node)))
        end [@@warning "-7-20"]
    

    method copy () : unit =
        begin
        let treePath : Obj.t ref = ref ((Obj.repr ((Obj.magic workAreaJTree)#getSelectionPath ()))) in ();
        (self#copy ((Obj.magic !treePath)));
        (self#updateTree ());
        (self#expand ());
        ignore (self#repaint ())
        end [@@warning "-7"]
    

    (* Java overload copy(TreePath) is not converted: OCaml has one method per name *)
    

    method rotate : 'any1. 'any1 * float -> unit = fun (treePath, (angle : float)) ->
        let treePath = Obj.repr treePath in
        begin
        let node : Obj.t ref = ref ((Obj.repr (self#getNode ((Obj.magic treePath))))) in ();
        if ((Obj.magic !node) != (Obj.magic 0)) then begin
            if (java_instanceof (Obj.repr ((Obj.magic !node)#getUserObject ())) "CanvasTreeLabel") then begin
                ignore (MyCanvasEventService.fire ((new MyCanvasEvent.myCanvasEvent ((Obj.magic (new MyCanvasEventSource.myCanvasEventSource ((MyCanvasEventService.get_rOTATE ()), angle, (Obj.magic !node))))))))
            end else begin
                ignore (MyGraphicItemEventService.fire ((new MyGraphicItemEvent.myGraphicItemEvent ((Obj.magic (new MyGraphicItemEventSource.myGraphicItemEventSource ((MyGraphicItemEventService.get_rOTATE ()), angle, (Obj.magic !node))))))))
            end
        end
        end [@@warning "-7-20"]
    

    method getRootTreeNode : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic rootTreeNode)))
        end [@@warning "-7"]
    

    method expand () : unit =
        begin
        ignore ((Obj.magic workAreaJTree)#expandRow (0));
        ignore ((Obj.magic workAreaJTree)#expandRow (1))
        end [@@warning "-7"]
    

    (* Java overload expand(TreePath) is not converted: OCaml has one method per name *)
    

    method initComponents () : unit =
        begin
        itemJPopupMenu <- Obj.repr ((new JPopupMenu.jPopupMenu ()));
        deleteJMenuItem <- Obj.repr ((new JMenuItem.jMenuItem ()));
        copyJMenuItem <- Obj.repr ((new JMenuItem.jMenuItem ()));
        rotateJMenuItem <- Obj.repr ((new JMenuItem.jMenuItem ()));
        itemJScrollPane1 <- Obj.repr ((new JScrollPane.jScrollPane ()));
        workAreaPropertiesJPanel <- Obj.repr ((new JPanel.jPanel ()));
        ignore ((Obj.magic itemJPopupMenu)#addPopupMenuListener ((object (self)
            inherit PopupMenuListener.popupMenuListener () as super
            

            method popupMenuCanceled : 'any1. 'any1 -> unit = fun (_evt) ->
                begin
                ()
                end [@@warning "-20"]
            

            method popupMenuWillBecomeInvisible : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#itemJPopupMenuPopupMenuWillBecomeInvisible ((Obj.magic evt)))
                end [@@warning "-20"]
            

            method popupMenuWillBecomeVisible : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#itemJPopupMenuPopupMenuWillBecomeVisible ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic deleteJMenuItem)#setText ("Delete"));
        ignore ((Obj.magic deleteJMenuItem)#addMouseListener ((object (self)
            inherit MouseAdapter.mouseAdapter () as super
            

            method mousePressed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#deleteJMenuItemMousePressed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic itemJPopupMenu)#add ((Obj.magic deleteJMenuItem)));
        ignore ((Obj.magic copyJMenuItem)#setText ("Copy"));
        ignore ((Obj.magic copyJMenuItem)#addMouseListener ((object (self)
            inherit MouseAdapter.mouseAdapter () as super
            

            method mousePressed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#copyJMenuItemMousePressed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic itemJPopupMenu)#add ((Obj.magic copyJMenuItem)));
        ignore ((Obj.magic rotateJMenuItem)#setText ("Rotate 45*"));
        ignore ((Obj.magic rotateJMenuItem)#addMouseListener ((object (self)
            inherit MouseAdapter.mouseAdapter () as super
            

            method mousePressed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#rotateJMenuItemMousePressed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic itemJPopupMenu)#add ((Obj.magic rotateJMenuItem)));
        ignore (self#setLayout ((new GridLayout.gridLayout (1, 1))));
        ignore ((Obj.magic workAreaPropertiesJPanel)#addMouseListener ((object (self)
            inherit MouseAdapter.mouseAdapter () as super
            

            method mousePressed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#workAreaPropertiesJPanelMousePressed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic workAreaPropertiesJPanel)#setLayout ((new GridLayout.gridLayout (1, 0))));
        ignore ((Obj.magic itemJScrollPane1)#setViewportView ((Obj.magic workAreaPropertiesJPanel)));
        (self#add ((Obj.magic itemJScrollPane1)))
        end [@@warning "-7"]
    

    method rotateJMenuItemMousePressed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (try
            let treePath : Obj.t ref = ref ((Obj.repr ((Obj.magic workAreaJTree)#getSelectionPath ()))) in ();
            (self#rotate ((Obj.magic !treePath), 45));
            (self#updateTree ());
            (self#expand ());
            ignore (self#repaint ())
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "rotateJMenuItemMousePressed", e))
        end)
        end [@@warning "-7-20"]
    

    method workAreaJTreeMousePressed : 'any1. 'any1 -> unit = fun (evt) ->
        let evt = Obj.repr evt in
        begin
        (try
            let selectedTreePathArray : Obj.t ref = ref ((Obj.repr ((Obj.magic workAreaJTree)#getSelectionPaths ()))) in ();
            let list : BasicArrayList.basicArrayList ref = ref (((self#getNode ((Obj.magic !selectedTreePathArray))) :> BasicArrayList.basicArrayList)) in ();
            if ((!list#size ()) > 0) then begin
                if ((Obj.repr ((((Obj.magic evt)#getModifiers ()) land (Obj.magic evt)#bUTTON3_MASK))) == (Obj.repr (Obj.magic evt)#bUTTON3_MASK)) then begin
                    for index = 0 to (Array.length (Obj.magic !selectedTreePathArray)) - 1 do
                        let defaultMutableTreeNode : Obj.t ref = ref ((Obj.repr (Obj.magic (!list#get (index))))) in ();
                        if (java_instanceof (Obj.repr ((Obj.magic !defaultMutableTreeNode)#getUserObject ())) "CanvasTreeLabel") then begin
                            ignore ((Obj.magic itemJPopupMenu)#show (self, ((Obj.magic evt)#getX ()), ((Obj.magic evt)#getY ())))
                        end else begin
                            ignore ((Obj.magic itemJPopupMenu)#show (self, ((Obj.magic evt)#getX ()), ((Obj.magic evt)#getY ())))
                        end
                    done
                end;
                if ((Obj.repr ((((Obj.magic evt)#getModifiers ()) land (Obj.magic evt)#bUTTON1_MASK))) == (Obj.repr (Obj.magic evt)#bUTTON1_MASK)) then begin
                    (self#deselectAll ());
                    for index = 0 to (Array.length (Obj.magic !selectedTreePathArray)) - 1 do
                        let defaultMutableTreeNode : Obj.t ref = ref ((Obj.repr (Obj.magic (!list#get (index))))) in ();
                        if (java_instanceof (Obj.repr ((Obj.magic !defaultMutableTreeNode)#getUserObject ())) "CanvasTreeLabel") then begin
                            ignore (MyCanvasEventService.fire ((new MyCanvasEvent.myCanvasEvent ((Obj.magic (new MyCanvasEventSource.myCanvasEventSource ((MyCanvasEventService.get_sELECT ()), (Obj.magic !defaultMutableTreeNode))))))))
                        end else begin
                            (self#selectGraphicItem ((Obj.magic !defaultMutableTreeNode)))
                        end
                    done
                end
            end
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "workAreaJTreeMousePressed", e))
        end)
        end [@@warning "-7-20"]
    

    method itemJPopupMenuPopupMenuWillBecomeInvisible : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method itemJPopupMenuPopupMenuWillBecomeVisible : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method copyJMenuItemMousePressed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (try
            (self#copy ())
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "copyJMenuItemMousePressed", e))
        end)
        end [@@warning "-7-20"]
    

    method deleteJMenuItemMousePressed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (try
            let selectedTreePathArray : Obj.t ref = ref ((Obj.repr ((Obj.magic workAreaJTree)#getSelectionPaths ()))) in ();
            for index = 0 to (Array.length (Obj.magic !selectedTreePathArray)) - 1 do
                let treePath : Obj.t ref = ref ((Obj.repr (Obj.magic !selectedTreePathArray).(index))) in ();
                (self#remove ((Obj.magic !treePath)));
                (self#updateTree ());
                (self#expand ());
                ignore (self#repaint ())
            done
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "deleteJMenuItemMousePressed", e))
        end)
        end [@@warning "-7-20"]
    

    method workAreaPropertiesJPanelMousePressed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        ()
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        workAreaJTree <- (Obj.repr (Obj.magic 0));
        ();
        copyJMenuItem <- (Obj.repr (Obj.magic 0));
        deleteJMenuItem <- (Obj.repr (Obj.magic 0));
        itemJPopupMenu <- (Obj.repr (Obj.magic 0));
        itemJScrollPane1 <- (Obj.repr (Obj.magic 0));
        rotateJMenuItem <- (Obj.repr (Obj.magic 0));
        workAreaPropertiesJPanel <- (Obj.repr (Obj.magic 0));
        ();
        (self#initComponents ());
        rootTreeNode <- Obj.repr ((new DefaultMutableTreeNode.defaultMutableTreeNode (workAreaName)));
        ignore ((Obj.magic workAreaPropertiesJPanel)#removeAll ());
        (self#updateTree ());
        highlightedBasicArrayList <- (new BasicArrayListD.basicArrayListD ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "WorkAreaJTreeJPanel" (fun arguments -> Obj.repr (new workAreaJTreeJPanel (Obj.obj arguments)))


