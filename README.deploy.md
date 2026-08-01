Deployment & CV instructions

1) Add your real CV
- Place your PDF in the `public/` folder and name it exactly:

  Neema_Wilfred_CV.pdf

- Replace the placeholder file currently in `public/`.

2) Local preview
- Install dependencies and run dev server:

```bash
npm install
npm run dev
```

3) Deploy to Vercel (recommended)
- Push this repo to GitHub.
- Sign in to https://vercel.com and import the GitHub repo.
- Use default Vite settings; build command: `npm run build`, output: `dist`.

4) Deploy to Netlify
- Connect your Git repo at https://app.netlify.com.
- Build command: `npm run build`, publish directory: `dist`.

5) Sharing the live site
- Once deployed, copy the production URL and use it in emails or your social profiles.

6) Want me to deploy for you?
- I can prepare a `vercel.json` or guide you step-by-step. I cannot deploy without access to your GitHub and Vercel account — provide access or deploy yourself and paste the URL here.
