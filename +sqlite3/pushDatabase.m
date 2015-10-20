function pushDatabase( databaseId )
%PUSHDATABASE Summary of this function goes here
%   Detailed explanation goes here
    global databaseStack;
    if (~exist('databaseStack', 'var'))
        
        databaseStack = {};
    end
    
    databaseStack = horzcat({databaseId}, databaseStack);
end

