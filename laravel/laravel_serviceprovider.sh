# 1. 在Laravel中, ServiceProvider是框架的核心组件之一, 用于服务注册和启动逻辑的引导
# 几乎所有Laravel的核心服务(如数据库、队列、缓存、认证等)都是通过 ServiceProvider 注册进来的

# 2. 什么是 ServiceProvider?
# ServiceProvider 是 Laravel 用来将服务(类、功能模块)注册到服务容器(IoC Container)中的机制

# 3. register(): 只负责绑定对象或服务, 不应访问服务
public function register(){}

