import express from 'express';
import cors from 'cors';
import expressJwt from 'express-jwt';

import { counterApi } from './routers/counterRouter';
import { getGames, getGamesByCategory, getComments, CreateComments } from './quereis';

const PORT = 4003;

const { JWT_SECRET = 'secret' } = process.env;

const app = express();

app.use(express.json());
app.use(cors());
// comment out this line if you want to bypass JWT check during development
// app.use(expressJwt({secret: JWT_SECRET}).unless({path: ['', '/']}));

app.get('/', (req, res) => {
    res.send('Hi there!');
})

app.get('/game', async (req, res) => {
    const games = await getGames()
    res.send(games)
})

app.get('/game/:category', async (req, res) => {
    const { category } = req.params;

    const games = await getGamesByCategory(category)
    res.send(games)
})

app.get('game/comments', async (req, res) => {
    const { gameId } = req.params;
    const idGamenumber = Number(gameId)
    const comments = await getComments(idGamenumber)
})

app.post('/comments/:gameId', async (req, res) => {
    const { comment } = (req as any).body;
    const { gameId } = req.params;
    const gameIdTemp = Number(gameId);
    const commentIsCreated = await CreateComments(gameIdTemp, comment);
    if (commentIsCreated) {
        res.send('comments is created')
    }
})

app.use('/counter', counterApi);

app.listen(PORT, () => console.log(`Server is up at ${PORT}`));