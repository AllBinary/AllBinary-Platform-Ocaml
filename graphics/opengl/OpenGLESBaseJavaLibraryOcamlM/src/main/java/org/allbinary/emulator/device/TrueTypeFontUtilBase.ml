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
(* package org.allbinary.emulator.device *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Font *)
(* import org.allbinary.AvianUtil *)
(* import org.allbinary.logic.string.StringUtil *)

class trueTypeFontUtilBase ((scale_arg : int)) =
  object (self)
    val mutable shortPattern : string = ""
    method shortPattern = shortPattern
    method set_shortPattern value' = shortPattern <- value'
    val mutable patternAsBytes : int array = (Obj.magic 0)
    method patternAsBytes = patternAsBytes
    method set_patternAsBytes value' = patternAsBytes <- value'
    val mutable pattern : string = ""
    method pattern = pattern
    method set_pattern value' = pattern <- value'
    val mutable charArray : int array = (Obj.magic 0)
    method charArray = charArray
    method set_charArray value' = charArray <- value'
    val mutable _characterWidth : int array = (Obj.magic 0)
    method _characterWidth = _characterWidth
    method set__characterWidth value' = _characterWidth <- value'
    val mutable characterArray : char array = (Obj.magic 0)
    method characterArray = characterArray
    method set_characterArray value' = characterArray <- value'
    val mutable size : int = 0
    method size = size
    method set_size value' = size <- value'
    val mutable lastCapIndex : int = 0
    method lastCapIndex = lastCapIndex
    method set_lastCapIndex value' = lastCapIndex <- value'
    val mutable currentFont : Obj.t = Obj.repr 0
    method currentFont : 'r. 'r = Obj.magic currentFont
    method set_currentFont : 'v. 'v -> unit = fun value' -> currentFont <- Obj.repr value'
    val mutable scale : int = 0
    method scale = scale
    method set_scale value' = scale <- value'
    val mutable cELLS_PER_ROW : int = 0
    method cELLS_PER_ROW = cELLS_PER_ROW
    method set_cELLS_PER_ROW value' = cELLS_PER_ROW <- value'
    val mutable fontSize : int = 0
    method fontSize = fontSize
    method set_fontSize value' = fontSize <- value'
    val mutable baseCharWidth : int = 0
    method baseCharWidth = baseCharWidth
    method set_baseCharWidth value' = baseCharWidth <- value'
    val mutable cellSize : int = 0
    method cellSize = cellSize
    method set_cellSize value' = cellSize <- value'
    val mutable textureSize : int = 0
    method textureSize = textureSize
    method set_textureSize value' = textureSize <- value'
    val mutable actualCellsPerRow : int = 0
    method actualCellsPerRow = actualCellsPerRow
    method set_actualCellsPerRow value' = actualCellsPerRow <- value'
    
    

    method getAsTextureSize ((textureSize_arg : int)) : int =
        let textureSize_arg = ref textureSize_arg in
        begin
        if (!textureSize_arg <= 64) then begin
            textureSize_arg := 64
        end else if (!textureSize_arg <= 128) then begin
            textureSize_arg := 128
        end else if (!textureSize_arg <= 256) then begin
            textureSize_arg := 256
        end else if (!textureSize_arg <= 512) then begin
            textureSize_arg := 512
        end else if (!textureSize_arg <= 1024) then begin
            textureSize_arg := 1024
        end;
        !textureSize_arg
        end
    

    method getCellSize ((cellSize_arg : int)) : int =
        let cellSize_arg = ref cellSize_arg in
        begin
        if (!cellSize_arg <= 16) then begin
            cellSize_arg := 16
        end else if (!cellSize_arg <= 32) then begin
            cellSize_arg := 32
        end else if (!cellSize_arg <= 64) then begin
            cellSize_arg := 64
        end else if (!cellSize_arg <= 128) then begin
            cellSize_arg := 128
        end else if (!cellSize_arg <= 256) then begin
            cellSize_arg := 256
        end;
        !cellSize_arg
        end
    

    method getYOffset () : int =
        begin
        ((((scale - 1)) * cellSize))
        end

    initializer
      begin
        ();
        patternAsBytes <- [| 32; 48; 49; 50; 51; 52; 53; 54; 55; 56; 57; 65; 66; 32; 32; 32; 67; 68; 69; 70; 71; 72; 73; 74; 75; 76; 77; 78; 79; 32; 32; 32; 80; 81; 82; 83; 84; 85; 86; 87; 88; 89; 90; 97; 98; 32; 32; 32; 99; 100; 101; 102; 103; 104; 105; 106; 107; 108; 109; 110; 111; 32; 32; 32; 112; 113; 114; 115; 116; 117; 118; 119; 120; 121; 122; 46; 63; 32; 32; 32; 33; 36; 37; 96; (-62); (-84); (-62); (-84); 34; (-62); (-93); (-62); (-93); 94; 38; 42; 40; 32; 32; 32; 41; 95; 43; 45; 61; 91; 93; 123; 125; 59; 39; 35; 58; 32; 32; 32; 64; 126; 44; 47; 60; 62; 92; 124; (-62); (-82); (-62); (-82); (-62); (-87); (-62); (-87) |];
        pattern <- (Obj.obj (java_new "String" (Obj.repr (patternAsBytes))));
        charArray <- [| 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x6f; 0x50; 0x56; 0x6b; 0x51; 0x52; 0x5a; 0x6a; 0x5c; 0x60; 0x5b; 0x62; 0x72; 0x63; 0x4b; 0x73; 0x1; 0x2; 0x3; 0x4; 0x5; 0x6; 0x7; 0x8; 0x9; 0xa; 0x6c; 0x69; 0x74; 0x64; 0x75; 0x4c; 0x70; 0xb; 0xc; 0x10; 0x11; 0x12; 0x13; 0x14; 0x15; 0x16; 0x17; 0x18; 0x19; 0x1a; 0x1b; 0x1c; 0x20; 0x21; 0x22; 0x23; 0x24; 0x25; 0x26; 0x27; 0x28; 0x29; 0x2a; 0x65; 0x76; 0x66; 0x59; 0x61; 0x53; 0x2b; 0x2c; 0x30; 0x31; 0x32; 0x33; 0x34; 0x35; 0x36; 0x37; 0x38; 0x39; 0x3a; 0x3b; 0x3c; 0x40; 0x41; 0x42; 0x43; 0x44; 0x45; 0x46; 0x47; 0x48; 0x49; 0x4a; 0x67; 0x77; 0x68; 0x71; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x58; 0x0; 0x0; 0x0; 0x0; 0x0; 0x7b; 0x0; 0x0; 0x55; 0x0; 0x79; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0; 0x0 |];
        _characterWidth <- (Array.make ((String.length pattern)) 0);
        characterArray <- (Array.make (1) '\000');
        size <- (String.length pattern);
        lastCapIndex <- (java_string_index_of pattern (Obj.repr ('Z')));
        currentFont <- (Obj.repr (Obj.magic (java_call_static "Font.getDefaultFont" (Obj.repr ()))));
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        let shortPattern_arg : string ref = ref ((StringUtil.getInstance ())#eMPTY_STRING) in ();
        if (Obj.magic (java_call_static "AvianUtil.isAvian" (Obj.repr ()))) then begin
            let shortPatterAsByteArray : int array ref = ref ([| 32; 48; 49; 50; 51; 52; 53; 54; 55; 56; 57; 65; 66; 67; 68; 69; 70; 71; 72; 73; 74; 75; 76; 77; 78; 79; 80; 81; 82; 83; 84; 85; 86; 87; 88; 89; 90; 97; 98; 99; 100; 101; 102; 103; 104; 105; 106; 107; 108; 109; 110; 111; 112; 113; 114; 115; 116; 117; 118; 119; 120; 121; 122; 46; 63; 33; 36; 37; 96; (-62); (-84); (-62); (-84); 34; (-62); (-93); (-62); (-93); 94; 38; 42; 40; 41; 95; 43; 45; 61; 91; 93; 123; 125; 59; 39; 35; 58; 64; 126; 44; 47; 60; 62; 92; 124; (-62); (-82); (-62); (-82); (-62); (-87); (-62); (-87) |]) in ();
            shortPattern_arg := (Obj.obj (java_new "String" (Obj.repr (!shortPatterAsByteArray))))
        end else begin
            let shortPatterAsByteArray : int array ref = ref ([| 32; 48; 49; 50; 51; 52; 53; 54; 55; 56; 57; 65; 66; 67; 68; 69; 70; 71; 72; 73; 74; 75; 76; 77; 78; 79; 80; 81; 82; 83; 84; 85; 86; 87; 88; 89; 90; 97; 98; 99; 100; 101; 102; 103; 104; 105; 106; 107; 108; 109; 110; 111; 112; 113; 114; 115; 116; 117; 118; 119; 120; 121; 122; 46; 63; 33; 36; 37; 96; (-62); (-84); 34; (-62); (-93); 94; 38; 42; 40; 41; 95; 43; 45; 61; 91; 93; 123; 125; 59; 39; 35; 58; 64; 126; 44; 47; 60; 62; 92; 124; (-62); (-82); (-62); (-87) |]) in ();
            shortPattern_arg := (Obj.obj (java_new "String" (Obj.repr (!shortPatterAsByteArray))))
        end;
        shortPattern <- !shortPattern_arg;
        scale <- scale_arg;
        cELLS_PER_ROW <- 16;
        fontSize <- (((20 + 6)) * scale);
        baseCharWidth <- (fontSize + ((6 * scale)));
        cellSize <- (fontSize + ((6 * scale)));
        textureSize <- (self#getAsTextureSize ((cELLS_PER_ROW * cellSize)));
        actualCellsPerRow <- (textureSize / cellSize)
      end
  end [@@warning "-20"]
let () = java_register_constructor "TrueTypeFontUtilBase" (fun arguments -> Obj.repr (new trueTypeFontUtilBase (Obj.obj arguments)))


