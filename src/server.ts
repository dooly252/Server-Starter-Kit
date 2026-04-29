import express, { Express, Request, Response } from 'express';
import cors from 'cors';
import dotenv from 'dotenv';
import healthRouter from './routes/health';

dotenv.config();

const app: Express = express();
const port = process.env.PORT || 3000;

app.use(cors());
app.use(express.json());

app.use('/api/health', healthRouter);

app.get('/', (req: Request, res: Response) => {
  res.json({ message: 'Welcome to Node.js API Server' });
});

app.listen(port, () => {
  console.log(`✅ Server running at http://localhost:${port}`);
});
