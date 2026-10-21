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
(* package org.allbinary.logic.system.security.licensing *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.BufferedReader *)
(* import java.io.InputStreamReader *)
(* import org.allbinary.business.init.LicenseInitInfo *)
(* import org.allbinary.business.init.LicenseInitInfoUtil *)
(* import org.allbinary.logic.io.file.FileFactory *)
(* import org.allbinary.globals.PATH_GLOBALS *)
(* import java.io.File *)
(* import java.io.FileReader *)
(* import java.io.LineNumberReader *)
(* import org.allbinary.util.BasicArrayList *)

let stdinput : Obj.t ref = ref ((Obj.repr (new BufferedReader.bufferedReader ((new InputStreamReader.inputStreamReader ((Obj.magic (java_call_static "System.get_in_" (Obj.repr ())))))))))
let get_stdinput () = Obj.magic !stdinput
let set_stdinput value' = stdinput := Obj.repr value'
let () = java_register_static "SetLicenseInitInfo.get_stdinput" (fun _ -> Obj.repr (get_stdinput ()))
class setLicenseInitInfo ((options : string array)) =
  object (self)
    val mutable vector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method vector = vector
    method set_vector value' = vector <- value'
    
    

    method getLicenseInitInfo : 'return. unit -> 'return = fun () ->
        try
        begin
        let licenseInitInfoUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LicenseInitInfoUtil.getInstance" (Obj.repr ()))))) in ();
        if ((Obj.magic (java_call_static "FileFactory.getInstance" (Obj.repr ())))#isFile ((Obj.magic !licenseInitInfoUtil)#iNITFILENAME)) then begin
            raise (Java_return (Obj.repr (((Obj.magic !licenseInitInfoUtil)#read ()))))
        end else begin
            raise (Java_return (Obj.repr ((Obj.obj (java_new "LicenseInitInfo" (Obj.repr ()))))))
        end
        end
        with Java_return value -> Obj.obj value
    

    method createNewLicenseInitInfo : 'any1. 'any1 -> unit = fun (licenceServerVector) ->
        let licenceServerVector = Obj.repr licenceServerVector in
        begin
        (try
            if ((Obj.magic licenceServerVector) == (Obj.magic 0)) then begin
                raise (Failure ("null BasicArrayList Passed - Just Make Empty if you want"))
            end;
            let licenseInitInfo : Obj.t ref = ref ((Obj.repr (self#getLicenseInitInfo ()))) in ();
            (print_endline (java_string_of (Obj.repr ("License Serv Example: http://www.dartstatistics.com/LicServ/serverssl.php"))));
            ignore ((Obj.magic !licenseInitInfo)#clearServers ());
            let file : Obj.t ref = ref ((Obj.repr (new File.file ((java_string_of (Obj.repr ((PrintLicenseInitInfo.get_pATH ()))) ^ "licenseservers.txt"))))) in ();
            let reader : Obj.t ref = ref ((Obj.repr (new FileReader.fileReader ((Obj.magic !file))))) in ();
            let lineNumberReader : Obj.t ref = ref ((Obj.repr (new LineNumberReader.lineNumberReader ((Obj.magic !reader))))) in ();
            while true do
                let line : string ref = ref (((Obj.magic !lineNumberReader)#readLine ())) in ();
                if (!line <> (Obj.magic 0)) then begin
                    ignore ((Obj.magic !licenseInitInfo)#addServer (!line))
                end else begin
                    raise Java_break
                end
            done;
            ignore ((Obj.magic (java_call_static "LicenseInitInfoUtil.getInstance" (Obj.repr ())))#write ((Obj.magic !licenseInitInfo)));
            ignore ((Obj.magic (java_call_static "LicenseInitInfoUtil.getInstance" (Obj.repr ())))#read ())
        with e -> begin
            (print_string (java_string_of (Obj.repr (("Error: " ^ java_string_of (Obj.repr (e)))))));
            ignore (prerr_endline (Printexc.to_string e))
        end)
        end [@@warning "-20"]

    initializer
      begin
        vector <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        ();
        ignore ((Obj.magic (java_call_static "LicenseInitInfoUtil.getInstance" (Obj.repr ())))#setFilePath (((PrintLicenseInitInfo.get_pATH ()) + (PATH_GLOBALS.getInstance ())#iNIT_PATH)));
        for index = 1 to (Array.length options) - 1 do
            ignore (vector#add (options.(index)))
        done
      end
  end
let () = java_register_constructor "SetLicenseInitInfo" (fun arguments -> Obj.repr (new setLicenseInitInfo (Obj.obj arguments)))

let main ((args : string array)) : unit =
        begin
        let initInfo : Obj.t ref = ref ((Obj.repr (new setLicenseInitInfo (args)))) in ();
        ignore ((Obj.magic !initInfo)#createNewLicenseInitInfo ((new BasicArrayListD.basicArrayListD ())))
        end
let () = java_register_static "SetLicenseInitInfo.main" (fun arguments -> Obj.repr (main (Obj.obj arguments)))


