Option Compare Database


Public Function CleanDemo()

Dim myInput As Recordset
Dim MyOutput As Recordset

Dim MYDB As Database

Set MYDB = CurrentDb()



'Change Employee Names and emails

Set myInput = MYDB.OpenRecordset("dbo_CompanyEmployee", dbOpenDynaset, dbSeeChanges)
Set MyOutput = MYDB.OpenRecordset("locFictionalSalesReps", dbOpenDynaset, dbSeeChanges)

myInput.MoveFirst
MyOutput.MoveFirst
Debug.Print "Employees"
Do Until myInput.EOF Or MyOutput.EOF
    myInput.Edit
    myInput!FN = MyOutput!FN
    myInput!LN = MyOutput!LN
    myInput!Email = "demo@axismis.com"
    myInput.Update
    myInput.MoveNext
    MyOutput.MoveNext
Loop

myInput.Close
MyOutput.Close


'Change Contact Company names to fictional names
Set myInput = MYDB.OpenRecordset("dbo_ContactGeneral", dbOpenDynaset, dbSeeChanges)
Set MyOutput = MYDB.OpenRecordset("locFictionalCompanies", dbOpenDynaset, dbSeeChanges)

myInput.MoveFirst
MyOutput.MoveFirst

Debug.Print "CompanyNames"
Do Until myInput.EOF
    myInput.Edit
    myInput!CompName = MyOutput!CompanyName
    myInput!OperatingAs = MyOutput!CompanyName
    myInput.Update
    myInput.MoveNext
    MyOutput.MoveNext
    If MyOutput.EOF Then MyOutput.MoveFirst
Loop

myInput.Close
MyOutput.Close


'Change locations to generic Toronto address
Set myInput = MYDB.OpenRecordset("dbo_ContactLocation", dbOpenDynaset, dbSeeChanges)

myInput.MoveFirst
myCounter = 101

Debug.Print "ContactLocations"

Do Until myInput.EOF
    myInput.Edit
    myInput!Add1 = str(myCounter) & " Any Street NW"
    myInput!Add2 = ""
    myInput!City = "Toronto"
    myInput!Prov = "ON"
    myInput!PC = "M4L 2N9"
    myInput!PhMain = "111-111-1111"
    myInput!PhFax = "222-222-2222"
    myInput!PhTollFree = "888-888-8888"
    myCounter = myCounter + 1
    myInput.Update
    myInput.MoveNext
Loop

myInput.Close
'MyOutput.Close

'Change contact names to fictional name, generic phone numbers and emails.
Set myInput = MYDB.OpenRecordset("dbo_ContactName", dbOpenDynaset, dbSeeChanges)
Set MyOutput = MYDB.OpenRecordset("locFictionalContactNames", dbOpenDynaset, dbSeeChanges)

myInput.MoveFirst
MyOutput.MoveFirst
Debug.Print "Contact Names"
Do Until myInput.EOF
    myInput.Edit
    myInput!FN = MyOutput!FN
    myInput!LN = MyOutput!LN
    myInput!PhDirect = "111-111-1111"
    myInput!PhExt = ""
    myInput!PhFax = "222-222-2222"
    myInput!PhMobile = "333-333-3333"
    myInput!Email = "demo@axismis.com"
    
    myInput.Update
    myInput.MoveNext
    MyOutput.MoveNext
    If MyOutput.EOF Then MyOutput.MoveFirst
    
Loop

myInput.Close
MyOutput.Close


Debug.Print "...Done"
End Function