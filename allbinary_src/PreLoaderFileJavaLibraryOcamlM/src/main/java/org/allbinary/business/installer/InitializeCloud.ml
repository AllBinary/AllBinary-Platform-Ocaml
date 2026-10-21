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
(* package org.allbinary.business.installer *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.globals.PATH_GLOBALS *)
(* import org.allbinary.globals.URLGLOBALS *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.io.AbIOSystem *)
(* import org.allbinary.logic.io.file.AbFile *)
(* import org.allbinary.logic.io.file.FileUtil *)
(* import org.allbinary.logic.io.file.directory.Directory *)
(* import org.allbinary.logic.io.path.AbPath *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.util.BasicArrayList *)

let cLOUD : string = "cloud/"
let get_cLOUD () = cLOUD
let () = java_register_static "InitializeCloud.get_cLOUD" (fun _ -> Obj.repr (get_cLOUD ()))
let cLOUD_UPDATE : string = "cloudupdate/"
let get_cLOUD_UPDATE () = cLOUD_UPDATE
let () = java_register_static "InitializeCloud.get_cLOUD_UPDATE" (fun _ -> Obj.repr (get_cLOUD_UPDATE ()))
class initializeCloud () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    

    method initialize ((cloud : string), (overwriteNewer : bool), (overwriteAll : bool), (current : int), (total : int)) : bool =
        begin
        (try
            if ((AbIOSystem.getInstance ())#isType ("com.vobject.appengine.java.io")) then begin
                let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
                ignore (!stringBuffer#append ((URLGLOBALS.getWebappPath ())));
                ignore (!stringBuffer#append (cloud));
                ignore (!stringBuffer#append ((PATH_GLOBALS.getInstance ())#dATA_PATH));
                let path : AbPath.abPath ref = ref (((new AbPath.abPath ((java_string_of (Obj.repr !stringBuffer)), (StringUtil.getInstance ())#eMPTY_STRING)) :> AbPath.abPath)) in ();
                ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
                ignore (!stringBuffer#append ((URLGLOBALS.getWebappPath ())));
                let realPath : AbPath.abPath ref = ref (((new AbPath.abPath ((java_string_of (Obj.repr !stringBuffer)), (StringUtil.getInstance ())#eMPTY_STRING)) :> AbPath.abPath)) in ();
                let file : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "AbFile.createAbFileFromAbPath" (Obj.repr (!path)))))) in ();
                let fileBasicArrayList : BasicArrayList.basicArrayList ref = ref ((((Directory.getInstance ())#search ((Obj.magic !file), true)) :> BasicArrayList.basicArrayList)) in ();
                let size : int ref = ref ((!fileBasicArrayList#size ())) in ();
                ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
                ignore (!stringBuffer#append ("Searched: "));
                ignore (!stringBuffer#append ((!path#toFileSystemString ())));
                ignore (!stringBuffer#append (" BasicArrayList: "));
                ignore (!stringBuffer#appendint (!size));
                let portion : int ref = ref (((!size / total) + 1)) in ();
                let start : int ref = ref ((!portion * current)) in ();
                let end_ : int ref = ref ((!start + !portion)) in ();
                if (!end_ > !size) then begin
                    end_ := !size
                end;
                ignore (!stringBuffer#append (" Section: "));
                ignore (!stringBuffer#appendint (!start));
                ignore (!stringBuffer#append (" - "));
                ignore (!stringBuffer#appendint (!end_));
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "initialize()"));
                let nextFile : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
                for index = !start to !end_ - 1 do
                    nextFile := Obj.repr ((Obj.magic (!fileBasicArrayList#get (index))));
                    if ((Obj.magic !nextFile)#isDirectory ()) then begin
                        ()
                    end else begin
                        ignore ((FileUtil.getInstance ())#copyToCloud ((Obj.magic !nextFile), !path, !realPath, cloud, overwriteNewer, overwriteAll))
                    end
                done;
                ignore ((Obj.magic logUtil)#putF ("Copied Files To Cloud", self, "initialize()"))
            end;
            true
        with e -> begin
            ignore ((Obj.magic logUtil)#put ("Unable to copy installer files into cloud", self, "initialize()", e));
            false
        end)
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "InitializeCloud" (fun arguments -> Obj.repr (new initializeCloud (Obj.obj arguments)))


