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
(* package org.allbinary.logic.communication.ftp.configuration *)

open Allbinary_java [@@warning "-33"]
(* import java.util.HashMap *)

class ftpConfiguration () =
  object
    val mutable ftpServer : string = ""
    method ftpServer = ftpServer
    method set_ftpServer value' = ftpServer <- value'
    val mutable ftpPath : string = ""
    method ftpPath = ftpPath
    method set_ftpPath value' = ftpPath <- value'
    val mutable ftpUserName : string = ""
    method ftpUserName = ftpUserName
    method set_ftpUserName value' = ftpUserName <- value'
    val mutable ftpPassword : string = ""
    method ftpPassword = ftpPassword
    method set_ftpPassword value' = ftpPassword <- value'
    
    
    

    method getServer () : string =
        begin
        ftpServer
        end
    

    method getPath () : string =
        begin
        ftpPath
        end
    

    method getUserName () : string =
        begin
        ftpUserName
        end
    

    method getPassword () : string =
        begin
        ftpPassword
        end
    

    method setServer ((value : string)) : unit =
        begin
        ftpServer <- value
        end
    

    method setPath ((value : string)) : unit =
        begin
        ftpPath <- value
        end
    

    method setUserName ((value : string)) : unit =
        begin
        ftpUserName <- value
        end
    

    method setPassword ((value : string)) : unit =
        begin
        ftpPassword <- value
        end

    initializer
      begin
        ();
        ();
        ();
        ();
        ();
        ()
      end
  end
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "FtpConfiguration" (fun arguments -> Obj.repr (new ftpConfiguration (Obj.obj arguments)))


