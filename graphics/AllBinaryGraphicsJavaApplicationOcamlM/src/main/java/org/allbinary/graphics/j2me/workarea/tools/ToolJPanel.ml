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
(* package org.allbinary.graphics.j2me.workarea.tools *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class toolJPanel () =
  object (self)
    inherit JPanel.jPanel ()
    val mutable arcJButton : Obj.t = Obj.repr 0
    method arcJButton : 'r. 'r = Obj.magic arcJButton
    method set_arcJButton : 'v. 'v -> unit = fun value' -> arcJButton <- Obj.repr value'
    val mutable charJButton : Obj.t = Obj.repr 0
    method charJButton : 'r. 'r = Obj.magic charJButton
    method set_charJButton : 'v. 'v -> unit = fun value' -> charJButton <- Obj.repr value'
    val mutable colorJList : Obj.t = Obj.repr 0
    method colorJList : 'r. 'r = Obj.magic colorJList
    method set_colorJList : 'v. 'v -> unit = fun value' -> colorJList <- Obj.repr value'
    val mutable colorJPanel : Obj.t = Obj.repr 0
    method colorJPanel : 'r. 'r = Obj.magic colorJPanel
    method set_colorJPanel : 'v. 'v -> unit = fun value' -> colorJPanel <- Obj.repr value'
    val mutable dottedArcJButton : Obj.t = Obj.repr 0
    method dottedArcJButton : 'r. 'r = Obj.magic dottedArcJButton
    method set_dottedArcJButton : 'v. 'v -> unit = fun value' -> dottedArcJButton <- Obj.repr value'
    val mutable dottedFillArcJButton : Obj.t = Obj.repr 0
    method dottedFillArcJButton : 'r. 'r = Obj.magic dottedFillArcJButton
    method set_dottedFillArcJButton : 'v. 'v -> unit = fun value' -> dottedFillArcJButton <- Obj.repr value'
    val mutable dottedFillRectJButton : Obj.t = Obj.repr 0
    method dottedFillRectJButton : 'r. 'r = Obj.magic dottedFillRectJButton
    method set_dottedFillRectJButton : 'v. 'v -> unit = fun value' -> dottedFillRectJButton <- Obj.repr value'
    val mutable dottedFillRountRectJButton : Obj.t = Obj.repr 0
    method dottedFillRountRectJButton : 'r. 'r = Obj.magic dottedFillRountRectJButton
    method set_dottedFillRountRectJButton : 'v. 'v -> unit = fun value' -> dottedFillRountRectJButton <- Obj.repr value'
    val mutable dottedLineJButton : Obj.t = Obj.repr 0
    method dottedLineJButton : 'r. 'r = Obj.magic dottedLineJButton
    method set_dottedLineJButton : 'v. 'v -> unit = fun value' -> dottedLineJButton <- Obj.repr value'
    val mutable dottedRectButton : Obj.t = Obj.repr 0
    method dottedRectButton : 'r. 'r = Obj.magic dottedRectButton
    method set_dottedRectButton : 'v. 'v -> unit = fun value' -> dottedRectButton <- Obj.repr value'
    val mutable fillArcJButton : Obj.t = Obj.repr 0
    method fillArcJButton : 'r. 'r = Obj.magic fillArcJButton
    method set_fillArcJButton : 'v. 'v -> unit = fun value' -> fillArcJButton <- Obj.repr value'
    val mutable fillRectJButton : Obj.t = Obj.repr 0
    method fillRectJButton : 'r. 'r = Obj.magic fillRectJButton
    method set_fillRectJButton : 'v. 'v -> unit = fun value' -> fillRectJButton <- Obj.repr value'
    val mutable fillRoundRectJButton : Obj.t = Obj.repr 0
    method fillRoundRectJButton : 'r. 'r = Obj.magic fillRoundRectJButton
    method set_fillRoundRectJButton : 'v. 'v -> unit = fun value' -> fillRoundRectJButton <- Obj.repr value'
    val mutable imageJButton : Obj.t = Obj.repr 0
    method imageJButton : 'r. 'r = Obj.magic imageJButton
    method set_imageJButton : 'v. 'v -> unit = fun value' -> imageJButton <- Obj.repr value'
    val mutable lineJButton : Obj.t = Obj.repr 0
    method lineJButton : 'r. 'r = Obj.magic lineJButton
    method set_lineJButton : 'v. 'v -> unit = fun value' -> lineJButton <- Obj.repr value'
    val mutable rectJButton : Obj.t = Obj.repr 0
    method rectJButton : 'r. 'r = Obj.magic rectJButton
    method set_rectJButton : 'v. 'v -> unit = fun value' -> rectJButton <- Obj.repr value'
    val mutable roundRectJButton : Obj.t = Obj.repr 0
    method roundRectJButton : 'r. 'r = Obj.magic roundRectJButton
    method set_roundRectJButton : 'v. 'v -> unit = fun value' -> roundRectJButton <- Obj.repr value'
    val mutable stringJButton : Obj.t = Obj.repr 0
    method stringJButton : 'r. 'r = Obj.magic stringJButton
    method set_stringJButton : 'v. 'v -> unit = fun value' -> stringJButton <- Obj.repr value'
    
    

    method initComponents () : unit =
        begin
        lineJButton <- Obj.repr ((new JButton.jButton ()));
        rectJButton <- Obj.repr ((new JButton.jButton ()));
        arcJButton <- Obj.repr ((new JButton.jButton ()));
        stringJButton <- Obj.repr ((new JButton.jButton ()));
        charJButton <- Obj.repr ((new JButton.jButton ()));
        roundRectJButton <- Obj.repr ((new JButton.jButton ()));
        imageJButton <- Obj.repr ((new JButton.jButton ()));
        fillArcJButton <- Obj.repr ((new JButton.jButton ()));
        fillRectJButton <- Obj.repr ((new JButton.jButton ()));
        fillRoundRectJButton <- Obj.repr ((new JButton.jButton ()));
        dottedLineJButton <- Obj.repr ((new JButton.jButton ()));
        dottedRectButton <- Obj.repr ((new JButton.jButton ()));
        dottedArcJButton <- Obj.repr ((new JButton.jButton ()));
        dottedFillRectJButton <- Obj.repr ((new JButton.jButton ()));
        dottedFillArcJButton <- Obj.repr ((new JButton.jButton ()));
        dottedFillRountRectJButton <- Obj.repr ((new JButton.jButton ()));
        colorJPanel <- Obj.repr ((new JPanel.jPanel ()));
        colorJList <- Obj.repr ((new JList.jList ()));
        ignore (self#setLayout ((new GridLayout.gridLayout (17, 1))));
        ignore ((Obj.magic lineJButton)#setFont ((Obj.obj (java_new "Font" (Obj.repr ("Dialog", 0, 10))))));
        ignore ((Obj.magic lineJButton)#setText ((Obj.magic (java_call_static "LinesGraphicItem.getStaticName" (Obj.repr ())))));
        ignore ((Obj.magic lineJButton)#addMouseListener ((object (self)
            inherit MouseAdapter.mouseAdapter () as super
            

            method mouseClicked : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#lineJButtonMouseClicked ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore (self#add ((Obj.magic lineJButton)));
        ignore ((Obj.magic rectJButton)#setFont ((Obj.obj (java_new "Font" (Obj.repr ("Dialog", 0, 10))))));
        ignore ((Obj.magic rectJButton)#setText ("Rect"));
        ignore ((Obj.magic rectJButton)#addMouseListener ((object (self)
            inherit MouseAdapter.mouseAdapter () as super
            

            method mouseClicked : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#rectJButtonMouseClicked ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore (self#add ((Obj.magic rectJButton)));
        ignore ((Obj.magic arcJButton)#setFont ((Obj.obj (java_new "Font" (Obj.repr ("Dialog", 0, 10))))));
        ignore ((Obj.magic arcJButton)#setText ("Arc"));
        ignore ((Obj.magic arcJButton)#addMouseListener ((object (self)
            inherit MouseAdapter.mouseAdapter () as super
            

            method mousePressed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#arcJButtonMousePressed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore (self#add ((Obj.magic arcJButton)));
        ignore ((Obj.magic stringJButton)#setFont ((Obj.obj (java_new "Font" (Obj.repr ("Dialog", 0, 10))))));
        ignore ((Obj.magic stringJButton)#setText ("String"));
        ignore ((Obj.magic stringJButton)#addMouseListener ((object (self)
            inherit MouseAdapter.mouseAdapter () as super
            

            method mousePressed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#stringJButtonMousePressed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore (self#add ((Obj.magic stringJButton)));
        ignore ((Obj.magic charJButton)#setFont ((Obj.obj (java_new "Font" (Obj.repr ("Dialog", 0, 10))))));
        ignore ((Obj.magic charJButton)#setText ("Char"));
        ignore ((Obj.magic charJButton)#addMouseListener ((object (self)
            inherit MouseAdapter.mouseAdapter () as super
            

            method mousePressed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#charJButtonMousePressed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore (self#add ((Obj.magic charJButton)));
        ignore ((Obj.magic roundRectJButton)#setFont ((Obj.obj (java_new "Font" (Obj.repr ("Dialog", 0, 10))))));
        ignore ((Obj.magic roundRectJButton)#setText ("Round Rect"));
        ignore ((Obj.magic roundRectJButton)#addMouseListener ((object (self)
            inherit MouseAdapter.mouseAdapter () as super
            

            method mousePressed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#roundRectJButtonMousePressed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore (self#add ((Obj.magic roundRectJButton)));
        ignore ((Obj.magic imageJButton)#setFont ((Obj.obj (java_new "Font" (Obj.repr ("Dialog", 0, 10))))));
        ignore ((Obj.magic imageJButton)#setText ("Image"));
        ignore ((Obj.magic imageJButton)#addMouseListener ((object (self)
            inherit MouseAdapter.mouseAdapter () as super
            

            method mousePressed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#imageJButtonMousePressed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore (self#add ((Obj.magic imageJButton)));
        ignore ((Obj.magic fillArcJButton)#setFont ((Obj.obj (java_new "Font" (Obj.repr ("Dialog", 0, 10))))));
        ignore ((Obj.magic fillArcJButton)#setText ("Fill Arc"));
        ignore ((Obj.magic fillArcJButton)#addMouseListener ((object (self)
            inherit MouseAdapter.mouseAdapter () as super
            

            method mousePressed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#fillArcJButtonMousePressed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore (self#add ((Obj.magic fillArcJButton)));
        ignore ((Obj.magic fillRectJButton)#setFont ((Obj.obj (java_new "Font" (Obj.repr ("Dialog", 0, 10))))));
        ignore ((Obj.magic fillRectJButton)#setText ("Fill Rect"));
        ignore ((Obj.magic fillRectJButton)#addMouseListener ((object (self)
            inherit MouseAdapter.mouseAdapter () as super
            

            method mousePressed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#fillRectJButtonMousePressed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore (self#add ((Obj.magic fillRectJButton)));
        ignore ((Obj.magic fillRoundRectJButton)#setFont ((Obj.obj (java_new "Font" (Obj.repr ("Dialog", 0, 10))))));
        ignore ((Obj.magic fillRoundRectJButton)#setText ("Fill Rnd Rect"));
        ignore ((Obj.magic fillRoundRectJButton)#addMouseListener ((object (self)
            inherit MouseAdapter.mouseAdapter () as super
            

            method mousePressed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#fillRoundRectJButtonMousePressed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore (self#add ((Obj.magic fillRoundRectJButton)));
        ignore ((Obj.magic dottedLineJButton)#setFont ((Obj.obj (java_new "Font" (Obj.repr ("Dialog", 0, 10))))));
        ignore ((Obj.magic dottedLineJButton)#setText ("Dot Line"));
        ignore ((Obj.magic dottedLineJButton)#addMouseListener ((object (self)
            inherit MouseAdapter.mouseAdapter () as super
            

            method mousePressed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#dottedLineJButtonMousePressed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore (self#add ((Obj.magic dottedLineJButton)));
        ignore ((Obj.magic dottedRectButton)#setFont ((Obj.obj (java_new "Font" (Obj.repr ("Dialog", 0, 10))))));
        ignore ((Obj.magic dottedRectButton)#setText ("Dot Rect"));
        ignore ((Obj.magic dottedRectButton)#addMouseListener ((object (self)
            inherit MouseAdapter.mouseAdapter () as super
            

            method mousePressed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#dottedRectButtonMousePressed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore (self#add ((Obj.magic dottedRectButton)));
        ignore ((Obj.magic dottedArcJButton)#setFont ((Obj.obj (java_new "Font" (Obj.repr ("Dialog", 0, 10))))));
        ignore ((Obj.magic dottedArcJButton)#setText ("Dot Arc"));
        ignore ((Obj.magic dottedArcJButton)#addMouseListener ((object (self)
            inherit MouseAdapter.mouseAdapter () as super
            

            method mousePressed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#dottedArcJButtonMousePressed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore (self#add ((Obj.magic dottedArcJButton)));
        ignore ((Obj.magic dottedFillRectJButton)#setFont ((Obj.obj (java_new "Font" (Obj.repr ("Dialog", 0, 10))))));
        ignore ((Obj.magic dottedFillRectJButton)#setText ("Dot Fill Rect"));
        ignore ((Obj.magic dottedFillRectJButton)#addMouseListener ((object (self)
            inherit MouseAdapter.mouseAdapter () as super
            

            method mousePressed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#dottedFillRectJButtonMousePressed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore (self#add ((Obj.magic dottedFillRectJButton)));
        ignore ((Obj.magic dottedFillArcJButton)#setFont ((Obj.obj (java_new "Font" (Obj.repr ("Dialog", 0, 10))))));
        ignore ((Obj.magic dottedFillArcJButton)#setText ("Dot Fill Arc"));
        ignore ((Obj.magic dottedFillArcJButton)#addMouseListener ((object (self)
            inherit MouseAdapter.mouseAdapter () as super
            

            method mousePressed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#dottedFillArcJButtonMousePressed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore (self#add ((Obj.magic dottedFillArcJButton)));
        ignore ((Obj.magic dottedFillRountRectJButton)#setFont ((Obj.obj (java_new "Font" (Obj.repr ("Dialog", 0, 10))))));
        ignore ((Obj.magic dottedFillRountRectJButton)#setText ("Dot Fill Rnd Rect"));
        ignore ((Obj.magic dottedFillRountRectJButton)#addMouseListener ((object (self)
            inherit MouseAdapter.mouseAdapter () as super
            

            method mousePressed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#dottedFillRountRectJButtonMousePressed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore (self#add ((Obj.magic dottedFillRountRectJButton)));
        ignore ((Obj.magic colorJPanel)#setLayout ((new GridLayout.gridLayout (1, 1))));
        ignore ((Obj.magic colorJPanel)#add ((Obj.magic colorJList)));
        ignore (self#add ((Obj.magic colorJPanel)))
        end [@@warning "-7"]
    

    method dottedFillRountRectJButtonMousePressed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        ignore ((Obj.magic (java_call_static "ToolFactory.getInstance" (Obj.repr ())))#setSelectedTool (((Obj.magic dottedFillRountRectJButton)#getText ())))
        end [@@warning "-7-20"]
    

    method dottedFillArcJButtonMousePressed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        ignore ((Obj.magic (java_call_static "ToolFactory.getInstance" (Obj.repr ())))#setSelectedTool (((Obj.magic dottedFillArcJButton)#getText ())))
        end [@@warning "-7-20"]
    

    method dottedFillRectJButtonMousePressed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        ignore ((Obj.magic (java_call_static "ToolFactory.getInstance" (Obj.repr ())))#setSelectedTool (((Obj.magic dottedFillRectJButton)#getText ())))
        end [@@warning "-7-20"]
    

    method dottedArcJButtonMousePressed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        ignore ((Obj.magic (java_call_static "ToolFactory.getInstance" (Obj.repr ())))#setSelectedTool (((Obj.magic dottedArcJButton)#getText ())))
        end [@@warning "-7-20"]
    

    method dottedRectButtonMousePressed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        ignore ((Obj.magic (java_call_static "ToolFactory.getInstance" (Obj.repr ())))#setSelectedTool (((Obj.magic dottedRectButton)#getText ())))
        end [@@warning "-7-20"]
    

    method dottedLineJButtonMousePressed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        ignore ((Obj.magic (java_call_static "ToolFactory.getInstance" (Obj.repr ())))#setSelectedTool (((Obj.magic dottedLineJButton)#getText ())))
        end [@@warning "-7-20"]
    

    method fillRoundRectJButtonMousePressed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        ignore ((Obj.magic (java_call_static "ToolFactory.getInstance" (Obj.repr ())))#setSelectedTool (((Obj.magic fillRoundRectJButton)#getText ())))
        end [@@warning "-7-20"]
    

    method fillRectJButtonMousePressed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        ignore ((Obj.magic (java_call_static "ToolFactory.getInstance" (Obj.repr ())))#setSelectedTool (((Obj.magic fillRectJButton)#getText ())))
        end [@@warning "-7-20"]
    

    method fillArcJButtonMousePressed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        ignore ((Obj.magic (java_call_static "ToolFactory.getInstance" (Obj.repr ())))#setSelectedTool (((Obj.magic fillArcJButton)#getText ())))
        end [@@warning "-7-20"]
    

    method imageJButtonMousePressed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        ignore ((Obj.magic (java_call_static "ToolFactory.getInstance" (Obj.repr ())))#setSelectedTool (((Obj.magic imageJButton)#getText ())))
        end [@@warning "-7-20"]
    

    method roundRectJButtonMousePressed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        ignore ((Obj.magic (java_call_static "ToolFactory.getInstance" (Obj.repr ())))#setSelectedTool (((Obj.magic roundRectJButton)#getText ())))
        end [@@warning "-7-20"]
    

    method charJButtonMousePressed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        ignore ((Obj.magic (java_call_static "ToolFactory.getInstance" (Obj.repr ())))#setSelectedTool (((Obj.magic charJButton)#getText ())))
        end [@@warning "-7-20"]
    

    method stringJButtonMousePressed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        ignore ((Obj.magic (java_call_static "ToolFactory.getInstance" (Obj.repr ())))#setSelectedTool (((Obj.magic stringJButton)#getText ())))
        end [@@warning "-7-20"]
    

    method arcJButtonMousePressed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        ignore ((Obj.magic (java_call_static "ToolFactory.getInstance" (Obj.repr ())))#setSelectedTool (((Obj.magic arcJButton)#getText ())))
        end [@@warning "-7-20"]
    

    method rectJButtonMouseClicked : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        ignore ((Obj.magic (java_call_static "ToolFactory.getInstance" (Obj.repr ())))#setSelectedTool (((Obj.magic rectJButton)#getText ())))
        end [@@warning "-7-20"]
    

    method lineJButtonMouseClicked : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        ignore ((Obj.magic (java_call_static "ToolFactory.getInstance" (Obj.repr ())))#setSelectedTool (((Obj.magic lineJButton)#getText ())))
        end [@@warning "-7-20"]

    initializer
      begin
        arcJButton <- (Obj.repr (Obj.magic 0));
        charJButton <- (Obj.repr (Obj.magic 0));
        colorJList <- (Obj.repr (Obj.magic 0));
        colorJPanel <- (Obj.repr (Obj.magic 0));
        dottedArcJButton <- (Obj.repr (Obj.magic 0));
        dottedFillArcJButton <- (Obj.repr (Obj.magic 0));
        dottedFillRectJButton <- (Obj.repr (Obj.magic 0));
        dottedFillRountRectJButton <- (Obj.repr (Obj.magic 0));
        dottedLineJButton <- (Obj.repr (Obj.magic 0));
        dottedRectButton <- (Obj.repr (Obj.magic 0));
        fillArcJButton <- (Obj.repr (Obj.magic 0));
        fillRectJButton <- (Obj.repr (Obj.magic 0));
        fillRoundRectJButton <- (Obj.repr (Obj.magic 0));
        imageJButton <- (Obj.repr (Obj.magic 0));
        lineJButton <- (Obj.repr (Obj.magic 0));
        rectJButton <- (Obj.repr (Obj.magic 0));
        roundRectJButton <- (Obj.repr (Obj.magic 0));
        stringJButton <- (Obj.repr (Obj.magic 0));
        ();
        (self#initComponents ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "ToolJPanel" (fun arguments -> Obj.repr (new toolJPanel (Obj.obj arguments)))


