PROGRAM selectsort;
TYPE tArray = Array OF Integer;
VAR usr_array:tArray;
  n, i, j:Integer;
  tries, ar_index, ar_swap:Integer;
  valid_size, has_tries_left: Boolean;
BEGIN
  tries := 3;
  REPEAT
    Write('Dimension del vector? ');
    ReadLn(n);
    valid_size := (n > 0);
    IF NOT(valid_size) THEN
    BEGIN
       tries := tries - 1;
       has_tries_left := (tries > 0);
       WriteLn('ERROR: Usted ingreso una dimension invalida para el vector.');
       IF (has_tries_left) THEN
         WriteLn('Le quedan', tries, ' intentos.')
       ELSE
         WriteLn('Ya no le quedan intentos.');
    END;
  UNTIL (valid_size OR NOT(has_tries_left));
  IF (valid_size) THEN
  BEGIN
     SetLength(usr_array, n);
     FOR i := 0 TO (n - 1) DO
     BEGIN
       Write('vector[', i, ']? ');
       ReadLn(usr_array[i]);
     END;
     Write('Entrada: Vector ');
     FOR i := 0 TO (n - 1) DO
     BEGIN
        IF (i = 0) THEN
          Write(#123, usr_array[i], ', ')
        ELSE
          IF (i < (n - 1)) THEN
            Write(usr_array[i], ', ')
          ELSE
            WriteLn(usr_array[i], #125);
     END;
     FOR i := 0 TO (n - 2) DO
     BEGIN
        ar_index := i;
        FOR j := (i + 1) TO (n - 1) DO
        BEGIN
           IF (usr_array[i] > usr_array[j]) THEN
           BEGIN
              WriteLn('Cambio (', usr_array[i], ', ', usr_array[j], ')');
              ar_index := j;
              ar_swap := usr_array[i];
              usr_array[i] := usr_array[j];
              usr_array[j] := ar_swap;
           END;
        END;
        Write('Vector despues de la pasada ', (i + 1), ' ');
        Write('esta ordenado ascendente hasta ', #124, #124, ': ', #123);
        FOR j := 0 TO (n - 1) DO
        BEGIN
           IF (j < (n - 1)) THEN
           BEGIN
              IF (usr_array[j] = usr_array[i]) THEN
                 Write(usr_array[j], ',', #124, #124)
              ELSE
                 Write(usr_array[j], ',');
           END
           ELSE
              WriteLn(usr_array[j], #125);
        END;
     END;
     Write('Vector ordenado ascendente por Seleccion: ');
     FOR i := 0 TO (n - 1) DO
     BEGIN
        IF (i = 0) THEN
           Write(#123, usr_array[i], ', ')
        ELSE
           IF (i < (n - 1)) THEN
              Write(usr_array[i], ', ')
           ELSE
              WriteLn(usr_array[i], #125);
     END;
  END
  ELSE
       WriteLn('-- ERROR: No ingreso una dimension valida, se termina el programa --');
END.      