Netlify deployment & forms

1. Create a Netlify account and connect your GitHub repository:
   - Go to https://app.netlify.com/ and sign up/in.
   - Click "New site from Git" → choose Git provider (GitHub) → select repository.

2. Build settings (Netlify will suggest):
   - Build command: `npm run build`
   - Publish directory: `dist`

3. Forms capture:
   - `src/contact.jsx` includes `data-netlify="true"` and `form-name="contact"` so Netlify will capture submissions automatically after deployment.
   - No extra server code required.

4. Viewing submissions:
   - In Netlify dashboard choose your site → "Forms" tab. Submissions will appear there.
   - To receive email notifications: open the form in Netlify dashboard and enable email notifications under form settings.

5. Testing on production:
   - Deploy the site.
   - Fill the contact form and submit — wait a few moments then check Netlify Forms.

6. Optional: webhook or email forwarding
   - Netlify Forms supports webhooks and integrations (e.g., Slack, Zapier). Configure them in form settings.

7. Troubleshooting
   - If submissions don't appear: ensure `index.html` in `dist` contains the form and that the deployed site is the latest build.
   - Netlify may not capture submissions for local dev; test on the deployed site.
