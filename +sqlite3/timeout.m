function timeout(varargin)
%TIMEOUT Set timeout value of the database connection.
%
%    sqlite3.timeout(database, millisecond)
%    sqlite3.timeout(millisecond)
%
% The timeout operation sets how long the driver should wait when the
% database is locked by other processes.

  if (length(varargin) > 1)
    libsqlite3_('timeout', varargin{:});
    return;
  end
  
  topDatabase = sqlite3.peekDatabase();
  if (~topDatabase)
    libsqlite3_('timeout', varargin{:});
    return;
  end
  
  newArgs = horzcat(sqlite3.peekDatabase(), varargin);
  libsqlite3_('timeout', newArgs{:});
end
