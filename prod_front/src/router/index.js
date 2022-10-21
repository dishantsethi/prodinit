import Vue from 'vue'
import VueRouter from 'vue-router'
import HomeView from '../views/HomeView'
import DishantView from '../views/DishantView'

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    name: 'home',
    component: HomeView
  },
  {
    path: '/dishant',
    name: 'dishant',
    component: DishantView
  },
  {
    path: "*",
    name: "Error",
    component: () =>
      import( /* webpackChunkName: "about" */ "../views/ErrorView.vue")
  }
]

const router = new VueRouter({
  routes,
  mode: 'history'
})

export default router
