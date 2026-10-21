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
(* package org.allbinary.logic.communication.sql.connection.pool *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.sql.Connection *)
(* import java.sql.DriverManager *)
(* import java.sql.SQLException *)
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)

class sqlConnectionPool () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable stdUtil : Obj.t = Obj.repr 0
    method stdUtil : 'r. 'r = Obj.magic stdUtil
    method set_stdUtil : 'v. 'v -> unit = fun value' -> stdUtil <- Obj.repr value'
    val mutable connectionHashMap : java_hash_map = (Obj.magic 0)
    method connectionHashMap = connectionHashMap
    method set_connectionHashMap value' = connectionHashMap <- value'
    val mutable fIRST_NEW_CONNECTION_CREATED : string = ""
    method fIRST_NEW_CONNECTION_CREATED = fIRST_NEW_CONNECTION_CREATED
    method set_fIRST_NEW_CONNECTION_CREATED value' = fIRST_NEW_CONNECTION_CREATED <- value'
    val mutable fIRST : string = ""
    method fIRST = fIRST
    method set_fIRST value' = fIRST <- value'
    val mutable nEW_CONNECTION_FOR : string = ""
    method nEW_CONNECTION_FOR = nEW_CONNECTION_FOR
    method set_nEW_CONNECTION_FOR value' = nEW_CONNECTION_FOR <- value'
    val mutable cREATED : string = ""
    method cREATED = cREATED
    method set_cREATED value' = cREATED <- value'
    val mutable nUMBER_OF_SQL_CONNECTIONS_FOR : string = ""
    method nUMBER_OF_SQL_CONNECTIONS_FOR = nUMBER_OF_SQL_CONNECTIONS_FOR
    method set_nUMBER_OF_SQL_CONNECTIONS_FOR value' = nUMBER_OF_SQL_CONNECTIONS_FOR <- value'
    val mutable nUMBER_OF_SQL_CONNECTION_VECTORS : string = ""
    method nUMBER_OF_SQL_CONNECTION_VECTORS = nUMBER_OF_SQL_CONNECTION_VECTORS
    method set_nUMBER_OF_SQL_CONNECTION_VECTORS value' = nUMBER_OF_SQL_CONNECTION_VECTORS <- value'
    val mutable iS : string = ""
    method iS = iS
    method set_iS value' = iS <- value'
    val mutable cONNECTION_ALLREADY_CLOSED : string = ""
    method cONNECTION_ALLREADY_CLOSED = cONNECTION_ALLREADY_CLOSED
    method set_cONNECTION_ALLREADY_CLOSED value' = cONNECTION_ALLREADY_CLOSED <- value'
    val mutable mETHOD_GET : string = ""
    method mETHOD_GET = mETHOD_GET
    method set_mETHOD_GET value' = mETHOD_GET <- value'
    val mutable mETHOD_ADD : string = ""
    method mETHOD_ADD = mETHOD_ADD
    method set_mETHOD_ADD value' = mETHOD_ADD <- value'
    
    

    method get : 'return. string -> 'return = fun ((url : string)) ->
        try
        begin
        if (connectionHashMap == (Obj.magic 0)) then begin
            connectionHashMap <- ((Obj.magic stdUtil)#createHashMap ());
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGINGPOOL)) then begin
                ignore ((Obj.magic logUtil)#putF ((fIRST_NEW_CONNECTION_CREATED ^ url), self, mETHOD_GET))
            end;
            raise (Java_return (Obj.repr ((DriverManager.getConnection (url)))))
        end else begin
            let connectionVector : BasicArrayList.basicArrayList ref = ref (((Obj.magic (connectionHashMap#get (url))) :> BasicArrayList.basicArrayList)) in ();
            if (!connectionVector == (Obj.magic 0)) then begin
                connectionVector := (new BasicArrayListD.basicArrayListD ());
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGINGPOOL)) then begin
                    let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
                    ignore (!stringBuffer#append (fIRST));
                    ignore (!stringBuffer#append (nEW_CONNECTION_FOR));
                    ignore (!stringBuffer#append (url));
                    ignore (!stringBuffer#append (cREATED));
                    ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, mETHOD_GET))
                end;
                raise (Java_return (Obj.repr ((DriverManager.getConnection (url)))))
            end else if ((!connectionVector#size ()) = 0) then begin
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGINGPOOL)) then begin
                    ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr ((((new StringMaker.stringMaker ())#append (nEW_CONNECTION_FOR))#append (url))#append (cREATED)))), self, mETHOD_GET))
                end;
                raise (Java_return (Obj.repr ((DriverManager.getConnection (url)))))
            end else begin
                let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
                let size : int ref = ref ((!connectionVector#size ())) in ();
                for i = 0 to !size - 1 do
                    let sqlConnection : Obj.t ref = ref ((Obj.repr (Obj.magic (!connectionVector#get (i))))) in ();
                    if (not ((Obj.magic !sqlConnection)#isClosed ())) then begin
                        ignore (!connectionVector#remove ((Obj.magic !sqlConnection)));
                        ignore (connectionHashMap#put (url, !connectionVector));
                        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGINGPOOL)) then begin
                            ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
                            ignore (!stringBuffer#append (nUMBER_OF_SQL_CONNECTIONS_FOR));
                            ignore (!stringBuffer#append (url));
                            ignore (!stringBuffer#append (iS));
                            ignore (!stringBuffer#appendint ((!connectionVector#size ())));
                            ignore ((Obj.magic logUtil)#putF ((nUMBER_OF_SQL_CONNECTION_VECTORS ^ java_string_of (Obj.repr ((connectionHashMap#size ())))), self, mETHOD_GET));
                            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, mETHOD_GET))
                        end;
                        raise (Java_return (Obj.repr ((Obj.magic (Obj.magic !sqlConnection)))))
                    end
                done
            end
        end;
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGINGPOOL)) then begin
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (!stringBuffer#append (nEW_CONNECTION_FOR));
            ignore (!stringBuffer#append (url));
            ignore (!stringBuffer#append (cREATED));
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, mETHOD_GET))
        end;
        (Obj.magic ((DriverManager.getConnection (url))))
        end
        with Java_return value -> Obj.obj value
    

    method add : 'any2. string * 'any2 -> unit = fun ((url : string), sqlConnection) ->
        let sqlConnection = Obj.repr sqlConnection in
        begin
        if (not ((Obj.magic sqlConnection)#isClosed ())) then begin
            let connectionVector : BasicArrayList.basicArrayList ref = ref (((Obj.magic 0) :> BasicArrayList.basicArrayList)) in ();
            if (connectionHashMap == (Obj.magic 0)) then begin
                connectionHashMap <- ((Obj.magic stdUtil)#createHashMap ());
                connectionVector := (new BasicArrayListD.basicArrayListD ());
                ignore (!connectionVector#add ((Obj.magic sqlConnection)))
            end else begin
                connectionVector := (Obj.magic (connectionHashMap#get (url)));
                if (!connectionVector == (Obj.magic 0)) then begin
                    connectionVector := (new BasicArrayListD.basicArrayListD ())
                end;
                ignore (!connectionVector#add ((Obj.magic sqlConnection)));
                ignore (connectionHashMap#put (url, !connectionVector))
            end;
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGINGPOOL)) then begin
                let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
                ignore (!stringBuffer#append (nUMBER_OF_SQL_CONNECTIONS_FOR));
                ignore (!stringBuffer#append (url));
                ignore (!stringBuffer#append (iS));
                ignore (!stringBuffer#appendint ((!connectionVector#size ())));
                ignore ((Obj.magic logUtil)#putF ((nUMBER_OF_SQL_CONNECTION_VECTORS ^ java_string_of (Obj.repr ((connectionHashMap#size ())))), self, mETHOD_ADD));
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, mETHOD_ADD))
            end
        end;
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGINGPOOL)) then begin
            ignore ((Obj.magic logUtil)#putF (cONNECTION_ALLREADY_CLOSED, self, mETHOD_ADD))
        end
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        stdUtil <- (Obj.repr (Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ()))));
        connectionHashMap <- ((Obj.magic 0) :> java_hash_map);
        fIRST_NEW_CONNECTION_CREATED <- "First New Connection Created: ";
        fIRST <- "First ";
        nEW_CONNECTION_FOR <- "New Connection For ";
        cREATED <- " Created";
        nUMBER_OF_SQL_CONNECTIONS_FOR <- "Number Of Sql Connections for: ";
        nUMBER_OF_SQL_CONNECTION_VECTORS <- "Number Of Sql Connection Vectors: ";
        iS <- " is ";
        cONNECTION_ALLREADY_CLOSED <- "Connection AllReady Closed";
        mETHOD_GET <- "get()";
        mETHOD_ADD <- "add()";
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "SqlConnectionPool" (fun arguments -> Obj.repr (new sqlConnectionPool (Obj.obj arguments)))

let instance = (new sqlConnectionPool ())
let get_instance () = instance
let () = java_register_static "SqlConnectionPool.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "SqlConnectionPool.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


