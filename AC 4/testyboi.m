i = 0.1
j = 0.1
while i < 50
    fileId = fopen("results.txt", 'a');

    while j < 50
        s1 = i;
        s2 = j;
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
        end
        success_flag = 1;
        try
            sim("SinMandani");
        catch
            success_flag = 0;
        end
        formatSpec = 'sin %6s %6s %6s\n';
        if success_flag
            fprintf(fileId, formatSpec, s1, s2, max(err_series));
        end
        
        success_flag = 1;
        try
            sim("SquareMandani");
        catch
            success_flag = 0;
        end
        formatSpec = 'square %6s %6s %6s\n';
        if success_flag
            fprintf(fileId, formatSpec, s1, s2, max(err_series));
        end
        
        success_flag = 1;
        try
        sim("SawToothMandani");
        catch
            success_flag = 0;
        end
        formatSpec = 'saw %6s %6s %6s\n';
        if success_flag
            fprintf(fileId, formatSpec, s1, s2, max(err_series));
        end
        
        j = j * 1.1
        i
    end
    i = i * 1.5;
    j = 0.1;
    fclose(fileId);
end
