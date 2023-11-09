import { sveltekit } from '@sveltejs/kit/vite';
import { defineConfig } from 'vite';

export default defineConfig({
	plugins: [sveltekit()],
	server: {
		port: 80,
		proxy: {
			'/api': 'http://localhost:5174'
		}
	}
});
