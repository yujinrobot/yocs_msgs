# Control the way point/trajectory navigation
int8 status

int8 ERROR     = -1
int8 IDLING    = 0
int8 RUNNING   = 1
int8 COMPLETED = 2
int8 CANCELLED = 3

# Human-readable status description
string status_desc