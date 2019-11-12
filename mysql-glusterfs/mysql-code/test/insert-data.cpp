#include <iostream>
#include <mysql/mysql.h>
#include <string>
#include <cstdio>
using namespace std;

int main()
{
    MYSQL mysql;
    mysql_init(&mysql);
    mysql_real_connect(&mysql, "mysql-0.glusterfs.default.svc.cluster.local", "root", "password", "test", 3306, NULL, 0);
    for (int i = 0; i<1000; i++) {
        char name[30];
        char sql[100];
        sprintf(name, "zhangsan%d", i);
        sprintf(sql, "insert into table_test (name,age) values ('%s',%d);", name, i%10 + 10);
        mysql_query(&mysql, sql);
    }
    mysql_close(&mysql);
    return 0;
}
