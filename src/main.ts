import { createApp } from 'vue'
import { createRouter, createWebHistory } from 'vue-router'

import './assets/style.css'
import App from './App.vue'

const routes = [
  { path: '/', component: () => import('./pages/home-page.vue') },
  { path: '/page-a', component: () => import('./pages/page-a.vue') },
  { path: '/page-a/c', component: () => import('./pages/page-c.vue') },
]

const router = createRouter({
  history: createWebHistory((window as any).__getBase()),
  routes,
})

const app = createApp(App)

app.use(router)

app.mount('#app')
