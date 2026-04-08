import express from 'express';

const app = express();

app.get('/', (req, res) => {
    res.send('tudo de boa!')
})

app.listen(3000)