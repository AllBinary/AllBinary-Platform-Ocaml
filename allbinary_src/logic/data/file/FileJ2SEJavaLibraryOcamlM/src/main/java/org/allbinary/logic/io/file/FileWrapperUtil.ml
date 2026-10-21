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
(* package org.allbinary.logic.io.file *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.File *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)

class fileWrapperUtil () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "FileWrapperUtil" (fun arguments -> Obj.repr (new fileWrapperUtil (Obj.obj arguments)))

let wrapFiles : 'return. Obj.t array -> 'return = fun ((files : Obj.t array)) ->
        begin
        (try
            let abFileArray : Obj.t ref = ref ((Obj.repr (Array.make ((Array.length files)) (Obj.magic 0)))) in ();
            for index = ((Array.length files) - 1) downto 0 do
                (Obj.magic !abFileArray).(index) <- (Obj.obj (java_new "AbFile" (Obj.repr ((Obj.magic files.(index))))))
            done;
            (Obj.magic ((Obj.magic !abFileArray)))
        with e -> begin
            ignore (Obj.magic (java_call_static "PreLogUtil.putSE" (Obj.repr ("Exception Wrapping Files", "FileWrapperUtil", "wrapFiles", e))));
            (Obj.magic ((Array.make (0) (Obj.magic 0))))
        end)
        end

and wrapFile : 'any1 'return. 'any1 -> 'return = fun (file) ->
        let file = Obj.repr file in
        begin
        (try
            (Obj.magic ((Obj.obj (java_new "AbFile" (Obj.repr ((Obj.magic file)))))))
        with e -> begin
            ignore (Obj.magic (java_call_static "PreLogUtil.putSE" (Obj.repr ("Exception Wrapping File", "FileWrapperUtil", "wrapFile", e))));
            (Obj.magic ((Obj.magic (java_call_static "AbFile.get_nULL_FILE" (Obj.repr ())))))
        end)
        end [@@warning "-20"]
let () = java_register_static "FileWrapperUtil.wrapFiles" (fun arguments -> Obj.repr (wrapFiles (Obj.obj arguments)))
let () = java_register_static "FileWrapperUtil.wrapFile" (fun arguments -> Obj.repr (wrapFile (Obj.obj arguments)))


