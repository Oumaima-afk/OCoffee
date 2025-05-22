import { client } from "../db/client.js";

export const coffeeDataMapper = {

    async getThreeCoffees() {
        const result = await client.query('SELECT * FROM coffee LIMIT 3');
        return result.rows;
    },

    async getAll() {
        const result = await client.query('SELECT * FROM coffee');
        return result.rows;
    },

    async getById(id) {
        const result = await client.query('SELECT * FROM coffee WHERE id = $1', [id]);
        return result.rows[0];
    },

    async getByCoffeeId(coffeeId) {
        const result = await client.query(`
            SELECT characteristic.name 
            FROM characteristic
            JOIN coffee_characteristic
            ON characteristic.id = coffee_characteristic.characteristic_id
            JOIN coffee
            ON coffee_characteristic.coffee_id = coffee.id
            WHERE coffee.id = $1
            `, [coffeeId]);
        return result.rows;
    }
}