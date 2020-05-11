from subprocess import Popen, PIPE
# function that takes the sqlCommand and connectString and returns the queryReslut and errorMessage (if any)
def runSqlQuery(sqlCommand, connectString):
   session = Popen(['sqlplus', '-S', connectString], stdin=PIPE, stdout=PIPE, stderr=PIPE)
   session.stdin.write(sqlCommand)
   session.stdin.close()
   return session.communicate()

passwd = input('Enter the password: \n')
connectString = 'vbp2538/' + passwd + '@acaddbprod-1.uta.edu:1523/pcse1p.data.uta.edu'

# initial clean up. 
sqlCommand = b'@Delete_table.sql'
status = runSqlQuery(sqlCommand, connectString)
if len(status[0].decode().split('ERROR:')) >= 2:
       if status[0].decode().split('ERROR:')[1].find('ORA-12170: TNS:Connect timeout occurred'):
              print('Not connected to V.P.N')
              exit()
       else:
              print(status[0].decode().split('ERROR:')[1])
else:
       print('clean up done')

# initial table creation. 
sqlCommand = b'@Table_creation.sql'
runSqlQuery(sqlCommand, connectString)
print('table creation done')

#inserting records from script.
sqlCommand = b'@initial_setup_insertions.sql'
runSqlQuery(sqlCommand, connectString)
print('initial records inserted')

# Employee Data loading 
fp = open('Employee_data.txt','r')
fp_spool = open('spool_data/question_2.txt','a')
fp_spool.write('\nLoading additional employee data\n')
for i in fp.readlines():
       sqlCommand = 'INSERT INTO EMPLOYEE VALUES(' + i + ');'
       sqlCommand = bytes(sqlCommand,'utf-8')
       logger = runSqlQuery(sqlCommand, connectString)
       fp_spool.write(logger[0].decode())
fp.close()
fp_spool.close()

# Project Data loading 
fp = open('Project_data.txt','r')
fp_spool = open('spool_data/question_2.txt','a')
fp_spool.write('\nLoading additional project data\n')
for i in fp.readlines():
       sqlCommand = 'INSERT INTO PROJECT VALUES(' + i + ');'
       sqlCommand = bytes(sqlCommand,'utf-8')
       logger = runSqlQuery(sqlCommand, connectString)
       fp_spool.write(logger[0].decode())
fp.close()
fp_spool.close()

# Works_on Data loading 
fp = open('Works_on_data.txt','r')
fp_spool = open('spool_data/question_2.txt','a')
fp_spool.write('\nLoading additional WORKS_ON data\n')
for i in fp.readlines():
       sqlCommand = 'INSERT INTO WORKS_ON VALUES(' + i + ');'
       sqlCommand = bytes(sqlCommand,'utf-8')
       logger = runSqlQuery(sqlCommand, connectString)
       fp_spool.write(logger[0].decode())
fp.close()
fp_spool.close()

# Works_on Data loading 
fp = open('Dependent_data.txt','r')
fp_spool = open('spool_data/question_2.txt','a')
fp_spool.write('\nLoading additional DEPENDENT data\n')
for i in fp.readlines():
       sqlCommand = 'INSERT INTO DEPENDENT VALUES(' + i + ');'
       sqlCommand = bytes(sqlCommand,'utf-8')
       logger = runSqlQuery(sqlCommand, connectString)
       fp_spool.write(logger[0].decode())
fp.close()
fp_spool.close()

# Section II script execution
sqlCommand = b'@Section_2_3.sql'
runSqlQuery(sqlCommand, connectString)
print('Finished executing section 2_3 queries')

sqlCommand = b'@Section_2_4.sql'
runSqlQuery(sqlCommand, connectString)
print('Finished executing section 2_4 queries')

sqlCommand = b'@Question_5.sql'
runSqlQuery(sqlCommand, connectString)
print('Finished executing Question_5 queries')

sqlCommand = b'@Question_6.sql'
runSqlQuery(sqlCommand, connectString)
print('Finished executing Question_6 queries')

sqlCommand = b'@Question_7.sql'
runSqlQuery(sqlCommand, connectString)
print('Finished executing Question_7 queries')

del fp,fp_spool
del connectString