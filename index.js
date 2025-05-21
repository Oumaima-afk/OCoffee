import express from 'express';
import { mainRouter } from './src/routes/main.routes.js';

const app = express();
const PORT = process.env.PORT || 3000;

app.set('view engine', 'ejs');
app.set('views', './src/views');

app.use(express.static('public'));

app.use(mainRouter);

app.listen(PORT, () => {
    console.log(`Server is running on http://localhost:${PORT}`)
});