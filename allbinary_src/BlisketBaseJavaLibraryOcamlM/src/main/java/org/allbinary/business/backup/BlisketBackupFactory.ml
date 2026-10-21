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
(* package org.allbinary.business.backup *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.business.context.modules.storefront.StoreFrontInterface *)
(* import org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity *)
(* import org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityFactory *)
(* import org.allbinary.globals.PATH_GLOBALS *)
(* import org.allbinary.globals.URLGLOBALS *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.logic.io.file.AbFile *)
(* import org.allbinary.logic.io.file.directory.Directory *)
(* import org.allbinary.logic.io.file.zip.ZipFileUtil *)
(* import org.allbinary.logic.io.path.AbPath *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class blisketBackupFactory () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable stringUtil : StringUtil.stringUtil = (Obj.magic 0)
    method stringUtil = stringUtil
    method set_stringUtil value' = stringUtil <- value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable directory : Directory.directory = (Obj.magic 0)
    method directory = directory
    method set_directory value' = directory <- value'
    

    method getFileBasicArrayList ((pathString : string)) : BasicArrayList.basicArrayList =
        begin
        let path : AbPath.abPath ref = ref (((new AbPath.abPath (pathString, stringUtil#eMPTY_STRING)) :> AbPath.abPath)) in ();
        let file : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "AbFile.createAbFileFromAbPath" (Obj.repr (!path)))))) in ();
        ((directory#search ((Obj.magic !file), true)) :> BasicArrayList.basicArrayList)
        end
    

    method backup () : unit =
        begin
        (try
            ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, "backup()"));
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (!stringBuffer#append ((URLGLOBALS.getWebappPath ())));
            ignore (!stringBuffer#append ((PATH_GLOBALS.getInstance ())#bACKUP_PATH));
            let backupPath : string ref = ref ((java_string_of (Obj.repr !stringBuffer))) in ();
            let path : AbPath.abPath ref = ref (((new AbPath.abPath (!backupPath, stringUtil#eMPTY_STRING)) :> AbPath.abPath)) in ();
            let fileBasicArrayList : BasicArrayList.basicArrayList ref = ref (((self#getFileBasicArrayList (!backupPath)) :> BasicArrayList.basicArrayList)) in ();
            (self#backup (!fileBasicArrayList, (java_string_of (Obj.repr ((!path#toFileSystemString ()))) ^ "backup.zip")))
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "backup()", e))
        end)
        end
    

    method backupViews () : unit =
        begin
        (try
            ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, "backupViews()"));
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (!stringBuffer#append ((URLGLOBALS.getWebappPath ())));
            ignore (!stringBuffer#append ((PATH_GLOBALS.getInstance ())#bACKUP_PATH));
            let backupPath : string ref = ref ((java_string_of (Obj.repr !stringBuffer))) in ();
            let path : AbPath.abPath ref = ref (((new AbPath.abPath (!backupPath, stringUtil#eMPTY_STRING)) :> AbPath.abPath)) in ();
            let fileBasicArrayList : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
            let storeFrontsEntity : StoreFrontsEntity.storeFrontsEntity ref = ref ((((StoreFrontsEntityFactory.getInstance ())#getStoreFrontsEntityInstance ()) :> StoreFrontsEntity.storeFrontsEntity)) in ();
            let storeFrontNamesBasicArrayList : BasicArrayList.basicArrayList ref = ref (((!storeFrontsEntity#getStoreFrontNames ()) :> BasicArrayList.basicArrayList)) in ();
            let size : int ref = ref ((!storeFrontNamesBasicArrayList#size ())) in ();
            let nextStore : string ref = ref ("") in ();
            let viewsPath : string ref = ref ("") in ();
            for index = 0 to !size - 1 do
                nextStore := (Obj.magic (!storeFrontNamesBasicArrayList#get (index)));
                ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
                ignore (!stringBuffer#append ((URLGLOBALS.getWebappPath ())));
                ignore (!stringBuffer#append ((PATH_GLOBALS.getInstance ())#vIEWS_PATH));
                ignore (!stringBuffer#append (!nextStore));
                viewsPath := (java_string_of (Obj.repr !stringBuffer));
                ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
                ignore (!stringBuffer#append ("Backup Store Views: "));
                ignore (!stringBuffer#append (!nextStore));
                ignore (!stringBuffer#append (" from: "));
                ignore (!stringBuffer#append (!viewsPath));
                ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr !stringBuffer)), self, "backupViews()"))));
                ignore (!fileBasicArrayList#addAllList ((self#getFileBasicArrayList (!viewsPath))))
            done;
            (self#backup (!fileBasicArrayList, (java_string_of (Obj.repr ((!path#toFileSystemString ()))) ^ "backupViews.zip")))
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "backupViews()", e))
        end)
        end
    

    method backupResources () : unit =
        begin
        (try
            ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, "backupResources()"));
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (!stringBuffer#append ((URLGLOBALS.getWebappPath ())));
            ignore (!stringBuffer#append ((PATH_GLOBALS.getInstance ())#bACKUP_PATH));
            let backupPath : string ref = ref ((java_string_of (Obj.repr !stringBuffer))) in ();
            let path : AbPath.abPath ref = ref (((new AbPath.abPath (!backupPath, stringUtil#eMPTY_STRING)) :> AbPath.abPath)) in ();
            let fileBasicArrayList : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
            let storeFrontsEntity : StoreFrontsEntity.storeFrontsEntity ref = ref ((((StoreFrontsEntityFactory.getInstance ())#getStoreFrontsEntityInstance ()) :> StoreFrontsEntity.storeFrontsEntity)) in ();
            let storeFrontNamesBasicArrayList : BasicArrayList.basicArrayList ref = ref (((!storeFrontsEntity#getStoreFrontNames ()) :> BasicArrayList.basicArrayList)) in ();
            let size : int ref = ref ((!storeFrontNamesBasicArrayList#size ())) in ();
            let nextStore : string ref = ref ("") in ();
            let storeFrontInterface : StoreFrontInterface.storeFrontInterface ref = ref (((Obj.magic 0) :> StoreFrontInterface.storeFrontInterface)) in ();
            let resourcesPath : string ref = ref ("") in ();
            for index = 0 to !size - 1 do
                nextStore := (Obj.magic (!storeFrontNamesBasicArrayList#get (index)));
                storeFrontInterface := (!storeFrontsEntity#getStoreFrontInterface (!nextStore));
                ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
                ignore (!stringBuffer#append ((URLGLOBALS.getWebappPath ())));
                ignore (!stringBuffer#append ((!storeFrontInterface#getCurrentHostNamePath ())));
                ignore (!stringBuffer#append ((!storeFrontInterface#getCategoryPath ())));
                resourcesPath := (java_string_of (Obj.repr !stringBuffer));
                ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
                ignore (!stringBuffer#append ("Backup Store Resrouces: "));
                ignore (!stringBuffer#append (!nextStore));
                ignore (!stringBuffer#append (" from: "));
                ignore (!stringBuffer#append (!resourcesPath));
                ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr !stringBuffer)), self, "backupResources()"))));
                ignore (!fileBasicArrayList#addAllList ((self#getFileBasicArrayList (!resourcesPath))))
            done;
            (self#backup (!fileBasicArrayList, (java_string_of (Obj.repr ((!path#toFileSystemString ()))) ^ "backupResources.zip")))
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "backupResources()", e))
        end)
        end
    

    method backupJsps () : unit =
        begin
        (try
            ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, "backupJsps()"));
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (!stringBuffer#append ((URLGLOBALS.getWebappPath ())));
            ignore (!stringBuffer#append ((PATH_GLOBALS.getInstance ())#bACKUP_PATH));
            let backupPath : string ref = ref ((java_string_of (Obj.repr !stringBuffer))) in ();
            let path : AbPath.abPath ref = ref (((new AbPath.abPath (!backupPath, stringUtil#eMPTY_STRING)) :> AbPath.abPath)) in ();
            let fileBasicArrayList : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
            let storeFrontsEntity : StoreFrontsEntity.storeFrontsEntity ref = ref ((((StoreFrontsEntityFactory.getInstance ())#getStoreFrontsEntityInstance ()) :> StoreFrontsEntity.storeFrontsEntity)) in ();
            let storeFrontNamesBasicArrayList : BasicArrayList.basicArrayList ref = ref (((!storeFrontsEntity#getStoreFrontNames ()) :> BasicArrayList.basicArrayList)) in ();
            let size : int ref = ref ((!storeFrontNamesBasicArrayList#size ())) in ();
            let nextStore : string ref = ref ("") in ();
            for index = 0 to !size - 1 do
                nextStore := (Obj.magic (!storeFrontNamesBasicArrayList#get (index)));
                ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr (("Backup Store Jsps: " ^ !nextStore), self, "backupJsps()"))));
                ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
                ignore (!stringBuffer#append ((URLGLOBALS.getWebappPath ())));
                ignore (!stringBuffer#append (!nextStore));
                ignore (!fileBasicArrayList#addAllList ((self#getFileBasicArrayList ((java_string_of (Obj.repr !stringBuffer))))))
            done;
            (self#backup (!fileBasicArrayList, (java_string_of (Obj.repr ((!path#toFileSystemString ()))) ^ "backupJsps.zip")))
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "backupJsps()", e))
        end)
        end
    

    (* Java overload backup(BasicArrayList, String) is not converted: OCaml has one method per name *)

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        stringUtil <- ((StringUtil.getInstance ()) :> StringUtil.stringUtil);
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        directory <- ((Directory.getInstance ()) :> Directory.directory);
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "BlisketBackupFactory" (fun arguments -> Obj.repr (new blisketBackupFactory (Obj.obj arguments)))

let instance = (new blisketBackupFactory ())
let get_instance () = instance
let () = java_register_static "BlisketBackupFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "BlisketBackupFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


