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
(* package org.allbinary.input.automation *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.thread.ARunnable *)
(* import java.net.URI *)
(* import java.net.URL *)
(* import java.awt.Desktop *)
(* import java.util.List *)
(* import javax.swing.ImageIcon *)
(* import javax.swing.JDialog *)
(* import javax.help.HelpSet *)
(* import javax.help.event.HelpSetEvent *)
(* import javax.help.event.HelpSetListener *)
(* import bundle.input.automation.InputAutomationBundleActivatorListenerInterface *)
(* import bundle.input.automation.module.configuration.InputAutomationConfigurationModuleChangeListener *)
(* import bundle.input.automation.robot.InputAutomationRobotChangeListener *)
(* import org.allbinary.globals.AppUrlGlobals *)
(* import org.allbinary.globals.URLGLOBALS *)
(* import org.allbinary.gui.dialog.BasicTextJDialog *)
(* import org.allbinary.gui.swing.workers.JListSwingWorker *)
(* import org.allbinary.input.automation.configuration.InputAutomationConfiguration *)
(* import org.allbinary.input.automation.configuration.InputAutomationConfigurationFactory *)
(* import org.allbinary.input.automation.configuration.InputAutomationConfigurationModuleChangeEvent *)
(* import org.allbinary.input.automation.module.InputAutomationModuleFactoryFactory *)
(* import org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface *)
(* import org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration *)
(* import org.allbinary.input.automation.module.configuration.InputAutomationModuleConfigurations *)
(* import org.allbinary.input.automation.osgi.DesktopBundle *)
(* import org.allbinary.input.automation.robot.InputRobotFactory *)
(* import org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory *)
(* import org.allbinary.logic.java.help.JavaHelpUtil *)
(* import org.allbinary.logic.system.loader.WebappClassLoaderInfo *)
(* import org.allbinary.logic.system.security.licensing.InputAutomationClientInformationFactory *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.thread.RunnableInterface *)

let iNPUTAUTOMATION_JFRAME = ref ((Obj.magic 0))
let get_iNPUTAUTOMATION_JFRAME () = !iNPUTAUTOMATION_JFRAME
let set_iNPUTAUTOMATION_JFRAME value' = iNPUTAUTOMATION_JFRAME := value'
let () = java_register_static "InputAutomationJFrame.get_iNPUTAUTOMATION_JFRAME" (fun _ -> Obj.repr (get_iNPUTAUTOMATION_JFRAME ()))

let getInstance () =
        begin
        !iNPUTAUTOMATION_JFRAME
        end

and destroy () : unit =
        begin
        ignore (!iNPUTAUTOMATION_JFRAME#setVisible (false))
        end

let () = java_register_static "InputAutomationJFrame.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
let () = java_register_static "InputAutomationJFrame.destroy" (fun arguments -> Obj.repr (destroy (Obj.obj arguments)))
class inputAutomationJFrame () =
  object (self)
    inherit JFrame.jFrame ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable inputAutomationModuleConfigurations : InputAutomationModuleConfigurations.inputAutomationModuleConfigurations = (Obj.magic 0)
    method inputAutomationModuleConfigurations = inputAutomationModuleConfigurations
    method set_inputAutomationModuleConfigurations value' = inputAutomationModuleConfigurations <- value'
    val mutable inputAutomationModuleFactory : InputAutomationModuleFactoryFactory.inputAutomationModuleFactoryFactory = (Obj.magic 0)
    method inputAutomationModuleFactory = inputAutomationModuleFactory
    method set_inputAutomationModuleFactory value' = inputAutomationModuleFactory <- value'
    val mutable inputAutomationModuleInterface : InputAutomationModuleFactoryInterface.inputAutomationModuleFactoryInterface = (Obj.magic 0)
    method inputAutomationModuleInterface = inputAutomationModuleInterface
    method set_inputAutomationModuleInterface value' = inputAutomationModuleInterface <- value'
    val mutable runnableInterface : Obj.t = Obj.repr 0
    method runnableInterface : 'r. 'r = Obj.magic runnableInterface
    method set_runnableInterface : 'v. 'v -> unit = fun value' -> runnableInterface <- Obj.repr value'
    val mutable thread : java_thread = (Obj.magic 0)
    method thread = thread
    method set_thread value' = thread <- value'
    val mutable helpSet : Obj.t = Obj.repr 0
    method helpSet : 'r. 'r = Obj.magic helpSet
    method set_helpSet : 'v. 'v -> unit = fun value' -> helpSet <- Obj.repr value'
    val mutable uri : Obj.t = Obj.repr 0
    method uri : 'r. 'r = Obj.magic uri
    method set_uri : 'v. 'v -> unit = fun value' -> uri <- Obj.repr value'
    val mutable aboutJMenuItem : Obj.t = Obj.repr 0
    method aboutJMenuItem : 'r. 'r = Obj.magic aboutJMenuItem
    method set_aboutJMenuItem : 'v. 'v -> unit = fun value' -> aboutJMenuItem <- Obj.repr value'
    val mutable automationModuleConfigurationJPanel : Obj.t = Obj.repr 0
    method automationModuleConfigurationJPanel : 'r. 'r = Obj.magic automationModuleConfigurationJPanel
    method set_automationModuleConfigurationJPanel : 'v. 'v -> unit = fun value' -> automationModuleConfigurationJPanel <- Obj.repr value'
    val mutable gameRobotJTabbedPane : Obj.t = Obj.repr 0
    method gameRobotJTabbedPane : 'r. 'r = Obj.magic gameRobotJTabbedPane
    method set_gameRobotJTabbedPane : 'v. 'v -> unit = fun value' -> gameRobotJTabbedPane <- Obj.repr value'
    val mutable helpJMenuItem : Obj.t = Obj.repr 0
    method helpJMenuItem : 'r. 'r = Obj.magic helpJMenuItem
    method set_helpJMenuItem : 'v. 'v -> unit = fun value' -> helpJMenuItem <- Obj.repr value'
    val mutable inputAutomationModuleJList : Obj.t = Obj.repr 0
    method inputAutomationModuleJList : 'r. 'r = Obj.magic inputAutomationModuleJList
    method set_inputAutomationModuleJList : 'v. 'v -> unit = fun value' -> inputAutomationModuleJList <- Obj.repr value'
    val mutable inputAutomationModuleJPanel : Obj.t = Obj.repr 0
    method inputAutomationModuleJPanel : 'r. 'r = Obj.magic inputAutomationModuleJPanel
    method set_inputAutomationModuleJPanel : 'v. 'v -> unit = fun value' -> inputAutomationModuleJPanel <- Obj.repr value'
    val mutable jScrollPane1 : Obj.t = Obj.repr 0
    method jScrollPane1 : 'r. 'r = Obj.magic jScrollPane1
    method set_jScrollPane1 : 'v. 'v -> unit = fun value' -> jScrollPane1 <- Obj.repr value'
    val mutable mainJMenuBar : Obj.t = Obj.repr 0
    method mainJMenuBar : 'r. 'r = Obj.magic mainJMenuBar
    method set_mainJMenuBar : 'v. 'v -> unit = fun value' -> mainJMenuBar <- Obj.repr value'
    val mutable modulesJMenuItem : Obj.t = Obj.repr 0
    method modulesJMenuItem : 'r. 'r = Obj.magic modulesJMenuItem
    method set_modulesJMenuItem : 'v. 'v -> unit = fun value' -> modulesJMenuItem <- Obj.repr value'
    val mutable noModuleSelectedJDialog : Obj.t = Obj.repr 0
    method noModuleSelectedJDialog : 'r. 'r = Obj.magic noModuleSelectedJDialog
    method set_noModuleSelectedJDialog : 'v. 'v -> unit = fun value' -> noModuleSelectedJDialog <- Obj.repr value'
    val mutable noModuleSelectedJLabel : Obj.t = Obj.repr 0
    method noModuleSelectedJLabel : 'r. 'r = Obj.magic noModuleSelectedJLabel
    method set_noModuleSelectedJLabel : 'v. 'v -> unit = fun value' -> noModuleSelectedJLabel <- Obj.repr value'
    val mutable optionsJMenu : Obj.t = Obj.repr 0
    method optionsJMenu : 'r. 'r = Obj.magic optionsJMenu
    method set_optionsJMenu : 'v. 'v -> unit = fun value' -> optionsJMenu <- Obj.repr value'
    val mutable processingJMenu : Obj.t = Obj.repr 0
    method processingJMenu : 'r. 'r = Obj.magic processingJMenu
    method set_processingJMenu : 'v. 'v -> unit = fun value' -> processingJMenu <- Obj.repr value'
    val mutable startJMenuItem : Obj.t = Obj.repr 0
    method startJMenuItem : 'r. 'r = Obj.magic startJMenuItem
    method set_startJMenuItem : 'v. 'v -> unit = fun value' -> startJMenuItem <- Obj.repr value'
    val mutable stopJMenuItem : Obj.t = Obj.repr 0
    method stopJMenuItem : 'r. 'r = Obj.magic stopJMenuItem
    method set_stopJMenuItem : 'v. 'v -> unit = fun value' -> stopJMenuItem <- Obj.repr value'
    val mutable stopOnFocusJCheckBoxMenuItem : Obj.t = Obj.repr 0
    method stopOnFocusJCheckBoxMenuItem : 'r. 'r = Obj.magic stopOnFocusJCheckBoxMenuItem
    method set_stopOnFocusJCheckBoxMenuItem : 'v. 'v -> unit = fun value' -> stopOnFocusJCheckBoxMenuItem <- Obj.repr value'
    val mutable subscriptionJMenuItem : Obj.t = Obj.repr 0
    method subscriptionJMenuItem : 'r. 'r = Obj.magic subscriptionJMenuItem
    method set_subscriptionJMenuItem : 'v. 'v -> unit = fun value' -> subscriptionJMenuItem <- Obj.repr value'
    val mutable toolsJMenu : Obj.t = Obj.repr 0
    method toolsJMenu : 'r. 'r = Obj.magic toolsJMenu
    method set_toolsJMenu : 'v. 'v -> unit = fun value' -> toolsJMenu <- Obj.repr value'
    val mutable updatesJMenuItem : Obj.t = Obj.repr 0
    method updatesJMenuItem : 'r. 'r = Obj.magic updatesJMenuItem
    method set_updatesJMenuItem : 'v. 'v -> unit = fun value' -> updatesJMenuItem <- Obj.repr value'
    
    

    method helpSetAdded : 'any1. 'any1 -> unit = fun (helpSetEvent) ->
        let helpSetEvent = Obj.repr helpSetEvent in
        begin
        ignore ((Obj.magic helpSet)#add (((Obj.magic helpSetEvent)#getHelpSet ())))
        end [@@warning "-7-20"]
    

    method helpSetRemoved : 'any1. 'any1 -> unit = fun (helpSetEvent) ->
        let helpSetEvent = Obj.repr helpSetEvent in
        begin
        ignore ((Obj.magic helpSet)#remove (((Obj.magic helpSetEvent)#getHelpSet ())))
        end [@@warning "-7-20"]
    

    method init () : unit =
        begin
        let inputAutomationConfigurationFactory : InputAutomationConfigurationFactory.inputAutomationConfigurationFactory ref = ref (((InputAutomationConfigurationFactory.getInstance ()) :> InputAutomationConfigurationFactory.inputAutomationConfigurationFactory)) in ();
        ignore (!inputAutomationConfigurationFactory#init ((InputAutomationClientInformationFactory.getInstance ())));
        let inputAutomationModuleConfigurationList : Obj.t ref = ref ((Obj.repr (!inputAutomationConfigurationFactory#inputAutomationConfiguration#getInputAutomationModuleConfigurationList ()))) in ();
        if ((Obj.magic !inputAutomationModuleConfigurationList) == (Obj.magic 0)) then begin
            ()
        end else begin
            inputAutomationModuleConfigurations <- (new InputAutomationModuleConfigurations.inputAutomationModuleConfigurations ((Obj.magic !inputAutomationModuleConfigurationList)))
        end;
        inputAutomationModuleFactory <- (new InputAutomationModuleFactoryFactory.inputAutomationModuleFactoryFactory (inputAutomationModuleConfigurations, self));
        ignore (((new JListSwingWorker.jListSwingWorker ((Obj.magic inputAutomationModuleJList), (inputAutomationModuleFactory#getListModel ()))))#execute ());
        ignore ((Obj.magic gameRobotJTabbedPane)#setEnabledAt (1, false));
        ignore ((Obj.magic gameRobotJTabbedPane)#setSelectedIndex (0))
        end [@@warning "-7"]
    

    method initComponents () : unit =
        begin
        noModuleSelectedJDialog <- Obj.repr ((new JDialog.jDialog ()));
        noModuleSelectedJLabel <- Obj.repr ((new JLabel.jLabel ()));
        gameRobotJTabbedPane <- Obj.repr ((new JTabbedPane.jTabbedPane ()));
        inputAutomationModuleJPanel <- Obj.repr ((new JPanel.jPanel ()));
        jScrollPane1 <- Obj.repr ((new JScrollPane.jScrollPane ()));
        inputAutomationModuleJList <- Obj.repr ((new JList.jList ()));
        automationModuleConfigurationJPanel <- Obj.repr ((new JPanel.jPanel ()));
        mainJMenuBar <- Obj.repr ((new JMenuBar.jMenuBar ()));
        processingJMenu <- Obj.repr ((new JMenu.jMenu ()));
        startJMenuItem <- Obj.repr ((new JMenuItem.jMenuItem ()));
        stopJMenuItem <- Obj.repr ((new JMenuItem.jMenuItem ()));
        optionsJMenu <- Obj.repr ((new JMenu.jMenu ()));
        stopOnFocusJCheckBoxMenuItem <- Obj.repr ((new JCheckBoxMenuItem.jCheckBoxMenuItem ()));
        toolsJMenu <- Obj.repr ((new JMenu.jMenu ()));
        helpJMenuItem <- Obj.repr ((new JMenuItem.jMenuItem ()));
        updatesJMenuItem <- Obj.repr ((new JMenuItem.jMenuItem ()));
        subscriptionJMenuItem <- Obj.repr ((new JMenuItem.jMenuItem ()));
        modulesJMenuItem <- Obj.repr ((new JMenuItem.jMenuItem ()));
        aboutJMenuItem <- Obj.repr ((new JMenuItem.jMenuItem ()));
        ignore ((Obj.magic noModuleSelectedJDialog)#setMinimumSize ((new Dimension.dimension (200, 100))));
        ignore ((Obj.magic noModuleSelectedJLabel)#setText ("Please Select A Module"));
        let noModuleSelectedJDialogLayout : Obj.t ref = ref ((Obj.repr (new GroupLayout.groupLayout (((Obj.magic noModuleSelectedJDialog)#getContentPane ()))))) in ();
        ignore (((Obj.magic noModuleSelectedJDialog)#getContentPane ())#setLayout ((Obj.magic !noModuleSelectedJDialogLayout)));
        ignore ((Obj.magic !noModuleSelectedJDialogLayout)#setHorizontalGroup ((((Obj.magic !noModuleSelectedJDialogLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup ((((((Obj.magic !noModuleSelectedJDialogLayout)#createSequentialGroup ())#addContainerGap ())#addComponent ((Obj.magic noModuleSelectedJLabel)))#addContainerGap ((javax.get_swing ())#groupLayout#dEFAULT_SIZE, 32767))))));
        ignore ((Obj.magic !noModuleSelectedJDialogLayout)#setVerticalGroup ((((Obj.magic !noModuleSelectedJDialogLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addComponent ((Obj.magic noModuleSelectedJLabel), (javax.get_swing ())#groupLayout#alignment#tRAILING, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, 48, 32767))));
        ignore (self#setDefaultCloseOperation ((javax.get_swing ())#windowConstants#eXIT_ON_CLOSE));
        ignore (self#setMinimumSize ((new Dimension.dimension (325, 215))));
        ignore (self#setResizable (false));
        ignore (self#addWindowFocusListener ((object (self)
            inherit WindowFocusListener.windowFocusListener () as super
            

            method windowGainedFocus : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#formWindowGainedFocus ((Obj.magic evt)))
                end [@@warning "-20"]
            

            method windowLostFocus : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#formWindowLostFocus ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore (self#addFocusListener ((object (self)
            inherit FocusAdapter.focusAdapter () as super
            

            method focusGained : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#formFocusGained ((Obj.magic evt)))
                end [@@warning "-20"]
            

            method focusLost : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#formFocusLost ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic gameRobotJTabbedPane)#setMinimumSize ((new Dimension.dimension (320, 200))));
        ignore ((Obj.magic inputAutomationModuleJList)#setMinimumSize ((new Dimension.dimension (200, 0))));
        ignore ((Obj.magic inputAutomationModuleJList)#addListSelectionListener ((object (self)
            inherit ListSelectionListener.listSelectionListener () as super
            

            method valueChanged : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#inputAutomationModuleJListValueChanged ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic jScrollPane1)#setViewportView ((Obj.magic inputAutomationModuleJList)));
        let inputAutomationModuleJPanelLayout : Obj.t ref = ref ((Obj.repr (new GroupLayout.groupLayout ((Obj.magic inputAutomationModuleJPanel))))) in ();
        ignore ((Obj.magic inputAutomationModuleJPanel)#setLayout ((Obj.magic !inputAutomationModuleJPanelLayout)));
        ignore ((Obj.magic !inputAutomationModuleJPanelLayout)#setHorizontalGroup ((((Obj.magic !inputAutomationModuleJPanelLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup (((((Obj.magic !inputAutomationModuleJPanelLayout)#createSequentialGroup ())#addComponent ((Obj.magic jScrollPane1), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, 199, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))#addContainerGap (367, 32767))))));
        ignore ((Obj.magic !inputAutomationModuleJPanelLayout)#setVerticalGroup ((((Obj.magic !inputAutomationModuleJPanelLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup (((((Obj.magic !inputAutomationModuleJPanelLayout)#createSequentialGroup ())#addComponent ((Obj.magic jScrollPane1), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, 330, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))#addContainerGap ((javax.get_swing ())#groupLayout#dEFAULT_SIZE, 32767))))));
        ignore ((Obj.magic gameRobotJTabbedPane)#addTab ("Modules", (Obj.magic inputAutomationModuleJPanel)));
        let automationModuleConfigurationJPanelLayout : Obj.t ref = ref ((Obj.repr (new GroupLayout.groupLayout ((Obj.magic automationModuleConfigurationJPanel))))) in ();
        ignore ((Obj.magic automationModuleConfigurationJPanel)#setLayout ((Obj.magic !automationModuleConfigurationJPanelLayout)));
        ignore ((Obj.magic !automationModuleConfigurationJPanelLayout)#setHorizontalGroup ((((Obj.magic !automationModuleConfigurationJPanelLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGap (0, 566, 32767))));
        ignore ((Obj.magic !automationModuleConfigurationJPanelLayout)#setVerticalGroup ((((Obj.magic !automationModuleConfigurationJPanelLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGap (0, 334, 32767))));
        ignore ((Obj.magic gameRobotJTabbedPane)#addTab ("Configuration", (Obj.magic automationModuleConfigurationJPanel)));
        ignore ((Obj.magic processingJMenu)#setText ("Processing"));
        ignore ((Obj.magic processingJMenu)#setToolTipText ("Set module processing state"));
        ignore ((Obj.magic startJMenuItem)#setText (commonStrings#sTART));
        ignore ((Obj.magic startJMenuItem)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#startJMenuItemActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic processingJMenu)#add ((Obj.magic startJMenuItem)));
        ignore ((Obj.magic stopJMenuItem)#setText ("Stop"));
        ignore ((Obj.magic stopJMenuItem)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#stopJMenuItemActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic processingJMenu)#add ((Obj.magic stopJMenuItem)));
        ignore ((Obj.magic mainJMenuBar)#add ((Obj.magic processingJMenu)));
        ignore ((Obj.magic optionsJMenu)#setText ("Options"));
        ignore ((Obj.magic optionsJMenu)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#optionsJMenuActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic stopOnFocusJCheckBoxMenuItem)#setSelected (true));
        ignore ((Obj.magic stopOnFocusJCheckBoxMenuItem)#setEnabled (false));
        ignore ((Obj.magic stopOnFocusJCheckBoxMenuItem)#setLabel ("Stop Module On Focus"));
        ignore ((Obj.magic stopOnFocusJCheckBoxMenuItem)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#stopOnFocusJCheckBoxMenuItemActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic optionsJMenu)#add ((Obj.magic stopOnFocusJCheckBoxMenuItem)));
        ignore ((Obj.magic mainJMenuBar)#add ((Obj.magic optionsJMenu)));
        ignore ((Obj.magic toolsJMenu)#setText ("Help"));
        ignore ((Obj.magic helpJMenuItem)#setText ("Help"));
        ignore ((Obj.magic helpJMenuItem)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#helpJMenuItemActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic toolsJMenu)#add ((Obj.magic helpJMenuItem)));
        ignore ((Obj.magic updatesJMenuItem)#setText ("Updates"));
        ignore ((Obj.magic updatesJMenuItem)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#updatesJMenuItemActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic toolsJMenu)#add ((Obj.magic updatesJMenuItem)));
        ignore ((Obj.magic subscriptionJMenuItem)#setText ("Subscription"));
        ignore ((Obj.magic subscriptionJMenuItem)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#subscriptionJMenuItemActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic toolsJMenu)#add ((Obj.magic subscriptionJMenuItem)));
        ignore ((Obj.magic modulesJMenuItem)#setText ("Module Manager"));
        ignore ((Obj.magic modulesJMenuItem)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#modulesJMenuItemActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic toolsJMenu)#add ((Obj.magic modulesJMenuItem)));
        ignore ((Obj.magic aboutJMenuItem)#setText ("About"));
        ignore ((Obj.magic aboutJMenuItem)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#aboutJMenuItemActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic toolsJMenu)#add ((Obj.magic aboutJMenuItem)));
        ignore ((Obj.magic mainJMenuBar)#add ((Obj.magic toolsJMenu)));
        ignore (self#setJMenuBar ((Obj.magic mainJMenuBar)));
        let layout : Obj.t ref = ref ((Obj.repr (new GroupLayout.groupLayout ((self#getContentPane ()))))) in ();
        ignore ((self#getContentPane ())#setLayout ((Obj.magic !layout)));
        ignore ((Obj.magic !layout)#setHorizontalGroup ((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addComponent ((Obj.magic gameRobotJTabbedPane), (javax.get_swing ())#groupLayout#alignment#tRAILING, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, 571, 32767))));
        ignore ((Obj.magic !layout)#setVerticalGroup ((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addComponent ((Obj.magic gameRobotJTabbedPane), (javax.get_swing ())#groupLayout#alignment#tRAILING, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, 359, 32767))));
        ignore (self#pack ())
        end [@@warning "-7"]
    

    method subscriptionJMenuItemActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (try
            ignore ((Desktop.getDesktop ())#browse ((Obj.magic uri)))
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "subscriptionJMenuItemActionPerformed", e))
        end)
        end [@@warning "-7-20"]
    

    method updatesJMenuItemActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (try
            ignore ((Desktop.getDesktop ())#browse ((Obj.magic uri)))
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "updatesJMenuItemActionPerformed", e))
        end)
        end [@@warning "-7-20"]
    

    method aboutJMenuItemActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        let textJDialog : Obj.t ref = ref ((Obj.repr (new BasicTextJDialog.basicTextJDialog ("Copyright (c) 2002-2007 AllBinary")))) in ();
        ignore ((Obj.magic !textJDialog)#setVisible (true));
        ignore ((Obj.magic !textJDialog)#setLocationRelativeTo (self))
        end [@@warning "-7-20"]
    

    method modulesJMenuItemActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (try
            ignore ((Obj.obj (java_new "DesktopBundle" (Obj.repr ())))#start ())
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "modulesJMenuItemActionPerformed", e))
        end)
        end [@@warning "-7-20"]
    

    method helpJMenuItemActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        ignore ((JavaHelpUtil.getInstance ())#show ((Obj.magic helpSet)))
        end [@@warning "-7-20"]
    

    method stopOnFocusJCheckBoxMenuItemActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method optionsJMenuActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method formWindowLostFocus : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        ignore ((Obj.magic logUtil)#putF ("Nothing", self, "focusLost"))
        end [@@warning "-7-20"]
    

    method formWindowGainedFocus : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        if ((Obj.magic stopOnFocusJCheckBoxMenuItem)#isSelected ()) then begin
            ignore ((Obj.magic logUtil)#putF ("Stopping", self, "focusGained"));
            if ((Obj.magic runnableInterface) != (Obj.magic 0)) then begin
                ignore ((Obj.magic runnableInterface)#setRunning (false))
            end
        end
        end [@@warning "-7-20"]
    

    method formFocusLost : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method formFocusGained : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method inputAutomationModuleJListValueChanged : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (try
            let gameAutomationRobotModuleNameString : string ref = ref ((Obj.magic ((Obj.magic inputAutomationModuleJList)#getSelectedValue ()))) in ();
            if (!gameAutomationRobotModuleNameString <> (Obj.magic 0)) then begin
                inputAutomationModuleInterface <- (inputAutomationModuleFactory#getInstance (!gameAutomationRobotModuleNameString));
                ignore ((self#getAutomationModuleConfigurationJPanel ())#removeAll ());
                let layout : Obj.t ref = ref ((Obj.repr (Obj.magic ((self#getAutomationModuleConfigurationJPanel ())#getLayout ())))) in ();
                ignore ((Obj.magic !layout)#setHorizontalGroup (((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGap (0, 395, 32767))#addComponent ((inputAutomationModuleInterface#getConfigurationJPanel ()), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))));
                ignore ((Obj.magic !layout)#setVerticalGroup (((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGap (0, 256, 32767))#addComponent ((inputAutomationModuleInterface#getConfigurationJPanel ()), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))));
                ignore ((Obj.magic gameRobotJTabbedPane)#setEnabledAt (1, true));
                ignore ((Obj.magic logUtil)#putF ((("Setting Module: " ^ !gameAutomationRobotModuleNameString) ^ " and Configuration JPanel"), self, "gameAutomationRobotModuleJListValueChanged"))
            end else begin
                ignore ((Obj.magic logUtil)#putF ("Module name was null", self, "gameAutomationRobotModuleJListValueChanged"));
                ignore ((Obj.magic gameRobotJTabbedPane)#setEnabledAt (1, false))
            end
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "gameAutomationRobotModuleJListValueChanged", e))
        end)
        end [@@warning "-7-20"]
    

    method stopJMenuItemActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        if ((Obj.magic runnableInterface) != (Obj.magic 0)) then begin
            ignore ((Obj.magic runnableInterface)#setRunning (false))
        end else begin
            ignore ((Obj.magic noModuleSelectedJDialog)#setVisible (true));
            ignore ((Obj.magic noModuleSelectedJDialog)#setLocationRelativeTo (self))
        end
        end [@@warning "-7-20"]
    

    method startJMenuItemActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (try
            ignore ((Obj.magic logUtil)#putF ("Starting", self, "startJMenuItemActionPerformed"));
            if (inputAutomationModuleInterface != (Obj.magic 0)) then begin
                runnableInterface <- Obj.repr ((inputAutomationModuleInterface#getInstance ()));
                if ((Obj.magic runnableInterface) != (Obj.magic 0)) then begin
                    thread <- (Obj.obj (java_new "Thread" (Obj.repr ((Obj.magic runnableInterface)))));
                    ignore (thread#setPriority ((1 + 1)));
                    ignore (thread#start ())
                end else begin
                    ignore ((Obj.magic logUtil)#putF ("Runnnable was null", self, "startJMenuItemActionPerformed"));
                    ignore ((Obj.magic noModuleSelectedJDialog)#setVisible (true));
                    ignore ((Obj.magic noModuleSelectedJDialog)#setLocationRelativeTo (self))
                end
            end else begin
                ignore ((Obj.magic logUtil)#putF ("InputAutomationModuleInterface was null", self, "startJMenuItemActionPerformed"));
                ignore ((Obj.magic noModuleSelectedJDialog)#setVisible (true));
                ignore ((Obj.magic noModuleSelectedJDialog)#setLocationRelativeTo (self))
            end
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "startJMenuItemActionPerformed", e))
        end)
        end [@@warning "-7-20"]
    

    method getAutomationModuleConfigurationJPanel : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic automationModuleConfigurationJPanel)))
        end [@@warning "-7"]
    

    method setAutomationModuleConfigurationJPanel : 'any1. 'any1 -> unit = fun (automationModuleConfigurationJPanel_arg) ->
        let automationModuleConfigurationJPanel_arg = Obj.repr automationModuleConfigurationJPanel_arg in
        begin
        automationModuleConfigurationJPanel <- Obj.repr ((Obj.magic automationModuleConfigurationJPanel_arg))
        end [@@warning "-7-20"]
    

    method onAdd : 'any1. 'any1 -> unit = fun (inputAutomationRobotChangeEvent) ->
        let inputAutomationRobotChangeEvent = Obj.repr inputAutomationRobotChangeEvent in
        begin
        (try
            ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, "onAdd"));
            ignore ((InputRobotFactory.getInstance ())#add ((((Obj.magic inputAutomationRobotChangeEvent)#getInputAutomationRobotInterfaceWrapper ())#getInputRobotInterface ())))
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "onAdd", e))
        end)
        end [@@warning "-7-20"]
    

    method onRemove : 'any1. 'any1 -> unit = fun (inputAutomationRobotChangeEvent) ->
        let inputAutomationRobotChangeEvent = Obj.repr inputAutomationRobotChangeEvent in
        begin
        (try
            ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, "onRemove"));
            ignore ((InputRobotFactory.getInstance ())#add ((((Obj.magic inputAutomationRobotChangeEvent)#getInputAutomationRobotInterfaceWrapper ())#getInputRobotInterface ())))
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "onRemove", e))
        end)
        end [@@warning "-7-20"]
    

    (* Java overload onAdd(InputAutomationConfigurationModuleChangeEvent) is not converted: OCaml has one method per name *)
    

    (* Java overload onRemove(InputAutomationConfigurationModuleChangeEvent) is not converted: OCaml has one method per name *)

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        inputAutomationModuleConfigurations <- ((new InputAutomationModuleConfigurations.inputAutomationModuleConfigurations ()) :> InputAutomationModuleConfigurations.inputAutomationModuleConfigurations);
        inputAutomationModuleFactory <- ((Obj.magic 0) :> InputAutomationModuleFactoryFactory.inputAutomationModuleFactoryFactory);
        inputAutomationModuleInterface <- ((Obj.magic 0) :> InputAutomationModuleFactoryInterface.inputAutomationModuleFactoryInterface);
        runnableInterface <- (Obj.repr (Obj.magic 0));
        thread <- ((Obj.magic 0) :> java_thread);
        ();
        uri <- (Obj.repr (new URI.uRI ("http://geocities.com/allbinary/")));
        aboutJMenuItem <- (Obj.repr (Obj.magic 0));
        automationModuleConfigurationJPanel <- (Obj.repr (Obj.magic 0));
        gameRobotJTabbedPane <- (Obj.repr (Obj.magic 0));
        helpJMenuItem <- (Obj.repr (Obj.magic 0));
        inputAutomationModuleJList <- (Obj.repr (Obj.magic 0));
        inputAutomationModuleJPanel <- (Obj.repr (Obj.magic 0));
        jScrollPane1 <- (Obj.repr (Obj.magic 0));
        mainJMenuBar <- (Obj.repr (Obj.magic 0));
        modulesJMenuItem <- (Obj.repr (Obj.magic 0));
        noModuleSelectedJDialog <- (Obj.repr (Obj.magic 0));
        noModuleSelectedJLabel <- (Obj.repr (Obj.magic 0));
        optionsJMenu <- (Obj.repr (Obj.magic 0));
        processingJMenu <- (Obj.repr (Obj.magic 0));
        startJMenuItem <- (Obj.repr (Obj.magic 0));
        stopJMenuItem <- (Obj.repr (Obj.magic 0));
        stopOnFocusJCheckBoxMenuItem <- (Obj.repr (Obj.magic 0));
        subscriptionJMenuItem <- (Obj.repr (Obj.magic 0));
        toolsJMenu <- (Obj.repr (Obj.magic 0));
        updatesJMenuItem <- (Obj.repr (Obj.magic 0));
        ();
        (self#initComponents ());
        let url : Obj.t ref = ref ((Obj.repr ((java_get_class (Obj.repr self))#getResource ("/help/Help.hs")))) in ();
        ignore ((Obj.magic logUtil)#putF (("URL: " ^ java_string_of (Obj.repr ((Obj.magic !url)))), self, commonStrings#cONSTRUCTOR));
        helpSet <- Obj.repr (((JavaHelpUtil.getInstance ())#getHelpSet ((Obj.magic !url))));
        url := Obj.repr (((java_get_class (Obj.repr self))#getResource ("/resources/allbinaryicon8bit.jpg")));
        let imageIcon : Obj.t ref = ref ((Obj.repr (new ImageIcon.imageIcon ((Obj.magic !url))))) in ();
        ignore (self#setIconImage (((Obj.magic !imageIcon)#getImage ())));
        (self#init ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "InputAutomationJFrame" (fun arguments -> Obj.repr (new inputAutomationJFrame (Obj.obj arguments)))

let rec create : 'any1. 'any1 -> unit = fun (inputAutomationBundleActivatorListenerInterface) ->
        let inputAutomationBundleActivatorListenerInterface = Obj.repr inputAutomationBundleActivatorListenerInterface in
        begin
        ignore (Obj.magic (java_call_static "LogConfigTypeFactory.getInstance" (Obj.repr ())));
        let appUrlGlobals : AppUrlGlobals.appUrlGlobals ref = ref (((new AppUrlGlobals.appUrlGlobals ()) :> AppUrlGlobals.appUrlGlobals)) in ();
        ignore (!appUrlGlobals#setWebappPath ("G:/mnt/bc/mydev/work_automation/automation/run/"));
        ignore (URLGLOBALS.init (!appUrlGlobals));
        ignore (WebappClassLoaderInfo.setLoader (((java_get_class (Obj.repr !appUrlGlobals))#getClassLoader ())));
        ignore ((java.get_awt ())#eventQueue#invokeLater ((object (self)
            inherit ARunnable.aRunnable () as super
            

            method run () : unit =
                begin
                let logUtil_arg : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
                let commonStrings_arg : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
                (try
                    ignore ((Obj.magic !logUtil_arg)#putF ("Running", self, !commonStrings_arg#rUN));
                    iNPUTAUTOMATION_JFRAME := (new inputAutomationJFrame ());
                    ignore ((InputRobotFactory.getInstance ())#addListener ((getInstance ())));
                    if (!inputAutomationBundleActivatorListenerInterface != (Obj.magic 0)) then begin
                        ignore (!inputAutomationBundleActivatorListenerInterface#registerAsService ());
                        ignore (!inputAutomationBundleActivatorListenerInterface#useServices ())
                    end;
                    ignore (!iNPUTAUTOMATION_JFRAME#setVisible (true))
                with e -> begin
                    ignore ((Obj.magic !logUtil_arg)#put (!commonStrings_arg#eXCEPTION, self, !commonStrings_arg#rUN, e))
                end)
                end
        end)))
        end [@@warning "-20"]

and main ((_args : string array)) : unit =
        begin
        ignore (create ((Obj.magic 0)))
        end
let () = java_register_static "InputAutomationJFrame.create" (fun arguments -> Obj.repr (create (Obj.obj arguments)))
let () = java_register_static "InputAutomationJFrame.main" (fun arguments -> Obj.repr (main (Obj.obj arguments)))


