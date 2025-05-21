import { client } from "../db/client.js";

export const countryDataMapper = {

    async getById(id) {
        const result = await client.query(`SELECT * FROM country WHERE id = $1`, [id]);
        return result.rows[0] || null;
    },

}