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
(* package org.allbinary.input.automation.osgi *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.swing *)
(* import org.osgi.framework.Bundle *)
(* import org.osgi.framework.BundleContext *)
(* import bundle.input.automation.InputAutomationBundleActivator *)
(* import org.allbinary.gui.dialog.BasicTextJDialog *)

let dESKTOP_SYMBOLIC_NAME : string = "org.knopflerfish.bundle.desktop"
let get_dESKTOP_SYMBOLIC_NAME () = dESKTOP_SYMBOLIC_NAME
let () = java_register_static "DesktopBundle.get_dESKTOP_SYMBOLIC_NAME" (fun _ -> Obj.repr (get_dESKTOP_SYMBOLIC_NAME ()))
class desktopBundle () =
  object
    val mutable bundle : Obj.t = Obj.repr 0
    method bundle : 'r. 'r = Obj.magic bundle
    method set_bundle : 'v. 'v -> unit = fun value' -> bundle <- Obj.repr value'
    
    

    method start () : unit =
        begin
        ignore ((Obj.magic bundle)#start ())
        end

    initializer
      begin
        bundle <- (Obj.repr (Obj.magic 0));
        ();
        let bundleContext : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "InputAutomationBundleActivator.getBundleContext" (Obj.repr ()))))) in ();
        if ((Obj.magic !bundleContext) != (Obj.magic 0)) then begin
            let bundleArray : Obj.t ref = ref ((Obj.repr ((Obj.magic !bundleContext)#getBundles ()))) in ();
            for index = 0 to (Array.length (Obj.magic !bundleArray)) - 1 do
                let bundle_arg : Obj.t ref = ref ((Obj.repr (Obj.magic !bundleArray).(index))) in ();
                let symbolicName : string ref = ref (((Obj.magic !bundle_arg)#getSymbolicName ())) in ();
                if ((String.compare !symbolicName (dESKTOP_SYMBOLIC_NAME)) == 0) then begin
                    bundle <- Obj.repr ((Obj.magic !bundle_arg))
                end
            done
        end else begin
            let textJDialog : Obj.t ref = ref ((Obj.repr (new BasicTextJDialog.basicTextJDialog ("BundlContext is Null")))) in ();
            ignore ((Obj.magic !textJDialog)#setVisible (true))
        end
      end
  end [@@warning "-20"]
let () = java_register_constructor "DesktopBundle" (fun arguments -> Obj.repr (new desktopBundle (Obj.obj arguments)))


