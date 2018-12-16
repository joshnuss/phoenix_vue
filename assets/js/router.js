import Vue from 'vue'
import VueRouter from 'vue-router'
import { Home, Contact } from './pages'

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    name: 'home',
    component: Home
  },
  {
    path: '/contact',
    name: 'contact',
    component: Contact
  }
]

export default new VueRouter({
  mode: 'history',
  routes
})
