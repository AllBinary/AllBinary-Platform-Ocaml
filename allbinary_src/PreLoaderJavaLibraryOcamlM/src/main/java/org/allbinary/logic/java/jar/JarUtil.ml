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
(* package org.allbinary.logic.java.jar *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.IOException *)
(* import java.net.URL *)
(* import java.net.URLConnection *)
(* import java.util.jar.JarEntry *)
(* import java.util.jar.JarInputStream *)

class jarUtil (jarURL_arg) =
  object
    val mutable jarURL : Obj.t = Obj.repr 0
    method jarURL : 'r. 'r = Obj.magic jarURL
    method set_jarURL : 'v. 'v -> unit = fun value' -> jarURL <- Obj.repr value'
    
    

    method show () : unit =
        begin
        let cache : int array ref = ref ((Array.make (1024) 0)) in ();
        (try
            let conn : Obj.t ref = ref ((Obj.repr ((Obj.magic jarURL)#openConnection ()))) in ();
            let jis : Obj.t ref = ref ((Obj.repr (new JarInputStream.jarInputStream (((Obj.magic !conn)#getInputStream ()))))) in ();
            while true do
                let entry : Obj.t ref = ref ((Obj.repr ((Obj.magic !jis)#getNextJarEntry ()))) in ();
                if ((Obj.magic !entry) != (Obj.magic 0)) then begin
                    if (not ((Obj.magic !entry)#isDirectory ())) then begin
                        let offset : int ref = ref (0) in ();
                        let i : int ref = ref (0) in ();
                        while (((i := ((Obj.magic !jis)#read (!cache, !offset, ((Array.length !cache) - !offset))); !i)) != (-1)) do
                            offset := (!offset + !i);
                            if (!offset >= (Array.length !cache)) then begin
                                let newcache : int array ref = ref ((Array.make (((Array.length !cache) + 1024)) 0)) in ();
                                ignore (Array.blit (!cache) (0) (!newcache) (0) ((Array.length !cache)));
                                cache := !newcache
                            end
                        done;
                        let tmp : int array ref = ref ((Array.make (!offset) 0)) in ();
                        ignore (Array.blit (!cache) (0) (!tmp) (0) (!offset));
                        (print_endline (java_string_of (Obj.repr (((Obj.magic !entry)#getName ())))))
                    end
                end else begin
                    raise Java_break
                end
            done
        with ex -> begin
            (print_endline (java_string_of (Obj.repr (ex))));
            ignore (prerr_endline (Printexc.to_string ex))
        end)
        end

    initializer
      begin
        ();
        ();
        jarURL <- Obj.repr (jarURL_arg)
      end
  end [@@warning "-20"]
let () = java_register_constructor "JarUtil" (fun arguments -> Obj.repr (new jarUtil (Obj.obj arguments)))

let main ((_args : string array)) : unit =
        begin
        ignore ((new jarUtil ((new URL.uRL ("file:///G:/mnt/bc/mydev/working/j2me/MiniSpaceWars/MiniSpaceWars/dist/MiniSpaceWars.jar"))))#show ())
        end
let () = java_register_static "JarUtil.main" (fun arguments -> Obj.repr (main (Obj.obj arguments)))


