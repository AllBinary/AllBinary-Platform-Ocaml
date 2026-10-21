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
(* package org.allbinary.logic.communication.log *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.awt *)
(* import javax.swing *)
(* import org.allbinary.string.CommonStrings *)

class guiLog () =
  object (self)
    val mutable logFormatUtil : Obj.t = Obj.repr 0
    method logFormatUtil : 'r. 'r = Obj.magic logFormatUtil
    method set_logFormatUtil : 'v. 'v -> unit = fun value' -> logFormatUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    
    

    method showDialog ((msg : string)) : unit =
        begin
        let error : Obj.t ref = ref ((Obj.repr (new JDialog.jDialog ()))) in ();
        let size : int ref = ref (((String.length msg) * 9)) in ();
        let x : int ref = ref (!size) in ();
        if (!x > 550) then begin
            x := 550
        end;
        ignore (((Obj.magic !error)#getContentPane ())#setLayout ((new GridLayout.gridLayout (1, 1))));
        if (!size > 255) then begin
            let y : int ref = ref (550) in ();
            ignore ((Obj.magic !error)#setSize (!x, !y));
            ignore (((Obj.magic !error)#getContentPane ())#add ((new JScrollPane.jScrollPane ((new JTextArea.jTextArea (msg))))))
        end else if (!size > 0) then begin
            let y : int ref = ref (50) in ();
            ignore ((Obj.magic !error)#setSize (!x, !y));
            ignore (((Obj.magic !error)#getContentPane ())#add ((new JScrollPane.jScrollPane ((new JLabel.jLabel (msg))))))
        end;
        ignore ((Obj.magic !error)#show ())
        end
    

    method put : 'any2. string * 'any2 * string -> string = fun ((specialMessage : string), anyType, (functionName : string)) ->
        let anyType = Obj.repr anyType in
        begin
        (self#put (specialMessage, anyType, functionName, (Obj.magic 0)))
        end
    

    (* Java overload put(String, Any, String, Exception) is not converted: OCaml has one method per name *)
    

    (* Java overload put(String, String, String) is not converted: OCaml has one method per name *)
    

    (* Java overload put(String, String, String, Exception) is not converted: OCaml has one method per name *)

    initializer
      begin
        logFormatUtil <- (Obj.repr (Obj.magic (java_call_static "LogFormatUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "GuiLog" (fun arguments -> Obj.repr (new guiLog (Obj.obj arguments)))

let instance = (new guiLog ())
let get_instance () = instance
let () = java_register_static "GuiLog.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "GuiLog.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


