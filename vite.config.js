import { defineConfig } from 'vite'
export default defineConfig({
base: '/The_Bank/'
server: { open: true },
build: { outDir: 'docs' }
})
