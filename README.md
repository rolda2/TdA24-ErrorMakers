# ENV
z env.examle

# GIT ACTIONS (for Ondra)

```bash
# potom co udělam changes, tak:
git add -A
git commit -m "message"
git push -u origin Ondra #nebo prostě jméno branche
```

## Developing

# Api

```bash
cd src/lib/api
go run main.go
```

# Client

```bash
npm run dev

# or start the server and open the app in a new browser tab
npm run dev -- --open
```

## Building

To create a production version of your app:

```bash
npm run build
```

You can preview the production build with `npm run preview`.

> To deploy your app, you may need to install an [adapter](https://kit.svelte.dev/docs/adapters) for your target environment.
