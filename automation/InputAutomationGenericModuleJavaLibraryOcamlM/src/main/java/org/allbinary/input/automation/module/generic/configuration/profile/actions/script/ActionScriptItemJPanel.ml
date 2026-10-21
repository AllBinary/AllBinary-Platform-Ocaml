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
(* package org.allbinary.input.automation.module.generic.configuration.profile.actions.script *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class actionScriptItemJPanel () =
  object (self)
    inherit JPanel.jPanel ()
    val mutable childActionScriptConditionJPanel : Obj.t = Obj.repr 0
    method childActionScriptConditionJPanel : 'r. 'r = Obj.magic childActionScriptConditionJPanel
    method set_childActionScriptConditionJPanel : 'v. 'v -> unit = fun value' -> childActionScriptConditionJPanel <- Obj.repr value'
    val mutable newActionScriptConditionJPanel : Obj.t = Obj.repr 0
    method newActionScriptConditionJPanel : 'r. 'r = Obj.magic newActionScriptConditionJPanel
    method set_newActionScriptConditionJPanel : 'v. 'v -> unit = fun value' -> newActionScriptConditionJPanel <- Obj.repr value'
    val mutable newActionScriptInputJPanel : Obj.t = Obj.repr 0
    method newActionScriptInputJPanel : 'r. 'r = Obj.magic newActionScriptInputJPanel
    method set_newActionScriptInputJPanel : 'v. 'v -> unit = fun value' -> newActionScriptInputJPanel <- Obj.repr value'
    val mutable removeJPanel : Obj.t = Obj.repr 0
    method removeJPanel : 'r. 'r = Obj.magic removeJPanel
    method set_removeJPanel : 'v. 'v -> unit = fun value' -> removeJPanel <- Obj.repr value'
    val mutable scriptItemJPanel : Obj.t = Obj.repr 0
    method scriptItemJPanel : 'r. 'r = Obj.magic scriptItemJPanel
    method set_scriptItemJPanel : 'v. 'v -> unit = fun value' -> scriptItemJPanel <- Obj.repr value'
    
    

    method getNewActionScriptInputJPanel : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic newActionScriptInputJPanel)))
        end [@@warning "-7"]
    

    method setNewActionScriptInputJPanel : 'any1. 'any1 -> unit = fun (newActionScriptInputJPanel_arg) ->
        let newActionScriptInputJPanel_arg = Obj.repr newActionScriptInputJPanel_arg in
        begin
        newActionScriptInputJPanel <- Obj.repr ((Obj.magic newActionScriptInputJPanel_arg))
        end [@@warning "-7-20"]
    

    method getRemoveJPanel : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic removeJPanel)))
        end [@@warning "-7"]
    

    method setRemoveJPanel : 'any1. 'any1 -> unit = fun (removeJPanel_arg) ->
        let removeJPanel_arg = Obj.repr removeJPanel_arg in
        begin
        removeJPanel <- Obj.repr ((Obj.magic removeJPanel_arg))
        end [@@warning "-7-20"]
    

    method getScriptItemJPanel : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic scriptItemJPanel)))
        end [@@warning "-7"]
    

    method setScriptItemJPanel : 'any1. 'any1 -> unit = fun (scriptItemJPanel_arg) ->
        let scriptItemJPanel_arg = Obj.repr scriptItemJPanel_arg in
        begin
        scriptItemJPanel <- Obj.repr ((Obj.magic scriptItemJPanel_arg))
        end [@@warning "-7-20"]
    

    method getNewActionScriptConditionJPanel : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic newActionScriptConditionJPanel)))
        end [@@warning "-7"]
    

    method setNewActionScriptConditionJPanel : 'any1. 'any1 -> unit = fun (newActionScriptConditionJPanel_arg) ->
        let newActionScriptConditionJPanel_arg = Obj.repr newActionScriptConditionJPanel_arg in
        begin
        newActionScriptConditionJPanel <- Obj.repr ((Obj.magic newActionScriptConditionJPanel_arg))
        end [@@warning "-7-20"]
    

    method getChildActionScriptConditionJPanel : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic childActionScriptConditionJPanel)))
        end [@@warning "-7"]
    

    method setChildActionScriptConditionJPanel : 'any1. 'any1 -> unit = fun (childActionScriptConditionJPanel_arg) ->
        let childActionScriptConditionJPanel_arg = Obj.repr childActionScriptConditionJPanel_arg in
        begin
        childActionScriptConditionJPanel <- Obj.repr ((Obj.magic childActionScriptConditionJPanel_arg))
        end [@@warning "-7-20"]
    

    method initComponents () : unit =
        begin
        newActionScriptInputJPanel <- Obj.repr ((new JPanel.jPanel ()));
        childActionScriptConditionJPanel <- Obj.repr ((new JPanel.jPanel ()));
        newActionScriptConditionJPanel <- Obj.repr ((new JPanel.jPanel ()));
        scriptItemJPanel <- Obj.repr ((new JPanel.jPanel ()));
        removeJPanel <- Obj.repr ((new JPanel.jPanel ()));
        ignore ((Obj.magic newActionScriptInputJPanel)#setLayout ((new GridLayout.gridLayout (1, 0))));
        let childActionScriptConditionJPanelLayout : Obj.t ref = ref ((Obj.repr (new GroupLayout.groupLayout ((Obj.magic childActionScriptConditionJPanel))))) in ();
        ignore ((Obj.magic childActionScriptConditionJPanel)#setLayout ((Obj.magic !childActionScriptConditionJPanelLayout)));
        ignore ((Obj.magic !childActionScriptConditionJPanelLayout)#setHorizontalGroup ((((Obj.magic !childActionScriptConditionJPanelLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGap (0, 229, 32767))));
        ignore ((Obj.magic !childActionScriptConditionJPanelLayout)#setVerticalGroup ((((Obj.magic !childActionScriptConditionJPanelLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGap (0, 8, 32767))));
        ignore ((Obj.magic newActionScriptConditionJPanel)#setLayout ((new GridLayout.gridLayout (1, 0))));
        ignore ((Obj.magic scriptItemJPanel)#setLayout ((new GridLayout.gridLayout (1, 1))));
        ignore ((Obj.magic removeJPanel)#setLayout ((new GridLayout.gridLayout (1, 1))));
        ignore ((Obj.magic removeJPanel)#setMinimumSize ((new Dimension.dimension (30, 20))));
        let layout : Obj.t ref = ref ((Obj.repr (new GroupLayout.groupLayout (self)))) in ();
        ignore (self#setLayout ((Obj.magic !layout)));
        ignore ((Obj.magic !layout)#setHorizontalGroup (((((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup ((((((Obj.magic !layout)#createSequentialGroup ())#addComponent ((Obj.magic scriptItemJPanel), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, 167, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addComponent ((Obj.magic removeJPanel), (javax.get_swing ())#groupLayout#dEFAULT_SIZE, 56, 32767))))#addComponent ((Obj.magic newActionScriptInputJPanel), (javax.get_swing ())#groupLayout#dEFAULT_SIZE, 229, 32767))#addComponent ((Obj.magic newActionScriptConditionJPanel), (javax.get_swing ())#groupLayout#dEFAULT_SIZE, 229, 32767))#addComponent ((Obj.magic childActionScriptConditionJPanel), (javax.get_swing ())#groupLayout#dEFAULT_SIZE, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, 32767))));
        ignore ((Obj.magic !layout)#setVerticalGroup ((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup ((((((((((Obj.magic !layout)#createSequentialGroup ())#addGroup (((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addComponent ((Obj.magic scriptItemJPanel), (javax.get_swing ())#groupLayout#dEFAULT_SIZE, 31, 32767))#addComponent ((Obj.magic removeJPanel), (javax.get_swing ())#groupLayout#alignment#tRAILING, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, 31, 32767))))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addComponent ((Obj.magic childActionScriptConditionJPanel), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addComponent ((Obj.magic newActionScriptConditionJPanel), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, 28, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addComponent ((Obj.magic newActionScriptInputJPanel), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, 30, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))))))
        end [@@warning "-7"]

    initializer
      begin
        childActionScriptConditionJPanel <- (Obj.repr (Obj.magic 0));
        newActionScriptConditionJPanel <- (Obj.repr (Obj.magic 0));
        newActionScriptInputJPanel <- (Obj.repr (Obj.magic 0));
        removeJPanel <- (Obj.repr (Obj.magic 0));
        scriptItemJPanel <- (Obj.repr (Obj.magic 0));
        ();
        (self#initComponents ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "ActionScriptItemJPanel" (fun arguments -> Obj.repr (new actionScriptItemJPanel (Obj.obj arguments)))


