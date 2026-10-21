(* Generated Code Do Not Modify *)

open Allbinary_java [@@warning "-33"]
(* import org.junit.jupiter.api.Assertions *)
(* import org.junit.jupiter.api.DisplayName *)
(* import org.junit.jupiter.api.Test *)

class appTest () =
  object
    

    method testAddition () : unit =
        begin
        ignore (Assertions.assertEquals (2, (1 + 1)))
        end
    

    method testStringEquality () : unit =
        begin
        let expected : string ref = ref ("Hello World!") in ();
        let actual : string ref = ref ("Hello World!") in ();
        ignore (Assertions.assertEquals (!expected, !actual))
        end
    

    method testBooleanAssertions () : unit =
        begin
        ignore (Assertions.assertTrue (true));
        ignore (Assertions.assertFalse (false))
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "AppTest" (fun arguments -> Obj.repr (new appTest (Obj.obj arguments)))


