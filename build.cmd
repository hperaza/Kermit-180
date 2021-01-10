.enable substitution
.sets lst ""
.sets map ""
.ask l Do you want listing files
.ift l .sets lst "/l"
.ask m Do you want a task builder map file
.ift m .sets map ",,kermit"
mac =kmit/i$'lst'
mac =kcom/i$'lst'
mac =kpkt/i$'lst'
mac =krem/i$'lst'
mac =kser/i$'lst'
mac =ktt/i$'lst'
mac =kcmd/i$'lst'
mac =kutl/i$'lst'
mac =kdat/i$'lst'
mac =ksys/i$'lst'
.open #1 link.cmd
.data #1 kermit'map'=kmit,kcom,kpkt,krem,kser,ktt,kcmd,kutl,ksys,kdat,$syslib.lib/lb/of=tsk/task=...ker/exttsk=8200/priv/xm
.close #1
tkb @link
pip link.cmd;*/de/nm
