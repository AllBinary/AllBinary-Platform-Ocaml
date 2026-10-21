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
(* package org.allbinary.logic.io.file.directory *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.java.runtime.process.git.GitProcessHelper *)
(* import org.allbinary.logic.io.file.AbFile *)
(* import org.allbinary.logic.io.file.CommonDataFileStrings *)
(* import org.allbinary.logic.io.file.visitor.IncludeFileExtensionsBooleanFileVisitor *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class directoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor ((filterStringBasicArrayList : BasicArrayList.basicArrayList)) =
  object
    inherit IncludeFileExtensionsBooleanFileVisitor.includeFileExtensionsBooleanFileVisitor (filterStringBasicArrayList) as super
    val mutable trackedStrings : TrackedStrings.trackedStrings = (Obj.magic 0)
    method trackedStrings = trackedStrings
    method set_trackedStrings value' = trackedStrings <- value'
    val mutable gitProcessHelper : GitProcessHelper.gitProcessHelper = (Obj.magic 0)
    method gitProcessHelper = gitProcessHelper
    method set_gitProcessHelper value' = gitProcessHelper <- value'
    val mutable includesString : string = ""
    method includesString = includesString
    method set_includesString value' = includesString <- value'
    
    
    

    method visit : 'any1. 'any1 -> bool = fun (file) ->
        let file = Obj.repr file in
        try
        begin
        if ((Obj.magic file)#isDirectory ()) then begin
            raise (Java_return (Obj.repr (true)))
        end;
        if ((includesString = (Obj.magic 0)) || ((((Obj.magic file)#getAbsolutePath ())#indexOf (includesString)) >= 0)) then begin
            raise (Java_return (Obj.repr ((super#visit ((Obj.magic file))))))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    (* Java overload visit(AbFile, String) is not converted: OCaml has one method per name *)

    initializer
      begin
        trackedStrings <- ((TrackedStrings.getInstance ()) :> TrackedStrings.trackedStrings);
        gitProcessHelper <- ((GitProcessHelper.getInstance ()) :> GitProcessHelper.gitProcessHelper);
        ();
        ();
        (* super(...) is the inherit clause *) ();
        includesString <- (Obj.magic 0)
      end
  end
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor" (fun arguments -> Obj.repr (new directoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor (Obj.obj arguments)))

let main ((_args : string array)) : unit =
        begin
        let commonFileStrings : CommonDataFileStrings.commonDataFileStrings ref = ref (((CommonDataFileStrings.getInstance ()) :> CommonDataFileStrings.commonDataFileStrings)) in ();
        let list : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        ignore (!list#add (!commonFileStrings#jAVA));
        let filePath : string ref = ref ("G:\\mnt\\bc\\mydev\\games\\ZeptoRacer\\platform\\j2se\\ZeptoRacerStaticPathsJ2SEM\\target\\dependency\\org\\allbinary\\logic\\system\\security\\licensing\\ZeptoRacerPCClientInformation.java") in ();
        let result : bool ref = ref (((new directoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor (!list))#visit ((Obj.magic (java_call_static "AbFile.createAbFileFromRawPath" (Obj.repr (!filePath))))))) in ();
        (print_endline (java_string_of (Obj.repr (((!filePath ^ " is Tracked: ") ^ java_string_of (Obj.repr (!result)))))))
        end
let () = java_register_static "DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor.main" (fun arguments -> Obj.repr (main (Obj.obj arguments)))


