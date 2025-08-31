// vite.config.js
import { defineConfig } from 'vite'
import { resolve } from 'path'

export default defineConfig({
  base: '/bank-model/',       // GitHub Pages project base
  server: { open: true },
  build: {
    outDir: 'docs',
    rollupOptions: {
      input: {
        main: resolve(__dirname, 'index.html'),
        throughput: resolve(__dirname, 'throughput.html'),
        risk: resolve(__dirname, 'risk.html'),
        value: resolve(__dirname, 'value.html'),
      }
    }
  }
})
