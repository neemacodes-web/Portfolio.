How to share this site (quick)

1) Quick public URL (recommended): Vercel
- Push your repo to GitHub.
- Go to https://vercel.com and "Import Project" from GitHub.
- Select this repo, use default settings. Vercel will detect `package.json` and run `npm run build`.
- After deploy, you'll get a public URL you can send to people.

2) Alternative: Netlify
- Push repo to GitHub.
- Go to https://app.netlify.com/sites/new and import from GitHub.
- Set build command: `npm run build` and publish directory: `dist`.
- Deploy and copy the public URL.

Viewing form submissions (Netlify):
- In the Netlify dashboard, open your site and go to "Forms" to see collected submissions.
- Netlify stores submissions and lets you download CSV or connect webhooks.

Using Netlify Forms with this project:
- The contact form is already marked with `data-netlify="true"` and `name="contact"`.
- Deploying to Netlify will automatically capture submissions without extra server code.

3) Fast manual share (no GitHub)

3) Fast manual share (no GitHub)
- Run `npm run build` locally.
- Zip the `dist/` folder and upload it to any static hosting (Netlify Drag & Drop, Surge.sh, or a simple file server).
- Or upload `dist/` to a small S3 bucket + CloudFront.

4) Share by email / message
Use these templates to send to clients or reviewers.

English (short):
Subject: Portfolio — Neema Wilfred
Hi [Name],
I’d love your feedback on my portfolio: [LIVE_URL]
Could you take a look and let me know if this fits [project/role]? Thanks!

Swahili (short):
Subject: Portfolio — Neema Wilfred
Habari [Jina],
Ningependa maoni yako kuhusu tovuti yangu: [LIVE_URL]
Je, unaweza kuangalia na kunipa maoni? Asante!

5) Notes
- Make sure `public/Neema_Wilfred_CV.pdf` is your real CV before deploying.
- If you prefer Formspree instead of Netlify Forms:
	- Create a Formspree form and copy the form endpoint (e.g. `https://formspree.io/f/yourId`).
	- Add `VITE_FORM_ENDPOINT="https://formspree.io/f/yourId"` to a `.env` file at the project root (used at build time).
	- With `VITE_FORM_ENDPOINT` set, the site will POST via JS to Formspree and you can view submissions in the Formspree dashboard.
- If you want, I can prepare the GitHub repo and deploy to Vercel or Netlify for you — share repo access or grant me collaborator access.
