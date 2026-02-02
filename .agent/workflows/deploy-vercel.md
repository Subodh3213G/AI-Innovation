---
description: Deploy Sahayak to Vercel
---

# Deploy Sahayak to Vercel

This workflow will deploy your Sahayak voice assistant app to Vercel.

## Prerequisites
- Git repository initialized (already done ✓)
- Vercel account (free tier is fine)

## Steps

### 1. Install Vercel CLI globally
```bash
npm install -g vercel
```

### 2. Login to Vercel
```bash
vercel login
```
This will open a browser window to authenticate.

### 3. Build the project locally (optional - to verify)
```bash
npm run build
```

### 4. Deploy to Vercel
```bash
vercel
```
Follow the prompts:
- **Set up and deploy**: Yes
- **Which scope**: Choose your account
- **Link to existing project**: No (first time)
- **Project name**: sahayak-web (or press Enter for default)
- **Directory**: ./ (press Enter)
- **Override settings**: No (Next.js auto-detected)

### 5. Deploy to Production
After the preview deployment works, deploy to production:
```bash
vercel --prod
```

## Alternative: Deploy via GitHub (Recommended for continuous deployment)

### 1. Push your code to GitHub
```bash
git add .
git commit -m "Prepare for Vercel deployment"
git push origin main
```

### 2. Go to Vercel Dashboard
- Visit https://vercel.com
- Click "New Project"
- Import your GitHub repository
- Vercel will auto-detect Next.js settings
- Click "Deploy"

### 3. Your app will be live!
Vercel will provide you with a URL like: `https://sahayak-web.vercel.app`

## Post-Deployment

### Test on Mobile
Your app will automatically have HTTPS, so microphone access will work on mobile devices. Share the Vercel URL with users to test voice commands!

### Environment Variables (if needed)
If you add any API keys later, you can set them in:
- Vercel Dashboard → Project → Settings → Environment Variables

## Troubleshooting

### Build fails
- Check `npm run build` works locally first
- Review build logs in Vercel dashboard

### API Routes not working
- Ensure files are in `app/api/` directory
- Check Vercel function logs in dashboard
