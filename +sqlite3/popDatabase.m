function databaseId = popDatabase()
%POPDATABASE Summary of this function goes here
%   Detailed explanation goes here

    global databaseStack;

    databaseId = sqlite3.peekDatabase();
    if ~databaseId
        return;
    end
    databaseStack = databaseStack(2:end);

end

