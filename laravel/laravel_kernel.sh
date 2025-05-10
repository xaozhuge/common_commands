# 1.  是Laravel应用中用于注册和调度 HTTP中间件 的核心类, 负责处理HTTP请求的整个生命周期
# 在Laravel框架中, 这是请求进入应用的第一站
app/Http/Kernel.php

# 2. 包括
# 2.1 全局中间件: 所有请求都会执行
# 2.2 路由中间件组: 比如 web 和 api
# 2.3 路由中间件别名: 比如 auth, 可用于单个路由

# 3. 全局中间件-所有请求都会走
protected $middleware = [
    \App\Http\Middleware\TrustProxies::class,
];

# 4. 中间件组-通过 Route::middleware('web') 指定
protected $middlewareGroups = [
    'web' => [
        \App\Http\Middleware\EncryptCookies::class,
    ],
    'api' => [
        'throttle:api',
    ],
];

# 5. 路由中间件别名-可用于单个路由, 如 Route::middleware('auth')
protected $routeMiddleware = [
    'auth' => \App\Http\Middleware\Authenticate::class,
];

# 6. 自定义中间件
# 6.1 创建中间件
php artisan make:middleware CheckRole
# 6.2 在 Kernel.php 中注册别名
'role' => \App\Http\Middleware\CheckRole::class,
# 6.3 使用
Route::middleware('role')

