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
(* package org.allbinary.data.tree.dom *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.data.tables.TableMappingInterface *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.io.file.AbFile *)
(* import org.allbinary.logic.io.file.FileData *)
(* import org.allbinary.logic.io.path.AbPathData *)
(* import org.allbinary.logic.io.path.PathUtil *)

class fileTableMapping (file_arg) =
  object
    val mutable file : Obj.t = Obj.repr 0
    method file : 'r. 'r = Obj.magic file
    method set_file : 'v. 'v -> unit = fun value' -> file <- Obj.repr value'
    
    

    method getKey () : Obj.t =
        begin
        (Obj.repr ((Obj.magic ((Obj.magic file)#getPath ()))))
        end
    

    method toVector () : BasicArrayList.basicArrayList =
        begin
        let filePropertyVector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        ignore (!filePropertyVector#add (((Obj.magic file)#getAbsolutePath ())));
        ignore (!filePropertyVector#add (((Obj.magic file)#getCanonicalPath ())));
        ignore (!filePropertyVector#add (((Obj.magic file)#getName ())));
        ignore (!filePropertyVector#add (((Obj.magic file)#getParent ())));
        ignore (!filePropertyVector#add (((Obj.magic file)#getPath ())));
        (!filePropertyVector :> BasicArrayList.basicArrayList)
        end
    

    method toHashMap () : java_hash_map =
        begin
        let filePropertyHashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        let pathData : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ()))))) in ();
        let pathUtil : PathUtil.pathUtil ref = ref (((PathUtil.getInstance ()) :> PathUtil.pathUtil)) in ();
        let rootFileName : string ref = ref (((Obj.magic !pathData)#getNameFromPath ((!pathUtil#getWithoutExtension (((Obj.magic file)#getPath ())))))) in ();
        let fileData : FileData.fileData ref = ref (((FileData.getInstance ()) :> FileData.fileData)) in ();
        ignore (!filePropertyHashMap#put (!fileData#rOOT_NAME, !rootFileName));
        ignore (!filePropertyHashMap#put (!fileData#iSFILE, (java_string_of (Obj.repr (string_of_bool (((Obj.magic file)#isFile ())))))));
        ignore (!filePropertyHashMap#put (!fileData#iSDIRECTORY, (java_string_of (Obj.repr (string_of_bool (((Obj.magic file)#isDirectory ())))))));
        ignore (!filePropertyHashMap#put (!fileData#iSHIDDEN, (java_string_of (Obj.repr (string_of_bool (((Obj.magic file)#isHidden ())))))));
        ignore (!filePropertyHashMap#put (!fileData#iSABSOLUTE, (java_string_of (Obj.repr (string_of_bool (((Obj.magic file)#isAbsolute ())))))));
        ignore (!filePropertyHashMap#put (!fileData#aBSOLUTE_PATH, ((Obj.magic file)#getAbsolutePath ())));
        ignore (!filePropertyHashMap#put (!fileData#cANONICAL_PATH, ((Obj.magic file)#getCanonicalPath ())));
        ignore (!filePropertyHashMap#put (!fileData#nAME, ((Obj.magic file)#getName ())));
        ignore (!filePropertyHashMap#put (!fileData#pARENT, ((Obj.magic file)#getParent ())));
        ignore (!filePropertyHashMap#put (!fileData#pATH, ((Obj.magic file)#getPath ())));
        (!filePropertyHashMap :> java_hash_map)
        end

    initializer
      begin
        ();
        ();
        file <- Obj.repr (file_arg)
      end
  end [@@warning "-20"]
let () = java_register_constructor "FileTableMapping" (fun arguments -> Obj.repr (new fileTableMapping (Obj.obj arguments)))


