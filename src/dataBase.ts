//@ts-ignore
import * as mysql from 'mysql2/promise';

export const gamesData = mysql.createPool({
    host: 'localhost',
    user: 'root',
    password: '123456789',
    database: 'gamesresults'
})



// console.log(trips)

