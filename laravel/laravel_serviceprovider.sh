# 1. 在Laravel中, ServiceProvider是框架的核心组件之一, 用于服务注册和启动逻辑的引导
# 几乎所有Laravel的核心服务(如数据库、队列、缓存、认证等)都是通过 ServiceProvider 注册进来的

# 2. 什么是 ServiceProvider?
# ServiceProvider 是 Laravel 用来将服务(类、功能模块)注册到服务容器(IoC Container)中的机制

# 3. register(): 只负责绑定对象或服务, 不应访问服务
# 绑定服务到容器中, 只执行一次, 适合注册类或单例
public function register(){}

# 4. boot(): 在所有服务注册完毕后执行, 可以访问服务容器中的任何对象
# 引导服务, 例如加载路由、事件监听器、发布配置等
public function boot(){}

# 5. 启用一个自定义 Provider
# 5.1 创建 Provider
php artisan make:provider MyServiceProvider

# 5.2 注册到 config/app.php
'providers' => [
    App\Providers\MyServiceProvider::class,
],

# 6. 生命周期顺序
# 6.1 Laravel 启动应用
# 6.2 加载配置文件

