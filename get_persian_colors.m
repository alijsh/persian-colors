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
colors = readtable("persian-colors.scss", opts);
persian_colormap = (sscanf(join(colors.Value),'#%2x%2x%2x; ',[3,height(colors)]).' / 255);
save("persian_colormap.mat","persian_colormap")
fID = fopen("persian_colors.m","w");
for i = 1:height(colors)
    fprintf(fID,"%s=",extractAfter(colors(i,:).Name,1));
    fprintf(fID,"[%g,%g,%g];\n",sscanf(colors(i,:).Value,'#%2x%2x%2x',[3,1]).' / 255);
end
fclose(fID);