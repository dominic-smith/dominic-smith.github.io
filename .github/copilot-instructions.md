# Copilot Instructions (Project-Specific)

This repository is an academic personal website built with Jekyll for GitHub Pages.

## Key Goals
- Maintain simple, accessible layout.
- Easy updates for publications, teaching, CV, and blog posts.
- Future expansion for citations (jekyll-scholar) and analytics.

## Tech Stack
- Jekyll via `github-pages` gem.
- GitHub Actions workflow for deployment (`pages.yml`).
- Sass for styling in `assets/css/style.scss` with partials in `_sass`.

## Editing Guidance
- Update `_config.yml` with correct `title`, `url`, and author info.
- Add posts in `_posts` using `YYYY-MM-DD-title.md` format.
- Keep alt text descriptive for images placed in `assets/img`.
- Replace placeholders marked clearly in content pages.

## Future Enhancements (Optional)
- Enable `jekyll-scholar` for publications automation.
- Add RSS customization or analytics script (avoid intrusive tracking).

## Accessibility Notes
- Skip link included; ensure heading hierarchy is preserved.
- Use semantic Markdown (lists, headings) for screen reader compatibility.

## Do Not
- Add heavy JS frameworks.
- Include personal phone numbers or sensitive data.

## Quick Start Commands
```bash
bundle install
bundle exec jekyll serve --livereload
```
