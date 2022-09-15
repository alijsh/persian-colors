opts = delimitedTextImportOptions("NumVariables", 2);
opts.DataLines = [1, Inf];
opts.Delimiter = [" ", ":"];
opts.VariableNames = ["Name", "Value"];
opts.VariableTypes = ["string", "string"];
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";
opts.ConsecutiveDelimitersRule = "join";
opts = setvaropts(opts, ["Name", "Value"], "WhitespaceRule", "preserve");
opts = setvaropts(opts, ["Name", "Value"], "EmptyFieldRule", "auto");
colors = readtable("C:\Users\agholiza\Documents\persian-colors\persian-colors.scss", opts);
fID = fopen("persian_colors.m","w");
for i = 1:height(colors)
    fprintf(fID,"%s=",extractAfter(colors(i,:).Name,1));
    fprintf(fID,"[%g,%g,%g];\n",sscanf(colors(i,:).Value,'#%2x%2x%2x',[3,1]).' / 255);
end
fclose(fID);