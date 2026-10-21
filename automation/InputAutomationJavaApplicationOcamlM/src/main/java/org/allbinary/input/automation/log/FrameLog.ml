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
(* package org.allbinary.input.automation.log *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.File *)
(* import java.io.FileOutputStream *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.input.automation.ImageOutputData *)
(* import org.allbinary.logic.java.number.LongUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonSeps *)

class frameLog ((frame_arg : int)) =
  object (self)
    val mutable frame : int = (Obj.magic 0)
    method frame = frame
    method set_frame value' = frame <- value'
    val mutable infoStringBuffer : StringMaker.stringMaker = (Obj.magic 0)
    method infoStringBuffer = infoStringBuffer
    method set_infoStringBuffer value' = infoStringBuffer <- value'
    val mutable actionsStringBuffer : StringMaker.stringMaker = (Obj.magic 0)
    method actionsStringBuffer = actionsStringBuffer
    method set_actionsStringBuffer value' = actionsStringBuffer <- value'
    
    

    method addInfo ((infoString : string)) : unit =
        begin
        ignore (infoStringBuffer#append (infoString))
        end
    

    method addActions : 'any1. 'any1 -> unit = fun (vectorOfStrings) ->
        let vectorOfStrings = Obj.repr vectorOfStrings in
        begin
        let size : int ref = ref (((Obj.magic vectorOfStrings)#size ())) in ();
        for index = 0 to !size - 1 do
            (self#addAction ((Obj.magic ((Obj.magic vectorOfStrings)#get (index)))))
        done
        end [@@warning "-20"]
    

    method addAction ((action : string)) : unit =
        begin
        ignore (actionsStringBuffer#append (action));
        ignore (actionsStringBuffer#append ((CommonSeps.getInstance ())#nEW_LINE))
        end
    

    method write () : unit =
        begin
        let filePathStringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!filePathStringBuffer#append ((ImageOutputData.get_sAVE_PATH ())));
        ignore (!filePathStringBuffer#append ((LongUtil.fillIn ((string_of_int frame)))));
        ignore (!filePathStringBuffer#append (".txt"));
        let filePath : string ref = ref ((java_string_of (Obj.repr !filePathStringBuffer))) in ();
        let fileOutputStream : Obj.t ref = ref ((Obj.repr (new FileOutputStream.fileOutputStream ((new File.file (!filePath)))))) in ();
        ignore ((Obj.magic !fileOutputStream)#write (!frameBytes));
        ignore ((Obj.magic !fileOutputStream)#write ((java_string_get_bytes (java_string_of (Obj.repr (self#getFrame ()))))));
        ignore ((Obj.magic !fileOutputStream)#write ('\n'));
        ignore ((Obj.magic !fileOutputStream)#write (!info));
        ignore ((Obj.magic !fileOutputStream)#write ((java_string_get_bytes (java_string_of (Obj.repr infoStringBuffer)))));
        ignore ((Obj.magic !fileOutputStream)#write ('\n'));
        ignore ((Obj.magic !fileOutputStream)#write (!actions));
        ignore ((Obj.magic !fileOutputStream)#write ((java_string_get_bytes (java_string_of (Obj.repr actionsStringBuffer)))));
        ignore ((Obj.magic !fileOutputStream)#close ())
        end
    

    method getFrame () : int =
        begin
        frame
        end

    initializer
      begin
        ();
        infoStringBuffer <- ((new StringMaker.stringMaker ()) :> StringMaker.stringMaker);
        actionsStringBuffer <- ((new StringMaker.stringMaker ()) :> StringMaker.stringMaker);
        ();
        frame <- frame_arg
      end
  end
let () = java_register_constructor "FrameLog" (fun arguments -> Obj.repr (new frameLog (Obj.obj arguments)))

let frameBytes : int array ref = ref (((Obj.obj (java_new "String" (Obj.repr ("Frame: "))))#getBytes ()))
let get_frameBytes () = !frameBytes
let set_frameBytes value' = frameBytes := value'
let () = java_register_static "FrameLog.get_frameBytes" (fun _ -> Obj.repr (get_frameBytes ()))

let info : int array ref = ref (((Obj.obj (java_new "String" (Obj.repr ("Info: \n"))))#getBytes ()))
let get_info () = !info
let set_info value' = info := value'
let () = java_register_static "FrameLog.get_info" (fun _ -> Obj.repr (get_info ()))

let actions : int array ref = ref (((Obj.obj (java_new "String" (Obj.repr ("Actions: \n"))))#getBytes ()))
let get_actions () = !actions
let set_actions value' = actions := value'
let () = java_register_static "FrameLog.get_actions" (fun _ -> Obj.repr (get_actions ()))


