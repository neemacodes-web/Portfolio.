# Neema Wilfred — Portfolio

Polished portfolio site showcasing web development, data science, and IoT projects.

Contents
- `src/` — React + Vite source
- `public/` — static assets (place `Neema_Wilfred_CV.pdf` here)

Quick start
1. Install dependencies:

```bash
npm install
```

2. Run dev server:

```bash
npm run dev
# open http://localhost:5176/
```

3. Build for production:

```bash
npm run build
```

Deployment
- This repo includes `vercel.json` and `netlify.toml` for easy deploy to Vercel or Netlify.
- See `README.share.md` for detailed share & deploy steps.

Notes
- Before deploying, replace `public/Neema_Wilfred_CV.pdf` with your real CV (same filename).
- The contact form supports Netlify Forms and an optional `VITE_FORM_ENDPOINT` for Formspree.

Contact
- Email: neemawilfrd112@gmail.com
# React + Vite

This template provides a minimal setup to get React working in Vite with HMR and some ESLint rules.

Currently, two official plugins are available:

- [@vitejs/plugin-react](https://github.com/vitejs/vite-plugin-react/blob/main/packages/plugin-react) uses [Oxc](https://oxc.rs)
- [@vitejs/plugin-react-swc](https://github.com/vitejs/vite-plugin-react/blob/main/packages/plugin-react-swc) uses [SWC](https://swc.rs/)

## React Compiler

The React Compiler is enabled on this template. See [this documentation](https://react.dev/learn/react-compiler) for more information.

Note: This will impact Vite dev & build performances.

## Expanding the ESLint configuration

If you are developing a production application, we recommend using TypeScript with type-aware lint rules enabled. Check out the [TS template](https://github.com/vitejs/vite/tree/main/packages/create-vite/template-react-ts) for information on how to integrate TypeScript and [`typescript-eslint`](https://typescript-eslint.io) in your project.

## Contact form setup

This project supports direct form delivery through Formspree.

1. Create a new form on https://formspree.io/ and copy your form endpoint (example: `https://formspree.io/f/yourFormId`).
2. Add the endpoint to a local `.env` file in the project root:

```env
VITE_FORM_ENDPOINT="https://formspree.io/f/yourFormId"
```

3. Restart the dev server:

```powershell
npm.cmd run dev
```

Once configured, form submissions will be sent directly instead of falling back to the email client.
