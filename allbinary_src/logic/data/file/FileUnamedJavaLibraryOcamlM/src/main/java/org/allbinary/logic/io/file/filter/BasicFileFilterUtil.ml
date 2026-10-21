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
(* package org.allbinary.logic.io.file.filter *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.FileFilter *)
(* import org.allbinary.logic.io.file.visitor.IncludeFileExtensionsBooleanFileVisitor *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)


let getInstance : 'return. string -> 'return = fun ((extension : string)) ->
        begin
        let vector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        ignore (!vector#add (extension));
        let includeFileExtensionsBooleanFileVisitor : IncludeFileExtensionsBooleanFileVisitor.includeFileExtensionsBooleanFileVisitor ref = ref (((new IncludeFileExtensionsBooleanFileVisitor.includeFileExtensionsBooleanFileVisitor (!vector)) :> IncludeFileExtensionsBooleanFileVisitor.includeFileExtensionsBooleanFileVisitor)) in ();
        (Obj.magic ((Obj.magic (new VisitorFileFilter.visitorFileFilter (!includeFileExtensionsBooleanFileVisitor)))))
        end

let () = java_register_static "BasicFileFilterUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class basicFileFilterUtil () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "BasicFileFilterUtil" (fun arguments -> Obj.repr (new basicFileFilterUtil (Obj.obj arguments)))


