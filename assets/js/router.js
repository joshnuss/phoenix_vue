import Vue from 'vue'
import VueRouter from 'vue-router'
import { Home, Contact } from './pages'

Vue.use(VueRouter)

const routes = [
  { path: '/', component: Home },
  { path: '/contact', component: Contact }
]

export default new VueRouter({
  mode: 'history',
  routes
})
