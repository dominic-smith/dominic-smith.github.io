# Academic Website (Jekyll)

This is an academic personal website scaffold built for GitHub Pages using Jekyll.

## Features
- Pages: Home, Publications, Teaching, CV, Contact
- Responsive navigation with mobile toggle
- Accessible skip link and semantic structure
- Sass-based styling (`assets/css/style.scss` + `_sass` partials)
- GitHub Actions workflow for automated deployment

## Setup
Prerequisites: Ruby (>= 3.0), Bundler.

```bash
# Install dependencies
bundle install
# Serve locally
bundle exec jekyll serve --livereload
```
Local site at: http://localhost:4000

## Customization Steps
1. Edit `_config.yml` (title, url, author info).
2. Replace placeholder content in `index.md` and other pages.
3. Add images to `assets/img` with meaningful alt text.
4. Manage publications with `jekyll-scholar` (already enabled):
	- Edit `_bibliography/references.bib`.
	- Use `{% bibliography --query @article %}` in `publications.md`.
	- Inline citation example: `{% cite smith2025labor %}`.

## Deployment
Push to `main` branch; GitHub Actions (`.github/workflows/pages.yml`) builds and deploys the site.
Note: Blog functionality and posts are disabled/removed in this scaffold.

## Accessibility
- Use proper heading levels.
- Provide alt text for images.
- Avoid color-only distinctions.

## Next Ideas
- Add `jekyll-scholar` for publications.
- Add analytics (privacy-friendly) or a dark mode toggle.

## License
Content you add is yours. No explicit software license included; add one if desired.
