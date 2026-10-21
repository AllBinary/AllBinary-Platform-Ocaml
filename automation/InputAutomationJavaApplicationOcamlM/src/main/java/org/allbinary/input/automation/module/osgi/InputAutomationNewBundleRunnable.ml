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
(* package org.allbinary.input.automation.module.osgi *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.File *)
(* import java.io.FileFilter *)
(* import java.io.FileInputStream *)
(* import java.net.URL *)
(* import java.util.HashMap *)
(* import java.util.Set *)
(* import java.util.jar.JarInputStream *)
(* import java.util.jar.Manifest *)
(* import org.osgi.framework.Bundle *)
(* import org.osgi.framework.BundleContext *)
(* import org.osgi.framework.Constants *)
(* import bundle.input.automation.InputAutomationBundleActivator *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.io.file.FileWrapperUtil *)
(* import org.allbinary.logic.io.file.directory.SubDirectory *)
(* import org.allbinary.logic.io.file.filter.BasicFileFilterUtil *)
(* import org.allbinary.string.CommonLabels *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.thread.RunnableInterface *)
(* import org.allbinary.time.TimeDelayHelper *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

let fILE : string = "file:"
let get_fILE () = fILE
let () = java_register_static "InputAutomationNewBundleRunnable.get_fILE" (fun _ -> Obj.repr (get_fILE ()))
let jAR_DIR_PROP : string = "org.knopflerfish.gosg.jars"
let get_jAR_DIR_PROP () = jAR_DIR_PROP
let () = java_register_static "InputAutomationNewBundleRunnable.get_jAR_DIR_PROP" (fun _ -> Obj.repr (get_jAR_DIR_PROP ()))
let iNPUT_AUTMATION_MODULE_BUNDLE_JAR_PATH : string = "ia/auto"
let get_iNPUT_AUTMATION_MODULE_BUNDLE_JAR_PATH () = iNPUT_AUTMATION_MODULE_BUNDLE_JAR_PATH
let () = java_register_static "InputAutomationNewBundleRunnable.get_iNPUT_AUTMATION_MODULE_BUNDLE_JAR_PATH" (fun _ -> Obj.repr (get_iNPUT_AUTMATION_MODULE_BUNDLE_JAR_PATH ()))
let mODULES_START_LEVEL : int = 8
let get_mODULES_START_LEVEL () = mODULES_START_LEVEL
let () = java_register_static "InputAutomationNewBundleRunnable.get_mODULES_START_LEVEL" (fun _ -> Obj.repr (get_mODULES_START_LEVEL ()))
class inputAutomationNewBundleRunnable (inputAutomationBundleActivator_arg) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable inputAutomationBundleActivator : Obj.t = Obj.repr 0
    method inputAutomationBundleActivator : 'r. 'r = Obj.magic inputAutomationBundleActivator
    method set_inputAutomationBundleActivator : 'v. 'v -> unit = fun value' -> inputAutomationBundleActivator <- Obj.repr value'
    val mutable running : bool = false
    method running = running
    method set_running value' = running <- value'
    val mutable fileBasicArrayList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method fileBasicArrayList = fileBasicArrayList
    method set_fileBasicArrayList value' = fileBasicArrayList <- value'
    
    

    method setThread ((_thread : java_thread)) : unit =
        begin
        ()
        end
    

    method isRunning () : bool =
        begin
        running
        end
    

    method setRunning ((running_arg : bool)) : unit =
        begin
        running <- running_arg
        end
    

    method updateModules () : unit =
        begin
        ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, "updateModules"));
        let list : BasicArrayList.basicArrayList ref = ref (((self#findNewModules ()) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((!list#size ())) in ();
        let bundle : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        for index = 0 to !size - 1 do
            bundle := Obj.repr ((self#install ((Obj.magic (!list#get (index))))));
            if ((Obj.magic !bundle) != (Obj.magic 0)) then begin
                ignore ((Obj.magic !bundle)#start (mODULES_START_LEVEL))
            end
        done
        end
    

    method getAllJarSymbolicNameHashMap () : java_hash_map =
        begin
        ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, "getAllJarSymbolicNameHashMap"));
        let hashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        let jarFileBasicArrayList : BasicArrayList.basicArrayList ref = ref (((self#getJarModuleFileBasicArrayList ()) :> BasicArrayList.basicArrayList)) in ();
        ignore ((Obj.magic logUtil)#putF (("Jar Module Files: " ^ java_string_of (Obj.repr (!jarFileBasicArrayList))), self, "getAllJarSymbolicNameHashMap"));
        let size : int ref = ref ((!jarFileBasicArrayList#size ())) in ();
        let file : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        for index = 0 to !size - 1 do
            file := Obj.repr ((Obj.magic (!jarFileBasicArrayList#get (index))));
            if (not ((Obj.magic !file)#isDirectory ())) then begin
                let fileInputStream : Obj.t ref = ref ((Obj.repr (new FileInputStream.fileInputStream ((Obj.magic !file))))) in ();
                let jarInputStream : Obj.t ref = ref ((Obj.repr (new JarInputStream.jarInputStream ((Obj.magic !fileInputStream))))) in ();
                let manifest : Obj.t ref = ref ((Obj.repr ((Obj.magic !jarInputStream)#getManifest ()))) in ();
                if ((Obj.magic !manifest) == (Obj.magic 0)) then begin
                    ()
                end else begin
                    let symbolicName : string ref = ref ((((Obj.magic !manifest)#getMainAttributes ())#getValue ((Constants.get_bUNDLE_SYMBOLICNAME ())))) in ();
                    if (!symbolicName <> (Obj.magic 0)) then begin
                        ignore (!hashMap#put (!symbolicName, (new URL.uRL ((fILE + ((Obj.magic !file)#getAbsolutePath ()))))))
                    end
                end
            end
        done;
        (!hashMap :> java_hash_map)
        end
    

    method getJarModuleFileBasicArrayList () : BasicArrayList.basicArrayList =
        begin
        ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, "getJarModuleFileBasicArrayList"));
        let baseJarPath : string ref = ref ((java_system_get_property (jAR_DIR_PROP))) in ();
        if (String.starts_with ~prefix:(fILE) !baseJarPath) then begin
            baseJarPath := (String.sub !baseJarPath ((fILE#length ())) (String.length !baseJarPath - ((fILE#length ()))))
        end;
        let jarFileFilter : Obj.t ref = ref ((Obj.repr (BasicFileFilterUtil.getInstance (".jar")))) in ();
        let path : string ref = ref ((!baseJarPath ^ java_string_of (Obj.repr (iNPUT_AUTMATION_MODULE_BUNDLE_JAR_PATH)))) in ();
        ignore ((Obj.magic logUtil)#putF (("Path: " ^ !path), self, "getJarModuleFileBasicArrayList"));
        let file : Obj.t ref = ref ((Obj.repr (new File.file (!path)))) in ();
        ignore ((Obj.magic logUtil)#putF (((("File: " ^ java_string_of (Obj.repr (((Obj.magic !file)#getAbsolutePath ())))) ^ " isDirectory: ") ^ java_string_of (Obj.repr (((Obj.magic !file)#isDirectory ())))), self, "getJarModuleFileBasicArrayList"));
        (((SubDirectory.getInstance ())#search ((Obj.magic !jarFileFilter), (Obj.magic (java_call_static "FileWrapperUtil.wrapFile" (Obj.repr ((Obj.magic !file))))))) :> BasicArrayList.basicArrayList)
        end
    

    method getInstalledJarSymbolicNameBasicArrayList () : BasicArrayList.basicArrayList =
        begin
        ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, "getInstalledJarSymbolicNameBasicArrayList"));
        let vector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        let bundleContext : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "InputAutomationBundleActivator.getBundleContext" (Obj.repr ()))))) in ();
        let bundleArray : Obj.t ref = ref ((Obj.repr ((Obj.magic !bundleContext)#getBundles ()))) in ();
        if ((Obj.magic !bundleArray) != (Obj.magic 0)) then begin
            ignore ((Obj.magic logUtil)#putF (("bundleArray: " ^ java_string_of (Obj.repr ((Array.length (Obj.magic !bundleArray))))), self, "getInputAutomationModuleServices"));
            for index = 0 to (Array.length (Obj.magic !bundleArray)) - 1 do
                let bundle : Obj.t ref = ref ((Obj.repr (Obj.magic !bundleArray).(index))) in ();
                ignore (!vector#add (((Obj.magic !bundle)#getSymbolicName ())))
            done
        end;
        (!vector :> BasicArrayList.basicArrayList)
        end
    

    method isInstalled ((symbolicName : string)) : bool =
        try
        begin
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr ((CommonLabels.getInstance ())#sTART)) ^ symbolicName), self, "isInstalled"));
        let list : BasicArrayList.basicArrayList ref = ref (((self#getInstalledJarSymbolicNameBasicArrayList ()) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((!list#size ())) in ();
        let nextSymbolicName : string ref = ref ("") in ();
        for index = 0 to !size - 1 do
            nextSymbolicName := (Obj.magic (!list#get (index)));
            if ((String.compare !nextSymbolicName (symbolicName)) == 0) then begin
                raise (Java_return (Obj.repr (true)))
            end
        done;
        false
        end
        with Java_return value -> Obj.obj value
    

    method findNewModules () : BasicArrayList.basicArrayList =
        begin
        ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, "findNewModules"));
        let vector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        let hashMap : java_hash_map ref = ref (((self#getAllJarSymbolicNameHashMap ()) :> java_hash_map)) in ();
        ignore ((Obj.magic logUtil)#putF (("All: " ^ java_string_of (Obj.repr (!hashMap))), self, "findNewModules"));
        let set : Obj.t ref = ref ((Obj.repr (!hashMap#keySet ()))) in ();
        let symbolicNameArray : Obj.t array ref = ref (((Obj.magic !set)#toArray ())) in ();
        let size : int ref = ref ((Array.length !symbolicNameArray)) in ();
        for index = 0 to !size - 1 do
            let symbolicName : string ref = ref ((Obj.magic !symbolicNameArray.(index))) in ();
            if (not (self#isInstalled (!symbolicName))) then begin
                ignore (!vector#add ((!hashMap#get (!symbolicName))))
            end
        done;
        (!vector :> BasicArrayList.basicArrayList)
        end
    

    method install : 'any1 'return. 'any1 -> 'return = fun (url) ->
        let url = Obj.repr url in
        begin
        ignore ((Obj.magic logUtil)#putF (((CommonLabels.getInstance ())#sTART + (Obj.magic url)), self, "install"));
        let bundleContext : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "InputAutomationBundleActivator.getBundleContext" (Obj.repr ()))))) in ();
        (Obj.magic (((Obj.magic !bundleContext)#installBundle ((java_string_of (Obj.repr (Obj.magic url)))))))
        end [@@warning "-20"]
    

    method run () : unit =
        begin
        (try
            ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, commonStrings#rUN));
            (self#setRunning (true));
            let timeHelper : TimeDelayHelper.timeDelayHelper ref = ref (((new TimeDelayHelper.timeDelayHelper (1000)) :> TimeDelayHelper.timeDelayHelper)) in ();
            (try while (self#isRunning ()) do
                ignore (!timeHelper#setStartTimeTNT ());
                ignore ((Obj.magic logUtil)#putF (((CommonLabels.getInstance ())#eLAPSED + (!timeHelper#getElapsedTNT ())), self, commonStrings#rUN));
                (self#updateModules ());
                raise Java_break
            done with Java_break -> ());
            ignore ((Obj.magic logUtil)#putF (commonStrings#eND, self, commonStrings#rUN))
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, commonStrings#rUN, e))
        end)
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        running <- false;
        ();
        ();
        inputAutomationBundleActivator <- Obj.repr (inputAutomationBundleActivator_arg);
        fileBasicArrayList <- (new BasicArrayListD.basicArrayListD ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "InputAutomationNewBundleRunnable" (fun arguments -> Obj.repr (new inputAutomationNewBundleRunnable (Obj.obj arguments)))


