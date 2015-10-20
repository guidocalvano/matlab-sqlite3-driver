function databaseId = peekDatabase()
%PEEKDATABASE Summary of this function goes here
%   Detailed explanation goes here
    global databaseStack;
    if (~exist('databaseStack', 'var'))
        databaseId = false;
        return;
    end
    if isempty(databaseStack)
        databaseId = false;
        return;
    end
    databaseId = databaseStack{1};
end

