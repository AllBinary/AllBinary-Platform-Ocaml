(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.logic.io.file *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.ByteArrayOutputStream *)
(* import java.io.IOException *)
(* import java.io.InputStream *)
(* import java.io.OutputStream *)
(* import java.io.Reader *)
(* import java.io.Writer *)
(* import java.nio.CharBuffer *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.io.StreamUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)


let nullOutputStream : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((object (self)
            inherit OutputStream.outputStream () as super
            

            method write ((_b : int)) : unit =
                begin
                ()
                end
            

            method write ((_b : int array), (_off : int), (_len : int)) : unit =
                begin
                ()
                end
            

            method close () : unit =
                begin
                ()
                end
        end)))
        end

and nullWriter : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((object (self)
            inherit Writer.writer () as super
            closed <- false
            

            method append : 'return. char -> 'return = fun ((_c : char)) ->
                begin
                (Obj.magic (self))
                end
            

            method append : 'any1 'return. 'any1 -> 'return = fun (_csq) ->
                begin
                (Obj.magic (self))
                end [@@warning "-20"]
            

            method append : 'any1 'return. 'any1 * int * int -> 'return = fun (_csq, (_start : int), (_end_ : int)) ->
                begin
                (Obj.magic (self))
                end [@@warning "-20"]
            

            method write ((_c : int)) : unit =
                begin
                ()
                end
            

            method write ((_cbuf : char array), (_off : int), (_len : int)) : unit =
                begin
                ()
                end
            

            method write ((_str : string)) : unit =
                begin
                ()
                end
            

            method write ((_str : string), (_off : int), (_len : int)) : unit =
                begin
                ()
                end
            

            method flush () : unit =
                begin
                ()
                end
            

            method close () : unit =
                begin
                ()
                end
        end)))
        end

and nullReader : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((object (self)
            inherit Reader.reader () as super
            

            method read () : int =
                begin
                (-1)
                end
            

            method read ((_cbuf : char array), (_off : int), (_len : int)) : int =
                begin
                (-1)
                end
            

            method read : 'any1. 'any1 -> int = fun (_target) ->
                begin
                (-1)
                end [@@warning "-20"]
            

            method ready () : bool =
                begin
                false
                end
            

            method skip ((_n : int)) : int =
                begin
                0
                end
            

            method close () : unit =
                begin
                ()
                end
        end)))
        end

let () = java_register_static "SimpleFileUtil.nullOutputStream" (fun arguments -> Obj.repr (nullOutputStream (Obj.obj arguments)))
let () = java_register_static "SimpleFileUtil.nullWriter" (fun arguments -> Obj.repr (nullWriter (Obj.obj arguments)))
let () = java_register_static "SimpleFileUtil.nullReader" (fun arguments -> Obj.repr (nullReader (Obj.obj arguments)))
class simpleFileUtil () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable nULL_WRITER : Obj.t = Obj.repr 0
    method nULL_WRITER : 'r. 'r = Obj.magic nULL_WRITER
    method set_nULL_WRITER : 'v. 'v -> unit = fun value' -> nULL_WRITER <- Obj.repr value'
    val mutable nULL_READER : Obj.t = Obj.repr 0
    method nULL_READER : 'r. 'r = Obj.magic nULL_READER
    method set_nULL_READER : 'v. 'v -> unit = fun value' -> nULL_READER <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable nullUtil : NullUtil.nullUtil = (Obj.magic 0)
    method nullUtil = nullUtil
    method set_nullUtil value' = nullUtil <- value'
    val mutable streamUtil : StreamUtil.streamUtil = (Obj.magic 0)
    method streamUtil = streamUtil
    method set_streamUtil value' = streamUtil <- value'
    

    method loadFileAsList : 'any1. 'any1 * int * int array -> BasicArrayList.basicArrayList = fun (inputStream, (max : int), (byteArray1 : int array)) ->
        let inputStream = Obj.repr inputStream in
        begin
        ((self#loadFileAsListReturnLine ((Obj.magic inputStream), max, byteArray1, 0)) :> BasicArrayList.basicArrayList)
        end [@@warning "-20"]
    

    method loadFileAsListReturnLine : 'any1. 'any1 * int * int array * int -> BasicArrayList.basicArrayList = fun (inputStream, (max : int), (byteArray1 : int array), (includeReturnLine : int)) ->
        let inputStream = Obj.repr inputStream in
        try
        begin
        let stringList : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        if ((Obj.magic inputStream) == (Obj.magic 0)) then begin
            raise (Java_return (Obj.repr (!stringList)))
        end;
        let byteArray : int array ref = ref (nullUtil#nULL_BYTE_ARRAY) in ();
        (try
            let outputStream2 : java_byte_array_output_stream ref = ref ((new java_byte_array_output_stream ())) in ();
            byteArray := (streamUtil#getByteArray ((Obj.magic inputStream), !outputStream2, byteArray1));
            ignore (streamUtil#close ((Obj.magic inputStream)))
        with e -> begin
            ignore (streamUtil#close ((Obj.magic inputStream)));
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, commonStrings#aDD, e))
        end);
        if (!byteArray == (Obj.magic 0)) then begin
            raise (Java_return (Obj.repr (!stringList)))
        end;
        let size : int ref = ref ((Array.length !byteArray)) in ();
        let index : int ref = ref (0) in ();
        let startIndex : int ref = ref (0) in ();
        let returnLine : int ref = ref (0) in ();
        while (!index < !size) do
            startIndex := !index;
            while ((!index < (!size - 1)) && (!byteArray.(!index) <> (Char.code '\n'))) do
                index := !index + 1
            done;
            if (includeReturnLine = 0) then begin
                if ((!index > 0) && (!byteArray.((!index - 1)) = (Char.code '\r'))) then begin
                    returnLine := 1
                end else begin
                    returnLine := 0
                end
            end;
            let s : string ref = ref ((Obj.obj (java_new "String" (Obj.repr (!byteArray, !startIndex, ((((!index + includeReturnLine) - !returnLine) - !startIndex))))))) in ();
            ignore (!stringList#add (!s));
            index := !index + 1
        done;
        (!stringList :> BasicArrayList.basicArrayList)
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method createStringFromArrayOfStrings ((stringArray : string array)) : string =
        begin
        let stringMaker : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let size : int ref = ref ((Array.length stringArray)) in ();
        for index = 0 to !size - 1 do
            ignore (!stringMaker#append (stringArray.(index)))
        done;
        (java_string_of (Obj.repr !stringMaker))
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        nULL_WRITER <- (Obj.repr (nullWriter ()));
        nULL_READER <- (Obj.repr (nullReader ()));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        nullUtil <- ((NullUtil.getInstance ()) :> NullUtil.nullUtil);
        streamUtil <- ((StreamUtil.getInstance ()) :> StreamUtil.streamUtil);
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "SimpleFileUtil" (fun arguments -> Obj.repr (new simpleFileUtil (Obj.obj arguments)))

let instance = (new simpleFileUtil ())
let get_instance () = instance
let () = java_register_static "SimpleFileUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "SimpleFileUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


