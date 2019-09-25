#include <bits/stdc++.h>

using namespace std;

string wrap(string &s)
{
    s = "'" + s + "'";
    return s;
}
int wrap(int const &s)
{

    return s;
}

void insertIntoPatient(int id, string name, string gender, string add, string contact, int age)
{
    // insert into PATIENT values (1, 'Dipta Das', 'Male', 'Niketon' ,'01234567', 23);
    cout << "insert into PATIENT values ("
         << wrap(id) << ", "
         << wrap(name) << ", "
         << wrap(gender) << ", "
         << wrap(add) << ", "
         << wrap(contact) << ", "
         << wrap(age)
         << ");\n";
}

int main()
{
    // freopen("output.sql", "w", stdout);

    insertIntoPatient(2, "Dipta", "Male", "Niketon", "123", 23);

    return 0;
}
