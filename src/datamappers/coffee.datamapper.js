import { client } from "../db/client.js";

export const coffeeDataMapper = {

    async getThreeCoffees() {
        const result = await client.query('SELECT * FROM coffee LIMIT 3');
        return result.rows;
    },
}