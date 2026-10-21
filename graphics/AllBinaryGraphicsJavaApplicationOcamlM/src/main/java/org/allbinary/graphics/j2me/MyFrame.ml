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
(* package org.allbinary.graphics.j2me *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.awt *)
(* import java.io.File *)
(* import java.util.HashMap *)
(* import javax.swing *)
(* import org.allbinary.data.tree.dom.XslHelper *)
(* import org.allbinary.dom.DomHelper *)
(* import org.allbinary.graphics.j2me.dialog.NewWorkAreaJDialog *)
(* import org.allbinary.graphics.j2me.dialog.RotateJDialog *)
(* import org.allbinary.graphics.j2me.workarea.WorkAreaDom *)
(* import org.allbinary.graphics.j2me.workarea.WorkAreaJPanel *)
(* import org.allbinary.graphics.j2me.workarea.WorkAreaJPanelInterface *)
(* import org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent *)
(* import org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventService *)
(* import org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventSource *)
(* import org.allbinary.gui.dialog.FileJDialog *)
(* import org.allbinary.gui.dialog.FileJDialogListenerInterface *)
(* import org.allbinary.gui.dialog.HashMapJDialogListenerInterface *)
(* import org.allbinary.log.LOGGING *)
(* import org.allbinary.logic.communication.log.GuiLog *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.math.SmallIntegerSingletonFactory *)
(* import org.allbinary.math.AngleFactory *)
(* import org.allbinary.string.CommonLabels *)
(* import org.allbinary.string.CommonStrings *)
(* import org.w3c.dom.Document *)

let mAXWORKAREAS : int = 10
let get_mAXWORKAREAS () = mAXWORKAREAS
let () = java_register_static "MyFrame.get_mAXWORKAREAS" (fun _ -> Obj.repr (get_mAXWORKAREAS ()))
let numberOfWorkAreas : int ref = ref (0)
let get_numberOfWorkAreas () = !numberOfWorkAreas
let set_numberOfWorkAreas value' = numberOfWorkAreas := value'
let () = java_register_static "MyFrame.get_numberOfWorkAreas" (fun _ -> Obj.repr (get_numberOfWorkAreas ()))
let pATH : string = "G:/mnt/bc/mydev/work/graphics/AllBinaryGraphicsJavaApplication"
let get_pATH () = pATH
let () = java_register_static "MyFrame.get_pATH" (fun _ -> Obj.repr (get_pATH ()))
let sAVE_PATH : string = (java_string_of (Obj.repr (pATH)) ^ "/save")
let get_sAVE_PATH () = sAVE_PATH
let () = java_register_static "MyFrame.get_sAVE_PATH" (fun _ -> Obj.repr (get_sAVE_PATH ()))
let tEMPLATE_EXPORT_PATH : string = (java_string_of (Obj.repr (pATH)) ^ "/templates/export")
let get_tEMPLATE_EXPORT_PATH () = tEMPLATE_EXPORT_PATH
let () = java_register_static "MyFrame.get_tEMPLATE_EXPORT_PATH" (fun _ -> Obj.repr (get_tEMPLATE_EXPORT_PATH ()))
let statusJLabel : Obj.t ref = ref ((Obj.repr (Obj.magic 0)))
let get_statusJLabel () = Obj.magic !statusJLabel
let set_statusJLabel value' = statusJLabel := Obj.repr value'
let () = java_register_static "MyFrame.get_statusJLabel" (fun _ -> Obj.repr (get_statusJLabel ()))
class myFrame () =
  object (self)
    inherit JFrame.jFrame ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable guiLog : GuiLog.guiLog = (Obj.magic 0)
    method guiLog = guiLog
    method set_guiLog value' = guiLog <- value'
    val mutable xslHelper : XslHelper.xslHelper = (Obj.magic 0)
    method xslHelper = xslHelper
    method set_xslHelper value' = xslHelper <- value'
    val mutable jAVA_TEMPLATE : string = ""
    method jAVA_TEMPLATE = jAVA_TEMPLATE
    method set_jAVA_TEMPLATE value' = jAVA_TEMPLATE <- value'
    val mutable sAVEEXTENSION : string = ""
    method sAVEEXTENSION = sAVEEXTENSION
    method set_sAVEEXTENSION value' = sAVEEXTENSION <- value'
    val mutable jAVAEXTENSION : string = ""
    method jAVAEXTENSION = jAVAEXTENSION
    method set_jAVAEXTENSION value' = jAVAEXTENSION <- value'
    val mutable fileJDialog : FileJDialog.fileJDialog = (Obj.magic 0)
    method fileJDialog = fileJDialog
    method set_fileJDialog value' = fileJDialog <- value'
    val mutable rotateJDialog : RotateJDialog.rotateJDialog = (Obj.magic 0)
    method rotateJDialog = rotateJDialog
    method set_rotateJDialog value' = rotateJDialog <- value'
    val mutable animateJButton : Obj.t = Obj.repr 0
    method animateJButton : 'r. 'r = Obj.magic animateJButton
    method set_animateJButton : 'v. 'v -> unit = fun value' -> animateJButton <- Obj.repr value'
    val mutable autoDamageJMenuItem : Obj.t = Obj.repr 0
    method autoDamageJMenuItem : 'r. 'r = Obj.magic autoDamageJMenuItem
    method set_autoDamageJMenuItem : 'v. 'v -> unit = fun value' -> autoDamageJMenuItem <- Obj.repr value'
    val mutable autoExplodeJMenuItem : Obj.t = Obj.repr 0
    method autoExplodeJMenuItem : 'r. 'r = Obj.magic autoExplodeJMenuItem
    method set_autoExplodeJMenuItem : 'v. 'v -> unit = fun value' -> autoExplodeJMenuItem <- Obj.repr value'
    val mutable autoGrowJMenuItem : Obj.t = Obj.repr 0
    method autoGrowJMenuItem : 'r. 'r = Obj.magic autoGrowJMenuItem
    method set_autoGrowJMenuItem : 'v. 'v -> unit = fun value' -> autoGrowJMenuItem <- Obj.repr value'
    val mutable autoRotateGenerationJMenuItem : Obj.t = Obj.repr 0
    method autoRotateGenerationJMenuItem : 'r. 'r = Obj.magic autoRotateGenerationJMenuItem
    method set_autoRotateGenerationJMenuItem : 'v. 'v -> unit = fun value' -> autoRotateGenerationJMenuItem <- Obj.repr value'
    val mutable autoSheildMenuItem : Obj.t = Obj.repr 0
    method autoSheildMenuItem : 'r. 'r = Obj.magic autoSheildMenuItem
    method set_autoSheildMenuItem : 'v. 'v -> unit = fun value' -> autoSheildMenuItem <- Obj.repr value'
    val mutable autoShrinkJMenuItem : Obj.t = Obj.repr 0
    method autoShrinkJMenuItem : 'r. 'r = Obj.magic autoShrinkJMenuItem
    method set_autoShrinkJMenuItem : 'v. 'v -> unit = fun value' -> autoShrinkJMenuItem <- Obj.repr value'
    val mutable centerJMenuItem : Obj.t = Obj.repr 0
    method centerJMenuItem : 'r. 'r = Obj.magic centerJMenuItem
    method set_centerJMenuItem : 'v. 'v -> unit = fun value' -> centerJMenuItem <- Obj.repr value'
    val mutable copyJMenuItem1 : Obj.t = Obj.repr 0
    method copyJMenuItem1 : 'r. 'r = Obj.magic copyJMenuItem1
    method set_copyJMenuItem1 : 'v. 'v -> unit = fun value' -> copyJMenuItem1 <- Obj.repr value'
    val mutable exitJMenuItem : Obj.t = Obj.repr 0
    method exitJMenuItem : 'r. 'r = Obj.magic exitJMenuItem
    method set_exitJMenuItem : 'v. 'v -> unit = fun value' -> exitJMenuItem <- Obj.repr value'
    val mutable explodeAllJMenuItem : Obj.t = Obj.repr 0
    method explodeAllJMenuItem : 'r. 'r = Obj.magic explodeAllJMenuItem
    method set_explodeAllJMenuItem : 'v. 'v -> unit = fun value' -> explodeAllJMenuItem <- Obj.repr value'
    val mutable exportJMenuItem1 : Obj.t = Obj.repr 0
    method exportJMenuItem1 : 'r. 'r = Obj.magic exportJMenuItem1
    method set_exportJMenuItem1 : 'v. 'v -> unit = fun value' -> exportJMenuItem1 <- Obj.repr value'
    val mutable fileJMenu : Obj.t = Obj.repr 0
    method fileJMenu : 'r. 'r = Obj.magic fileJMenu
    method set_fileJMenu : 'v. 'v -> unit = fun value' -> fileJMenu <- Obj.repr value'
    val mutable frameJMenu : Obj.t = Obj.repr 0
    method frameJMenu : 'r. 'r = Obj.magic frameJMenu
    method set_frameJMenu : 'v. 'v -> unit = fun value' -> frameJMenu <- Obj.repr value'
    val mutable generateJMenu : Obj.t = Obj.repr 0
    method generateJMenu : 'r. 'r = Obj.magic generateJMenu
    method set_generateJMenu : 'v. 'v -> unit = fun value' -> generateJMenu <- Obj.repr value'
    val mutable insertAfterJMenuItem : Obj.t = Obj.repr 0
    method insertAfterJMenuItem : 'r. 'r = Obj.magic insertAfterJMenuItem
    method set_insertAfterJMenuItem : 'v. 'v -> unit = fun value' -> insertAfterJMenuItem <- Obj.repr value'
    val mutable insertBeforeJMenuItem : Obj.t = Obj.repr 0
    method insertBeforeJMenuItem : 'r. 'r = Obj.magic insertBeforeJMenuItem
    method set_insertBeforeJMenuItem : 'v. 'v -> unit = fun value' -> insertBeforeJMenuItem <- Obj.repr value'
    val mutable jButton1 : Obj.t = Obj.repr 0
    method jButton1 : 'r. 'r = Obj.magic jButton1
    method set_jButton1 : 'v. 'v -> unit = fun value' -> jButton1 <- Obj.repr value'
    val mutable jButton2 : Obj.t = Obj.repr 0
    method jButton2 : 'r. 'r = Obj.magic jButton2
    method set_jButton2 : 'v. 'v -> unit = fun value' -> jButton2 <- Obj.repr value'
    val mutable jButton3 : Obj.t = Obj.repr 0
    method jButton3 : 'r. 'r = Obj.magic jButton3
    method set_jButton3 : 'v. 'v -> unit = fun value' -> jButton3 <- Obj.repr value'
    val mutable jButton4 : Obj.t = Obj.repr 0
    method jButton4 : 'r. 'r = Obj.magic jButton4
    method set_jButton4 : 'v. 'v -> unit = fun value' -> jButton4 <- Obj.repr value'
    val mutable jButton41 : Obj.t = Obj.repr 0
    method jButton41 : 'r. 'r = Obj.magic jButton41
    method set_jButton41 : 'v. 'v -> unit = fun value' -> jButton41 <- Obj.repr value'
    val mutable jButton5 : Obj.t = Obj.repr 0
    method jButton5 : 'r. 'r = Obj.magic jButton5
    method set_jButton5 : 'v. 'v -> unit = fun value' -> jButton5 <- Obj.repr value'
    val mutable jMenu1 : Obj.t = Obj.repr 0
    method jMenu1 : 'r. 'r = Obj.magic jMenu1
    method set_jMenu1 : 'v. 'v -> unit = fun value' -> jMenu1 <- Obj.repr value'
    val mutable jMenuItem1 : Obj.t = Obj.repr 0
    method jMenuItem1 : 'r. 'r = Obj.magic jMenuItem1
    method set_jMenuItem1 : 'v. 'v -> unit = fun value' -> jMenuItem1 <- Obj.repr value'
    val mutable jPanel1 : Obj.t = Obj.repr 0
    method jPanel1 : 'r. 'r = Obj.magic jPanel1
    method set_jPanel1 : 'v. 'v -> unit = fun value' -> jPanel1 <- Obj.repr value'
    val mutable jTabbedPane : Obj.t = Obj.repr 0
    method jTabbedPane : 'r. 'r = Obj.magic jTabbedPane
    method set_jTabbedPane : 'v. 'v -> unit = fun value' -> jTabbedPane <- Obj.repr value'
    val mutable jToolBar1 : Obj.t = Obj.repr 0
    method jToolBar1 : 'r. 'r = Obj.magic jToolBar1
    method set_jToolBar1 : 'v. 'v -> unit = fun value' -> jToolBar1 <- Obj.repr value'
    val mutable mainJPanel : Obj.t = Obj.repr 0
    method mainJPanel : 'r. 'r = Obj.magic mainJPanel
    method set_mainJPanel : 'v. 'v -> unit = fun value' -> mainJPanel <- Obj.repr value'
    val mutable menuJMenuBar : Obj.t = Obj.repr 0
    method menuJMenuBar : 'r. 'r = Obj.magic menuJMenuBar
    method set_menuJMenuBar : 'v. 'v -> unit = fun value' -> menuJMenuBar <- Obj.repr value'
    val mutable newJMenuItem : Obj.t = Obj.repr 0
    method newJMenuItem : 'r. 'r = Obj.magic newJMenuItem
    method set_newJMenuItem : 'v. 'v -> unit = fun value' -> newJMenuItem <- Obj.repr value'
    val mutable nextFrameJMenuItem : Obj.t = Obj.repr 0
    method nextFrameJMenuItem : 'r. 'r = Obj.magic nextFrameJMenuItem
    method set_nextFrameJMenuItem : 'v. 'v -> unit = fun value' -> nextFrameJMenuItem <- Obj.repr value'
    val mutable objectJMenu : Obj.t = Obj.repr 0
    method objectJMenu : 'r. 'r = Obj.magic objectJMenu
    method set_objectJMenu : 'v. 'v -> unit = fun value' -> objectJMenu <- Obj.repr value'
    val mutable openJButton : Obj.t = Obj.repr 0
    method openJButton : 'r. 'r = Obj.magic openJButton
    method set_openJButton : 'v. 'v -> unit = fun value' -> openJButton <- Obj.repr value'
    val mutable openJMenuItem : Obj.t = Obj.repr 0
    method openJMenuItem : 'r. 'r = Obj.magic openJMenuItem
    method set_openJMenuItem : 'v. 'v -> unit = fun value' -> openJMenuItem <- Obj.repr value'
    val mutable playJButton : Obj.t = Obj.repr 0
    method playJButton : 'r. 'r = Obj.magic playJButton
    method set_playJButton : 'v. 'v -> unit = fun value' -> playJButton <- Obj.repr value'
    val mutable previousFrameJMenuItem : Obj.t = Obj.repr 0
    method previousFrameJMenuItem : 'r. 'r = Obj.magic previousFrameJMenuItem
    method set_previousFrameJMenuItem : 'v. 'v -> unit = fun value' -> previousFrameJMenuItem <- Obj.repr value'
    val mutable removeJMenuItem : Obj.t = Obj.repr 0
    method removeJMenuItem : 'r. 'r = Obj.magic removeJMenuItem
    method set_removeJMenuItem : 'v. 'v -> unit = fun value' -> removeJMenuItem <- Obj.repr value'
    val mutable saveAsJMenuItem : Obj.t = Obj.repr 0
    method saveAsJMenuItem : 'r. 'r = Obj.magic saveAsJMenuItem
    method set_saveAsJMenuItem : 'v. 'v -> unit = fun value' -> saveAsJMenuItem <- Obj.repr value'
    val mutable saveJButton : Obj.t = Obj.repr 0
    method saveJButton : 'r. 'r = Obj.magic saveJButton
    method set_saveJButton : 'v. 'v -> unit = fun value' -> saveJButton <- Obj.repr value'
    val mutable saveJMenuItem : Obj.t = Obj.repr 0
    method saveJMenuItem : 'r. 'r = Obj.magic saveJMenuItem
    method set_saveJMenuItem : 'v. 'v -> unit = fun value' -> saveJMenuItem <- Obj.repr value'
    val mutable statusJPanel : Obj.t = Obj.repr 0
    method statusJPanel : 'r. 'r = Obj.magic statusJPanel
    method set_statusJPanel : 'v. 'v -> unit = fun value' -> statusJPanel <- Obj.repr value'
    val mutable stopJjButton : Obj.t = Obj.repr 0
    method stopJjButton : 'r. 'r = Obj.magic stopJjButton
    method set_stopJjButton : 'v. 'v -> unit = fun value' -> stopJjButton <- Obj.repr value'
    val mutable viewJMenu : Obj.t = Obj.repr 0
    method viewJMenu : 'r. 'r = Obj.magic viewJMenu
    method set_viewJMenu : 'v. 'v -> unit = fun value' -> viewJMenu <- Obj.repr value'
    val mutable zoomInJMenuItem : Obj.t = Obj.repr 0
    method zoomInJMenuItem : 'r. 'r = Obj.magic zoomInJMenuItem
    method set_zoomInJMenuItem : 'v. 'v -> unit = fun value' -> zoomInJMenuItem <- Obj.repr value'
    val mutable zoomOutJMenuItem : Obj.t = Obj.repr 0
    method zoomOutJMenuItem : 'r. 'r = Obj.magic zoomOutJMenuItem
    method set_zoomOutJMenuItem : 'v. 'v -> unit = fun value' -> zoomOutJMenuItem <- Obj.repr value'
    
    

    method initComponents () : unit =
        begin
        jToolBar1 <- Obj.repr ((new JToolBar.jToolBar ()));
        jButton2 <- Obj.repr ((new JButton.jButton ()));
        saveJButton <- Obj.repr ((new JButton.jButton ()));
        jButton1 <- Obj.repr ((new JButton.jButton ()));
        openJButton <- Obj.repr ((new JButton.jButton ()));
        jButton3 <- Obj.repr ((new JButton.jButton ()));
        jButton4 <- Obj.repr ((new JButton.jButton ()));
        jButton41 <- Obj.repr ((new JButton.jButton ()));
        jButton5 <- Obj.repr ((new JButton.jButton ()));
        animateJButton <- Obj.repr ((new JButton.jButton ()));
        playJButton <- Obj.repr ((new JButton.jButton ()));
        stopJjButton <- Obj.repr ((new JButton.jButton ()));
        jPanel1 <- Obj.repr ((new JPanel.jPanel ()));
        mainJPanel <- Obj.repr ((new JPanel.jPanel ()));
        jTabbedPane <- Obj.repr ((new JTabbedPane.jTabbedPane ()));
        statusJPanel <- Obj.repr ((new JPanel.jPanel ()));
        statusJLabel := Obj.repr ((new JLabel.jLabel ()));
        menuJMenuBar <- Obj.repr ((new JMenuBar.jMenuBar ()));
        fileJMenu <- Obj.repr ((new JMenu.jMenu ()));
        newJMenuItem <- Obj.repr ((new JMenuItem.jMenuItem ()));
        openJMenuItem <- Obj.repr ((new JMenuItem.jMenuItem ()));
        saveJMenuItem <- Obj.repr ((new JMenuItem.jMenuItem ()));
        saveAsJMenuItem <- Obj.repr ((new JMenuItem.jMenuItem ()));
        exportJMenuItem1 <- Obj.repr ((new JMenuItem.jMenuItem ()));
        exitJMenuItem <- Obj.repr ((new JMenuItem.jMenuItem ()));
        viewJMenu <- Obj.repr ((new JMenu.jMenu ()));
        zoomInJMenuItem <- Obj.repr ((new JMenuItem.jMenuItem ()));
        zoomOutJMenuItem <- Obj.repr ((new JMenuItem.jMenuItem ()));
        objectJMenu <- Obj.repr ((new JMenu.jMenu ()));
        explodeAllJMenuItem <- Obj.repr ((new JMenuItem.jMenuItem ()));
        frameJMenu <- Obj.repr ((new JMenu.jMenu ()));
        previousFrameJMenuItem <- Obj.repr ((new JMenuItem.jMenuItem ()));
        nextFrameJMenuItem <- Obj.repr ((new JMenuItem.jMenuItem ()));
        removeJMenuItem <- Obj.repr ((new JMenuItem.jMenuItem ()));
        copyJMenuItem1 <- Obj.repr ((new JMenuItem.jMenuItem ()));
        insertAfterJMenuItem <- Obj.repr ((new JMenuItem.jMenuItem ()));
        insertBeforeJMenuItem <- Obj.repr ((new JMenuItem.jMenuItem ()));
        generateJMenu <- Obj.repr ((new JMenu.jMenu ()));
        centerJMenuItem <- Obj.repr ((new JMenuItem.jMenuItem ()));
        autoDamageJMenuItem <- Obj.repr ((new JMenuItem.jMenuItem ()));
        autoExplodeJMenuItem <- Obj.repr ((new JMenuItem.jMenuItem ()));
        autoGrowJMenuItem <- Obj.repr ((new JMenuItem.jMenuItem ()));
        jMenuItem1 <- Obj.repr ((new JMenuItem.jMenuItem ()));
        autoRotateGenerationJMenuItem <- Obj.repr ((new JMenuItem.jMenuItem ()));
        autoSheildMenuItem <- Obj.repr ((new JMenuItem.jMenuItem ()));
        autoShrinkJMenuItem <- Obj.repr ((new JMenuItem.jMenuItem ()));
        jMenu1 <- Obj.repr ((new JMenu.jMenu ()));
        ignore (self#addWindowListener ((object (self)
            inherit WindowAdapter.windowAdapter () as super
            

            method windowClosing : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#exitForm ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic jButton2)#setText ("New"));
        ignore ((Obj.magic jButton2)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#jButton2ActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic jToolBar1)#add ((Obj.magic jButton2)));
        ignore ((Obj.magic saveJButton)#setText ("Save"));
        ignore ((Obj.magic saveJButton)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#saveJButtonActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic jToolBar1)#add ((Obj.magic saveJButton)));
        ignore ((Obj.magic jButton1)#setText ("Export"));
        ignore ((Obj.magic jButton1)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#jButton1ActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic jToolBar1)#add ((Obj.magic jButton1)));
        ignore ((Obj.magic openJButton)#setText ("Open"));
        ignore ((Obj.magic openJButton)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#openJButtonActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic jToolBar1)#add ((Obj.magic openJButton)));
        ignore ((Obj.magic jButton3)#setText ("Copy"));
        ignore ((Obj.magic jToolBar1)#add ((Obj.magic jButton3)));
        ignore ((Obj.magic jButton4)#setText ("Insert Before"));
        ignore ((Obj.magic jToolBar1)#add ((Obj.magic jButton4)));
        ignore ((Obj.magic jButton41)#setText ("Insert After"));
        ignore ((Obj.magic jToolBar1)#add ((Obj.magic jButton41)));
        ignore ((Obj.magic jButton5)#setText ("Delete"));
        ignore ((Obj.magic jToolBar1)#add ((Obj.magic jButton5)));
        ignore ((Obj.magic animateJButton)#setText ("AnimateEdit"));
        ignore ((Obj.magic jToolBar1)#add ((Obj.magic animateJButton)));
        ignore ((Obj.magic playJButton)#setText ("Play"));
        ignore ((Obj.magic playJButton)#addMouseListener ((object (self)
            inherit MouseAdapter.mouseAdapter () as super
            

            method mousePressed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#playJButtonMousePressed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic jToolBar1)#add ((Obj.magic playJButton)));
        ignore ((Obj.magic stopJjButton)#setText ("Stop"));
        ignore ((Obj.magic stopJjButton)#addMouseListener ((object (self)
            inherit MouseAdapter.mouseAdapter () as super
            

            method mousePressed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#stopJjButtonMousePressed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic jToolBar1)#add ((Obj.magic stopJjButton)));
        ignore ((self#getContentPane ())#add ((Obj.magic jToolBar1), (java.get_awt ())#borderLayout#nORTH));
        ignore ((Obj.magic jPanel1)#setLayout ((new GridLayout.gridLayout (1, 0))));
        ignore ((Obj.magic mainJPanel)#setLayout ((new GridLayout.gridLayout (1, 0))));
        ignore ((Obj.magic jTabbedPane)#setMinimumSize ((new Dimension.dimension (550, 400))));
        ignore ((Obj.magic jTabbedPane)#addChangeListener ((object (self)
            inherit ChangeListener.changeListener () as super
            

            method stateChanged : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#jTabbedPaneStateChanged ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic mainJPanel)#add ((Obj.magic jTabbedPane)));
        ignore ((Obj.magic jPanel1)#add ((Obj.magic mainJPanel)));
        ignore ((self#getContentPane ())#add ((Obj.magic jPanel1), (java.get_awt ())#borderLayout#cENTER));
        ignore ((Obj.magic statusJPanel)#setLayout ((new GridLayout.gridLayout (1, 0))));
        ignore ((Obj.magic !statusJLabel)#setText ("Status Bar"));
        ignore ((Obj.magic statusJPanel)#add ((Obj.magic !statusJLabel)));
        ignore ((self#getContentPane ())#add ((Obj.magic statusJPanel), (java.get_awt ())#borderLayout#sOUTH));
        ignore ((Obj.magic fileJMenu)#setText ("File"));
        ignore ((Obj.magic fileJMenu)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#fileJMenuActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic newJMenuItem)#setText ("New"));
        ignore ((Obj.magic newJMenuItem)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#newJMenuItemActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic fileJMenu)#add ((Obj.magic newJMenuItem)));
        ignore ((Obj.magic openJMenuItem)#setText ("Open"));
        ignore ((Obj.magic openJMenuItem)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#openJMenuItemActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic fileJMenu)#add ((Obj.magic openJMenuItem)));
        ignore ((Obj.magic saveJMenuItem)#setText ("Save"));
        ignore ((Obj.magic saveJMenuItem)#addMouseListener ((object (self)
            inherit MouseAdapter.mouseAdapter () as super
            

            method mousePressed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#saveJMenuItemMousePressed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic fileJMenu)#add ((Obj.magic saveJMenuItem)));
        ignore ((Obj.magic saveAsJMenuItem)#setText ("SaveAs"));
        ignore ((Obj.magic fileJMenu)#add ((Obj.magic saveAsJMenuItem)));
        ignore ((Obj.magic exportJMenuItem1)#setText ("Export"));
        ignore ((Obj.magic exportJMenuItem1)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#exportJMenuItem1ActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic fileJMenu)#add ((Obj.magic exportJMenuItem1)));
        ignore ((Obj.magic exitJMenuItem)#setText ("Exit"));
        ignore ((Obj.magic exitJMenuItem)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#exitJMenuItemActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic fileJMenu)#add ((Obj.magic exitJMenuItem)));
        ignore ((Obj.magic menuJMenuBar)#add ((Obj.magic fileJMenu)));
        ignore ((Obj.magic viewJMenu)#setText ("View"));
        ignore ((Obj.magic zoomInJMenuItem)#setText ("Zoom In"));
        ignore ((Obj.magic zoomInJMenuItem)#addMouseListener ((object (self)
            inherit MouseAdapter.mouseAdapter () as super
            

            method mousePressed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#zoomInJMenuItemMousePressed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic viewJMenu)#add ((Obj.magic zoomInJMenuItem)));
        ignore ((Obj.magic zoomOutJMenuItem)#setText ("Zoom Out"));
        ignore ((Obj.magic zoomOutJMenuItem)#addMouseListener ((object (self)
            inherit MouseAdapter.mouseAdapter () as super
            

            method mousePressed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#zoomOutJMenuItemMousePressed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic viewJMenu)#add ((Obj.magic zoomOutJMenuItem)));
        ignore ((Obj.magic menuJMenuBar)#add ((Obj.magic viewJMenu)));
        ignore ((Obj.magic objectJMenu)#setText ("Objects"));
        ignore ((Obj.magic explodeAllJMenuItem)#setText ("Explode All"));
        ignore ((Obj.magic explodeAllJMenuItem)#addMouseListener ((object (self)
            inherit MouseAdapter.mouseAdapter () as super
            

            method mousePressed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#explodeAllJMenuItemMousePressed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic objectJMenu)#add ((Obj.magic explodeAllJMenuItem)));
        ignore ((Obj.magic menuJMenuBar)#add ((Obj.magic objectJMenu)));
        ignore ((Obj.magic frameJMenu)#setText ("Frame"));
        ignore ((Obj.magic frameJMenu)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#frameJMenuActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic previousFrameJMenuItem)#setText ("Previous"));
        ignore ((Obj.magic frameJMenu)#add ((Obj.magic previousFrameJMenuItem)));
        ignore ((Obj.magic nextFrameJMenuItem)#setText ((CommonLabels.getInstance ())#nEXT));
        ignore ((Obj.magic frameJMenu)#add ((Obj.magic nextFrameJMenuItem)));
        ignore ((Obj.magic removeJMenuItem)#setText ("Remove"));
        ignore ((Obj.magic frameJMenu)#add ((Obj.magic removeJMenuItem)));
        ignore ((Obj.magic copyJMenuItem1)#setText ("Copy"));
        ignore ((Obj.magic frameJMenu)#add ((Obj.magic copyJMenuItem1)));
        ignore ((Obj.magic insertAfterJMenuItem)#setText ("Ins After"));
        ignore ((Obj.magic frameJMenu)#add ((Obj.magic insertAfterJMenuItem)));
        ignore ((Obj.magic insertBeforeJMenuItem)#setText ("Ins Before"));
        ignore ((Obj.magic frameJMenu)#add ((Obj.magic insertBeforeJMenuItem)));
        ignore ((Obj.magic menuJMenuBar)#add ((Obj.magic frameJMenu)));
        ignore ((Obj.magic generateJMenu)#setText ("Generate"));
        ignore ((Obj.magic centerJMenuItem)#setText ("Center"));
        ignore ((Obj.magic centerJMenuItem)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#centerJMenuItemActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic generateJMenu)#add ((Obj.magic centerJMenuItem)));
        ignore ((Obj.magic autoDamageJMenuItem)#setText ("Damage"));
        ignore ((Obj.magic generateJMenu)#add ((Obj.magic autoDamageJMenuItem)));
        ignore ((Obj.magic autoExplodeJMenuItem)#setText ("Explode"));
        ignore ((Obj.magic autoExplodeJMenuItem)#addMouseListener ((object (self)
            inherit MouseAdapter.mouseAdapter () as super
            

            method mousePressed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#autoExplodeJMenuItemMousePressed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic generateJMenu)#add ((Obj.magic autoExplodeJMenuItem)));
        ignore ((Obj.magic autoGrowJMenuItem)#setText ("Grow"));
        ignore ((Obj.magic generateJMenu)#add ((Obj.magic autoGrowJMenuItem)));
        ignore ((Obj.magic jMenuItem1)#setText ("Mirror"));
        ignore ((Obj.magic jMenuItem1)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#jMenuItem1ActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic generateJMenu)#add ((Obj.magic jMenuItem1)));
        ignore ((Obj.magic autoRotateGenerationJMenuItem)#setText ("Rotate"));
        ignore ((Obj.magic autoRotateGenerationJMenuItem)#addMouseListener ((object (self)
            inherit MouseAdapter.mouseAdapter () as super
            

            method mousePressed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#autoRotateGenerationJMenuItemMousePressed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic generateJMenu)#add ((Obj.magic autoRotateGenerationJMenuItem)));
        ignore ((Obj.magic autoSheildMenuItem)#setText ("Shield"));
        ignore ((Obj.magic generateJMenu)#add ((Obj.magic autoSheildMenuItem)));
        ignore ((Obj.magic autoShrinkJMenuItem)#setText ("Shrink"));
        ignore ((Obj.magic generateJMenu)#add ((Obj.magic autoShrinkJMenuItem)));
        ignore ((Obj.magic menuJMenuBar)#add ((Obj.magic generateJMenu)));
        ignore ((Obj.magic jMenu1)#setText ("Help"));
        ignore ((Obj.magic menuJMenuBar)#add ((Obj.magic jMenu1)));
        ignore (self#setJMenuBar ((Obj.magic menuJMenuBar)));
        ignore (self#pack ())
        end [@@warning "-7"]
    

    method explodeAllJMenuItemMousePressed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (try
            ignore (MyCanvasEventService.fire ((new MyCanvasEvent.myCanvasEvent ((Obj.magic (new MyCanvasEventSource.myCanvasEventSource ((MyCanvasEventService.get_eXPLODE ()), (Obj.magic 0))))))))
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "explodeAllJMenuItemMousePressed", e))
        end)
        end [@@warning "-7-20"]
    

    method autoExplodeJMenuItemMousePressed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (try
            ignore (MyCanvasEventService.fire ((new MyCanvasEvent.myCanvasEvent ((Obj.magic (new MyCanvasEventSource.myCanvasEventSource ((MyCanvasEventService.get_aUTOEXPLODE ()), (Obj.magic 0))))))))
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "autoExplodeJMenuItemMousePressed", e))
        end)
        end [@@warning "-7-20"]
    

    method stopJjButtonMousePressed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        ignore ((self#getSelectedWorkArea ())#stop ())
        end [@@warning "-7-20"]
    

    method playJButtonMousePressed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        ignore ((self#getSelectedWorkArea ())#play ())
        end [@@warning "-7-20"]
    

    method autoRotateGenerationJMenuItemMousePressed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        ignore (rotateJDialog#setVisible (true))
        end [@@warning "-7-20"]
    

    method zoomOutJMenuItemMousePressed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        ignore ((self#getSelectedWorkArea ())#changeZoom ((-1)))
        end [@@warning "-7-20"]
    

    method zoomInJMenuItemMousePressed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        ignore ((self#getSelectedWorkArea ())#changeZoom (1))
        end [@@warning "-7-20"]
    

    method openJMenuItemActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (self#openGraphics ())
        end [@@warning "-7-20"]
    

    method exportJMenuItem1ActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (self#export ())
        end [@@warning "-7-20"]
    

    method saveJMenuItemMousePressed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (self#save ())
        end [@@warning "-7-20"]
    

    method jTabbedPaneStateChanged : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (self#updateSelectedWorkArea ())
        end [@@warning "-7-20"]
    

    method frameJMenuActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method exitJMenuItemActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        ignore (exit (0))
        end [@@warning "-7-20"]
    

    method newJMenuItemActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (self#newGraphics ())
        end [@@warning "-7-20"]
    

    method fileJMenuActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method exitForm : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        ignore (exit (0))
        end [@@warning "-7-20"]
    

    method openJButtonActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (self#openGraphics ())
        end [@@warning "-7-20"]
    

    method jButton2ActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (self#newGraphics ())
        end [@@warning "-7-20"]
    

    method centerJMenuItemActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (try
            ignore (MyCanvasEventService.fire ((new MyCanvasEvent.myCanvasEvent ((Obj.magic (new MyCanvasEventSource.myCanvasEventSource ((MyCanvasEventService.get_cENTER ()), (Obj.magic 0))))))))
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "centerJMenuItemActionPerformed", e))
        end)
        end [@@warning "-7-20"]
    

    method saveJButtonActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (self#save ())
        end [@@warning "-7-20"]
    

    method jButton1ActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (self#export ())
        end [@@warning "-7-20"]
    

    method jMenuItem1ActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (try
            ignore ((self#getSelectedWorkArea ())#autoMirror ())
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "centerJMenuItemActionPerformed", e))
        end)
        end [@@warning "-7-20"]
    

    method onFiles (files) : unit =
        begin
        (try
            ignore ((Obj.magic logUtil)#putF (("Reading: " ^ java_string_of (Obj.repr (files))), self, "onFiles"));
            for index = 0 to (Array.length files) - 1 do
                let document : Obj.t ref = ref ((Obj.repr ((DomHelper.getInstance ())#createDocument (files.(index))))) in ();
                let workAreaJPanel : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "WorkAreaJPanel" (Obj.repr ((new WorkAreaDom.workAreaDom ((Obj.magic !document))), (self#getSize ()))))))) in ();
                ignore ((Obj.magic !workAreaJPanel)#setLayout ((new GridLayout.gridLayout (1, 1))));
                (self#add ((Obj.magic (Obj.magic !workAreaJPanel))))
            done;
            ignore (fileJDialog#setVisible (false))
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "onFiles", e))
        end)
        end [@@warning "-7"]
    

    method newGraphics () : unit =
        begin
        (try
            let newName : string ref = ref (("graphic" ^ java_string_of (Obj.repr (!numberOfWorkAreas)))) in ();
            let dim : Obj.t ref = ref ((Obj.repr (self#getSize ()))) in ();
            let newDialog : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "NewWorkAreaJDialog" (Obj.repr (self, false, (Obj.magic !dim), !newName)))))) in ()
        with e -> begin
            if (LOGGING.contains ((LOGGING.get_mENUEVENT ()))) then begin
                ignore (guiLog#put (commonStrings#eXCEPTION, self, "newJMenuItemActionPerformed", e))
            end
        end)
        end [@@warning "-7"]
    

    method openGraphics () : unit =
        begin
        (try
            ignore ((Obj.magic logUtil)#putF ("Starting", self, "openImageJMenuItemActionPerformed"));
            ignore (fileJDialog#setVisible (true))
        with e -> begin
            if (LOGGING.contains ((LOGGING.get_mENUEVENT ()))) then begin
                ignore (guiLog#put (commonStrings#eXCEPTION, self, "open", e))
            end
        end)
        end [@@warning "-7"]
    

    method export () : unit =
        begin
        (try
            let workAreaJPanel : WorkAreaJPanelInterface.workAreaJPanelInterface ref = ref (((Obj.magic ((Obj.magic jTabbedPane)#getSelectedComponent ())) :> WorkAreaJPanelInterface.workAreaJPanelInterface)) in ();
            let file : Obj.t ref = ref ((Obj.repr (new File.file ((((sAVE_PATH ^ "/") ^ (!workAreaJPanel#getName ())) ^ jAVAEXTENSION))))) in ();
            let document : Obj.t ref = ref ((Obj.repr (!workAreaJPanel#toDocument ()))) in ();
            ignore ((Obj.magic logUtil)#putF (("Export: " ^ ((DomHelper.getInstance ())#toString ((Obj.magic !document)))), self, "exportJMenuItem1ActionPerformed"));
            ignore (xslHelper#export ((Obj.magic !file), ((java_string_of (Obj.repr (tEMPLATE_EXPORT_PATH)) ^ "/") ^ jAVA_TEMPLATE), (Obj.magic !document)))
        with e -> begin
            if (LOGGING.contains ((LOGGING.get_mENUEVENT ()))) then begin
                ignore (guiLog#put (commonStrings#eXCEPTION, self, "export", e))
            end
        end)
        end [@@warning "-7"]
    

    method save () : unit =
        begin
        (try
            let workAreaJPanel : WorkAreaJPanelInterface.workAreaJPanelInterface ref = ref (((Obj.magic ((Obj.magic jTabbedPane)#getSelectedComponent ())) :> WorkAreaJPanelInterface.workAreaJPanelInterface)) in ();
            ignore ((DomHelper.getInstance ())#save ((new File.file ((((sAVE_PATH ^ "/") ^ (!workAreaJPanel#getName ())) ^ sAVEEXTENSION))), (!workAreaJPanel#toDocument ())))
        with e -> begin
            if (LOGGING.contains ((LOGGING.get_mENUEVENT ()))) then begin
                ignore (guiLog#put (commonStrings#eXCEPTION, self, commonStrings#sAVE, e))
            end
        end)
        end [@@warning "-7"]
    

    method onHashMap ((hashMap : java_hash_map)) : unit =
        begin
        let angleIncrementInteger : int ref = ref ((Obj.magic (hashMap#get ((string_of_int (0)))))) in ();
        let totalRotationInteger : int ref = ref ((Obj.magic (hashMap#get ((string_of_int (1)))))) in ();
        ignore ((self#getSelectedWorkArea ())#autoRotate (!angleIncrementInteger, !totalRotationInteger))
        end [@@warning "-7"]
    

    method getSelectedWorkArea () : WorkAreaJPanelInterface.workAreaJPanelInterface =
        begin
        ((Obj.magic ((Obj.magic jTabbedPane)#getSelectedComponent ())) :> WorkAreaJPanelInterface.workAreaJPanelInterface)
        end [@@warning "-7"]
    

    method updateSelectedWorkArea () : unit =
        begin
        let numberOfTabs : int ref = ref (((Obj.magic jTabbedPane)#getTabCount ())) in ();
        for index = 0 to !numberOfTabs - 1 do
            let workAreaJPanel : WorkAreaJPanelInterface.workAreaJPanelInterface ref = ref (((Obj.magic ((Obj.magic jTabbedPane)#getComponentAt (index))) :> WorkAreaJPanelInterface.workAreaJPanelInterface)) in ();
            ignore (!workAreaJPanel#deselect ())
        done;
        let workAreaJPanel : WorkAreaJPanelInterface.workAreaJPanelInterface ref = ref (((Obj.magic ((Obj.magic jTabbedPane)#getSelectedComponent ())) :> WorkAreaJPanelInterface.workAreaJPanelInterface)) in ();
        if (!workAreaJPanel != (Obj.magic 0)) then begin
            ignore (!workAreaJPanel#select ())
        end
        end [@@warning "-7"]
    

    method add : 'any1. 'any1 -> unit = fun (newCanvasInterface) ->
        let newCanvasInterface = Obj.repr newCanvasInterface in
        begin
        (try
            numberOfWorkAreas <- numberOfWorkAreas + 1;
            if (numberOfWorkAreas = mAXWORKAREAS) then begin
                raise (Failure ("Exception"))
            end;
            ignore ((Obj.magic jTabbedPane)#addTab (((Obj.magic newCanvasInterface)#getName ()), (Obj.magic (Obj.magic newCanvasInterface))));
            ignore ((Obj.magic jTabbedPane)#setSelectedComponent ((Obj.magic (Obj.magic newCanvasInterface))));
            let animationThread : java_thread ref = ref (((Obj.obj (java_new "Thread" (Obj.repr ((Obj.magic (Obj.magic newCanvasInterface)))))) :> java_thread)) in ();
            ignore (!animationThread#start ());
            (self#updateSelectedWorkArea ())
        with e -> begin
            if (LOGGING.contains ((LOGGING.get_gRAPHICSCREATION ()))) then begin
                ignore (guiLog#put (commonStrings#eXCEPTION, self, "addNewCanvas", e))
            end
        end)
        end [@@warning "-7-20"]
    

    method keyPressed : 'any1. 'any1 -> unit = fun (keyEvent) ->
        let keyEvent = Obj.repr keyEvent in
        begin
        ignore ((self#getSelectedWorkArea ())#keyPressed ((Obj.magic keyEvent)))
        end [@@warning "-7-20"]
    

    method keyReleased : 'any1. 'any1 -> unit = fun (_keyEvent) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method keyTyped : 'any1. 'any1 -> unit = fun (_keyEvent) ->
        begin
        ()
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        guiLog <- ((GuiLog.getInstance ()) :> GuiLog.guiLog);
        xslHelper <- ((XslHelper.getInstance ()) :> XslHelper.xslHelper);
        jAVA_TEMPLATE <- "svgExport.xsl";
        sAVEEXTENSION <- ".gxml";
        jAVAEXTENSION <- ".javax";
        ();
        ();
        animateJButton <- (Obj.repr (Obj.magic 0));
        autoDamageJMenuItem <- (Obj.repr (Obj.magic 0));
        autoExplodeJMenuItem <- (Obj.repr (Obj.magic 0));
        autoGrowJMenuItem <- (Obj.repr (Obj.magic 0));
        autoRotateGenerationJMenuItem <- (Obj.repr (Obj.magic 0));
        autoSheildMenuItem <- (Obj.repr (Obj.magic 0));
        autoShrinkJMenuItem <- (Obj.repr (Obj.magic 0));
        centerJMenuItem <- (Obj.repr (Obj.magic 0));
        copyJMenuItem1 <- (Obj.repr (Obj.magic 0));
        exitJMenuItem <- (Obj.repr (Obj.magic 0));
        explodeAllJMenuItem <- (Obj.repr (Obj.magic 0));
        exportJMenuItem1 <- (Obj.repr (Obj.magic 0));
        fileJMenu <- (Obj.repr (Obj.magic 0));
        frameJMenu <- (Obj.repr (Obj.magic 0));
        generateJMenu <- (Obj.repr (Obj.magic 0));
        insertAfterJMenuItem <- (Obj.repr (Obj.magic 0));
        insertBeforeJMenuItem <- (Obj.repr (Obj.magic 0));
        jButton1 <- (Obj.repr (Obj.magic 0));
        jButton2 <- (Obj.repr (Obj.magic 0));
        jButton3 <- (Obj.repr (Obj.magic 0));
        jButton4 <- (Obj.repr (Obj.magic 0));
        jButton41 <- (Obj.repr (Obj.magic 0));
        jButton5 <- (Obj.repr (Obj.magic 0));
        jMenu1 <- (Obj.repr (Obj.magic 0));
        jMenuItem1 <- (Obj.repr (Obj.magic 0));
        jPanel1 <- (Obj.repr (Obj.magic 0));
        jTabbedPane <- (Obj.repr (Obj.magic 0));
        jToolBar1 <- (Obj.repr (Obj.magic 0));
        mainJPanel <- (Obj.repr (Obj.magic 0));
        menuJMenuBar <- (Obj.repr (Obj.magic 0));
        newJMenuItem <- (Obj.repr (Obj.magic 0));
        nextFrameJMenuItem <- (Obj.repr (Obj.magic 0));
        objectJMenu <- (Obj.repr (Obj.magic 0));
        openJButton <- (Obj.repr (Obj.magic 0));
        openJMenuItem <- (Obj.repr (Obj.magic 0));
        playJButton <- (Obj.repr (Obj.magic 0));
        previousFrameJMenuItem <- (Obj.repr (Obj.magic 0));
        removeJMenuItem <- (Obj.repr (Obj.magic 0));
        saveAsJMenuItem <- (Obj.repr (Obj.magic 0));
        saveJButton <- (Obj.repr (Obj.magic 0));
        saveJMenuItem <- (Obj.repr (Obj.magic 0));
        statusJPanel <- (Obj.repr (Obj.magic 0));
        stopJjButton <- (Obj.repr (Obj.magic 0));
        viewJMenu <- (Obj.repr (Obj.magic 0));
        zoomInJMenuItem <- (Obj.repr (Obj.magic 0));
        zoomOutJMenuItem <- (Obj.repr (Obj.magic 0));
        ();
        (self#initComponents ());
        ignore (self#setSize ((new Dimension.dimension (550, 400))));
        ignore ((Obj.magic mainJPanel)#setSize ((new Dimension.dimension (550, 400))));
        ignore ((Obj.magic jTabbedPane)#setSize ((new Dimension.dimension (550, 400))));
        fileJDialog <- (new FileJDialog.fileJDialog ());
        ignore (fileJDialog#addFinishedListener (self));
        rotateJDialog <- (new RotateJDialog.rotateJDialog (self, false))
      end
  end [@@warning "-20"]
let () = java_register_constructor "MyFrame" (fun arguments -> Obj.repr (new myFrame (Obj.obj arguments)))

let main ((_args : string array)) : unit =
        begin
        (try
            ignore (AngleFactory.getInstance ());
            ignore ((SmallIntegerSingletonFactory.getInstance ())#init ());
            ignore ((new myFrame ())#show ())
        with e -> begin
            let logUtil_arg : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
            ignore ((Obj.magic !logUtil_arg)#put ((CommonStrings.getInstance ())#eXCEPTION, (Obj.magic 0), "main", e))
        end)
        end
let () = java_register_static "MyFrame.main" (fun arguments -> Obj.repr (main (Obj.obj arguments)))


