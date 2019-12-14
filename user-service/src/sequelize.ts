import {Sequelize} from 'sequelize-typescript';
import { config } from './config/config';


const c = config.dev;
console.log('config ' , c)

// Instantiate new Sequelize instance!
export const sequelize = new Sequelize({
  "username": c.username,
  "password": c.password,
  "database": c.database,
  "host": c.host,
  dialect: 'postgres',
});

console.log(process.env.POSTGRESS_HOST);


