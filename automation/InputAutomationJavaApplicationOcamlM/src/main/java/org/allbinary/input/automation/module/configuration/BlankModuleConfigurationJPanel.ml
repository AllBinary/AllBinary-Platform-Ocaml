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
(* package org.allbinary.input.automation.module.configuration *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class blankModuleConfigurationJPanel () =
  object (self)
    inherit JPanel.jPanel ()
    val mutable jLabel1 : Obj.t = Obj.repr 0
    method jLabel1 : 'r. 'r = Obj.magic jLabel1
    method set_jLabel1 : 'v. 'v -> unit = fun value' -> jLabel1 <- Obj.repr value'
    
    

    method initComponents () : unit =
        begin
        jLabel1 <- Obj.repr ((new JLabel.jLabel ()));
        ignore ((Obj.magic jLabel1)#setText ("No Configuration Available"));
        let layout : Obj.t ref = ref ((Obj.repr (new GroupLayout.groupLayout (self)))) in ();
        ignore (self#setLayout ((Obj.magic !layout)));
        ignore ((Obj.magic !layout)#setHorizontalGroup ((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup ((javax.get_swing ())#groupLayout#alignment#tRAILING, (((((Obj.magic !layout)#createSequentialGroup ())#addContainerGap (231, 32767))#addComponent ((Obj.magic jLabel1)))#addGap (225, 225, 225))))));
        ignore ((Obj.magic !layout)#setVerticalGroup ((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup ((((((Obj.magic !layout)#createSequentialGroup ())#addContainerGap ())#addComponent ((Obj.magic jLabel1)))#addContainerGap (362, 32767))))))
        end [@@warning "-7"]

    initializer
      begin
        jLabel1 <- (Obj.repr (Obj.magic 0));
        ();
        (self#initComponents ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "BlankModuleConfigurationJPanel" (fun arguments -> Obj.repr (new blankModuleConfigurationJPanel (Obj.obj arguments)))


