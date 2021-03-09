import { gamesData } from './dataBase'

export async function getGames() {
    const [games] = await gamesData.execute('SELECT * FROM games');
    return games
}

export async function getGamesByCategory(category: string) {
    const [games] = await gamesData.execute('SELECT * FROM games  WHERE gameId = ?', [category]);
    return games;
}

export async function getComments(gameId: number){
    const [comments] = await gamesData.execute('SELECT * FROM comments WHERE gameId=?', [gameId]);
    return comments
}

export async function CreateComments(gameId:number, comment: any): Promise<boolean>{
    const [{insertId: isCommentAdded}] = await gamesData.execute('SET INTO comments (gameId, comment)VALUE (?,?)',[gameId, comment]);
    return isCommentAdded
}