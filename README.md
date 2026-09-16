# Marlow investor overview, deployable

A static page. No build step, nothing to install. `index.html` plus `assets/`.

Built from `strategy/reference/SITE.html` in this kit. **Edit the source there, not here**, then
rebuild this folder, or the two drift apart and the next kit pass overwrites your edit.

## Tonight, no GitHub needed

Netlify takes a folder by drag and drop and it is live in under a minute.

1. app.netlify.com, **Add new site**, **Deploy manually**
2. Drag this whole `_live` folder onto the drop zone
3. Netlify gives you a `something-random.netlify.app` URL. Rename it under
   **Site configuration, Change site name** to something you would send to a person.

That is the fastest route to a link for Dave and it costs nothing later: the same site can be
connected to a repo afterwards without losing the URL.

## The repo

`https://github.com/dgreg42/Marlow-pitch` — **public**, which matters, see the warning below.

`push.cmd` in this folder already points at it. Open a terminal here and run it:

```
push.cmd
```

It runs `git init`, commits `index.html`, `assets/`, `netlify.toml`, `robots.txt` and this README,
sets `origin` and pushes `main`. It does not touch the brand kit repo, and it stays out of the
kit's own history: this folder gets its own `.git`.

If you would rather run it by hand:

```bash
cd "D:/00_WORK/00_Projects/00_Developer/Brand Kit/Marlow Athletic Brand Kit/web/_live"
git init
git add index.html assets netlify.toml robots.txt README.md
git commit -m "marlow investor overview, first pass"
git branch -M main
git remote add origin https://github.com/dgreg42/Marlow-pitch.git
git push -u origin main
```

Then in Netlify: **Add new site, Import an existing project**, pick `Marlow-pitch`, leave the
build command empty and the publish directory as `.`. Every push to `main` deploys.

### The repo is public

`noindex` and `robots.txt` keep the deployed page out of search. They do nothing for GitHub.
A public repo puts all 28 reference photographs on a browsable, indexable page under your name,
with the filenames intact. Make it private before the first push, in the repo's
**Settings, General, Danger Zone, Change repository visibility**. It costs nothing and Netlify
deploys from private repos the same way.

## What is in netlify.toml

`X-Robots-Tag: noindex, nofollow`, plus a `robots.txt` that disallows everything. This page is
reference photography that is not licensed for public use, so it is deliberately kept out of search
results. It is still reachable by anyone with the link. **Remove both when the real photography is
in**, and not before.

Assets are cached for a year, which is safe because a rebuild writes new filenames only if the
source images change. If you replace an image under the same name, do a hard refresh to see it.

## Rebuilding after a kit change

The page here is generated from the kit source with the images externalised, the internal banner
removed and lazy loading added below the hero. Ask Claude to rebuild `web/_live` from
`strategy/reference/SITE.html` rather than hand-editing the HTML in this folder.

## Before this goes anywhere public

- Replace or license the photography. Every frame is pulled reference.
- Fill the two clients and the Emmy category in the founders section. There is a
  `FILL BEFORE THIS GOES OUT` comment against it in the source.
- Settle the name. Marlow is a placeholder and "Athletic" is already dropped.
