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
(* package org.allbinary.business.init.db *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.io.path.AbPathData *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonSeps *)

class dbConnectionInfo () =
  object (self)
    val mutable jdbcDriver : string = ""
    method jdbcDriver = jdbcDriver
    method set_jdbcDriver value' = jdbcDriver <- value'
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    val mutable userName : string = ""
    method userName = userName
    method set_userName value' = userName <- value'
    val mutable password : string = ""
    method password = password
    method set_password value' = password <- value'
    val mutable schema : string = ""
    method schema = schema
    method set_schema value' = schema <- value'
    val mutable server : string = ""
    method server = server
    method set_server value' = server <- value'
    val mutable port : string = ""
    method port = port
    method set_port value' = port <- value'
    val mutable url : string = ""
    method url = url
    method set_url value' = url <- value'
    val mutable host : string = ""
    method host = host
    method set_host value' = host <- value'
    val mutable sCHEMA_SEP : string = ""
    method sCHEMA_SEP = sCHEMA_SEP
    method set_sCHEMA_SEP value' = sCHEMA_SEP <- value'
    val mutable uSER_NAME_KEY : string = ""
    method uSER_NAME_KEY = uSER_NAME_KEY
    method set_uSER_NAME_KEY value' = uSER_NAME_KEY <- value'
    val mutable pASSWORD_KEY : string = ""
    method pASSWORD_KEY = pASSWORD_KEY
    method set_pASSWORD_KEY value' = pASSWORD_KEY <- value'
    
    

    method updateUrl () : unit =
        begin
        (self#updateHost ());
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ((self#getHost ())));
        ignore (!stringBuffer#append ((self#getName ())));
        ignore (!stringBuffer#append ((self#getUserNameKey ())));
        ignore (!stringBuffer#append ((self#getUserName ())));
        ignore (!stringBuffer#append ((self#getPasswordKey ())));
        ignore (!stringBuffer#append ((self#getPassword ())));
        url <- (java_string_of (Obj.repr !stringBuffer))
        end
    

    method getUrl () : string =
        begin
        url
        end
    

    method getJdbcDriver () : string =
        begin
        jdbcDriver
        end
    

    method getName () : string =
        begin
        name
        end
    

    method getUserName () : string =
        begin
        userName
        end
    

    method getPassword () : string =
        begin
        password
        end
    

    method updateHost () : unit =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ((self#getSchema ())));
        ignore (!stringBuffer#append (sCHEMA_SEP));
        ignore (!stringBuffer#append ((self#getServer ())));
        if (((self#getPort ()) != (Obj.magic 0)) && (((self#getPort ())#length ()) > 1)) then begin
            ignore (!stringBuffer#append ((CommonSeps.getInstance ())#cOLON));
            ignore (!stringBuffer#append ((self#getPort ())))
        end;
        ignore (!stringBuffer#append ((Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#sEPARATOR));
        host <- (java_string_of (Obj.repr !stringBuffer))
        end
    

    method getHost () : string =
        begin
        host
        end
    

    method getSchema () : string =
        begin
        schema
        end
    

    method getServer () : string =
        begin
        server
        end
    

    method getPort () : string =
        begin
        port
        end
    

    method setJdbcDriver ((value : string)) : unit =
        begin
        jdbcDriver <- value
        end
    

    method setName ((value : string)) : unit =
        begin
        name <- value;
        (self#updateUrl ())
        end
    

    method setUserName ((value : string)) : unit =
        begin
        userName <- value;
        (self#updateUrl ())
        end
    

    method setPassword ((value : string)) : unit =
        begin
        password <- value;
        (self#updateUrl ())
        end
    

    method setSchema ((value : string)) : unit =
        begin
        schema <- value;
        (self#updateUrl ())
        end
    

    method setServer ((value : string)) : unit =
        begin
        server <- value;
        (self#updateUrl ())
        end
    

    method setPort ((value : string)) : unit =
        begin
        port <- value;
        (self#updateUrl ())
        end
    

    method getUserNameKey () : string =
        begin
        uSER_NAME_KEY
        end
    

    method getPasswordKey () : string =
        begin
        pASSWORD_KEY
        end

    initializer
      begin
        jdbcDriver <- "";
        name <- "";
        userName <- "";
        password <- "";
        schema <- "";
        server <- "";
        port <- "";
        url <- "";
        host <- "";
        sCHEMA_SEP <- "://";
        uSER_NAME_KEY <- "?user=";
        pASSWORD_KEY <- "&password=";
        ();
        ()
      end
  end
let () = java_register_constructor "DbConnectionInfo" (fun arguments -> Obj.repr (new dbConnectionInfo (Obj.obj arguments)))


