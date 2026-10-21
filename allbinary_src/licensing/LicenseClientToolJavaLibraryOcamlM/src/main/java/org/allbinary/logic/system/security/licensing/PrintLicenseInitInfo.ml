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
(* import org.allbinary.business.init.LicenseInitInfo *)
(* import org.allbinary.business.init.LicenseInitInfoUtil *)
(* import org.allbinary.logic.io.file.FileFactory *)
(* import org.allbinary.globals.PATH_GLOBALS *)
(* import org.allbinary.util.BasicArrayList *)

let pATH : string = "G:\\mnt\\bc\\mydev\\work\\allbinary_src\\licensing\\data\\"
let get_pATH () = pATH
let () = java_register_static "PrintLicenseInitInfo.get_pATH" (fun _ -> Obj.repr (get_pATH ()))
class printLicenseInitInfo ((_options : string array)) =
  object (self)
    
    

    method getLicenseInitInfo : 'return. unit -> 'return = fun () ->
        try
        begin
        let licenseInitInfoUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LicenseInitInfoUtil.getInstance" (Obj.repr ()))))) in ();
        if ((Obj.magic (java_call_static "FileFactory.getInstance" (Obj.repr ())))#isFile (((Obj.magic !licenseInitInfoUtil)#getFilePath ()))) then begin
            raise (Java_return (Obj.repr (((Obj.magic !licenseInitInfoUtil)#read ()))))
        end else begin
            (print_endline (java_string_of (Obj.repr (("No Licence File at: " ^ java_string_of (Obj.repr (((Obj.magic !licenseInitInfoUtil)#getFilePath ()))))))));
            raise (Java_return (Obj.repr ((Obj.obj (java_new "LicenseInitInfo" (Obj.repr ()))))))
        end
        end
        with Java_return value -> Obj.obj value
    

    method printInitInfo () : unit =
        begin
        (try
            let licenseInitInfo : Obj.t ref = ref ((Obj.repr (self#getLicenseInitInfo ()))) in ();
            (print_endline (java_string_of (Obj.repr (("License ID: " ^ java_string_of (Obj.repr (((Obj.magic !licenseInitInfo)#getLicenseId ()))))))));
            let list : BasicArrayList.basicArrayList ref = ref ((((Obj.magic !licenseInitInfo)#getServerList ()) :> BasicArrayList.basicArrayList)) in ();
            let size : int ref = ref ((!list#size ())) in ();
            for index = 0 to !size - 1 do
                (print_endline (java_string_of (Obj.repr (("Lic Serv: " ^ java_string_of (Obj.repr ((!list#get (index)))))))))
            done
        with e -> begin
            (print_string (java_string_of (Obj.repr (("Error: " ^ java_string_of (Obj.repr (e)))))));
            ignore (prerr_endline (Printexc.to_string e))
        end)
        end

    initializer
      begin
        ();
        ignore ((Obj.magic (java_call_static "LicenseInitInfoUtil.getInstance" (Obj.repr ())))#setFilePath ((pATH + (PATH_GLOBALS.getInstance ())#iNIT_PATH)))
      end
  end
let () = java_register_constructor "PrintLicenseInitInfo" (fun arguments -> Obj.repr (new printLicenseInitInfo (Obj.obj arguments)))

let main ((args : string array)) : unit =
        begin
        let initInfo : Obj.t ref = ref ((Obj.repr (new printLicenseInitInfo (args)))) in ();
        ignore ((Obj.magic !initInfo)#printInitInfo ())
        end
let () = java_register_static "PrintLicenseInitInfo.main" (fun arguments -> Obj.repr (main (Obj.obj arguments)))


