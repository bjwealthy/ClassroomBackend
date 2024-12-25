
import mysql from 'mysql';

const con = mysql.createConnection({
    // host: 'localhost',
    // user: 'root',
    // password: '',
    // database: 'studentms'

    host: 'sql8.freemysqlhosting.net',
    user: 'sql8753965',
    password: 'dhdKH9IB98',
    //database: 'studentms',
    database: 'sql8753965',
    port: '3306',
})

con.connect(function(err){
    if(err){
        console.log('db wahala dey')
        return;
    }else{
        console.log('server connected to mysql db and doing fine')
    }
})

export default con;

/*
import mysql from 'mysql';
const connection = mysql.createConnection({
    host: 'localhost',     // host for connection
    port: 3306,            // default port for mysql is 3306
    database: 'studentms',      // database from which we want to connect our node application
    user: 'root',          // username of the mysql connection
    password: ''       // password of the mysql connection
});

// executing connection
connection.connect(function(err) {
    if (err) {
        console.log("error occurred while connecting");
    } else {
        console.log("connection created with mysql successfully");
    }
});
export default connection;
*/