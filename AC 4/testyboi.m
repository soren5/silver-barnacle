values = [0.01, 0.05, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 20, 30, 40, 50, 60];
i = 1;
j = 1;
while s1 < 50
    fileId = fopen("results.txt", 'a');
    while s2 < 50
        s1 = values(i);
        s2 = values(j);
        fis = 0;
        for fis_mode = 1:4
            if fis_mode == 1
                fis = readfis('fismamdani3.fis');
            elseif fis_mode == 2
                fis = readfis('fismamdani5.fis');
            elseif fis_mode == 3
                fis = readfis('fissugeno3.fis');
            elseif fis_mode == 4
                fis = readfis('fissugeno5.fis');
            end
            
            success_flag = 1;
            try
                sim("SinMandani");
            catch
                disp("Error SIN in simulation")
                success_flag = 0;
            end
            formatSpec = 'sin %6s %6s %d %6s\n';
            if success_flag
                fprintf(fileId, formatSpec, s1, s2, fis_mode, max(err_series));
            end
            disp("a");
            
            success_flag = 1;
            try
                sim("SquareMandani");
            catch
                disp("Error SQUARE in simulation")
                success_flag = 0;
            end
            formatSpec = 'square %6s %6s %d %6s\n';
            if success_flag
                fprintf(fileId, formatSpec, s1, s2, fis_mode, max(err_series));
            end
            disp("b");


            success_flag = 1;
            try
            sim("SawToothMandani");
            catch
                disp("Error SAWTOOTH in simulation")
                success_flag = 0;
            end
            formatSpec = 'saw %6s %6s %d %6s\n';
            if success_flag
                fprintf(fileId, formatSpec, s1, s2, fis_mode, max(err_series));
            end
            disp("c");
        end
        j = j + 1;
        s1
        s2
    end
    i = i + 1;
    j = 1;
    fclose(fileId);
end
