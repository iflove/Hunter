.class public final Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;
.super Ljava/lang/Object;
.source "H5PagePreloader.java"


# static fields
.field private static a:Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl;

.field private static b:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

.field private static c:Z

.field private static d:Z

.field private static e:Landroid/app/Activity;

.field private static f:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->c:Z

    .line 37
    sput-boolean v0, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->d:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method static synthetic a(Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0
    .param p0, "x0"    # Landroid/app/Activity;

    .line 31
    sput-object p0, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->e:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl;)Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl;

    .line 31
    sput-object p0, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->a:Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl;

    return-object p0
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;)Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    .line 31
    sput-object p0, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->b:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    return-object p0
.end method

.method static synthetic a()V
    .locals 0

    .line 31
    invoke-static {}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->g()V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 31
    invoke-static {p0}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static abandon()V
    .locals 2

    .line 119
    const-string v0, "H5PagePreloader"

    const-string v1, "abandon preload h5page"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->c:Z

    .line 121
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->a:Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl;

    .line 122
    sput-object v0, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->b:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    .line 123
    return-void
.end method

.method static synthetic b()Landroid/content/BroadcastReceiver;
    .locals 1

    .line 31
    sget-object v0, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->f:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)V
    .locals 6
    .param p0, "exception"    # Ljava/lang/String;

    .line 152
    :try_start_0
    const-string v0, "com.alipay.mobile.liteprocess.perf.PerformanceLogger"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 153
    const-string v1, "logH5PreloadException"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    move-object v3, v1

    .line 154
    .local v3, "logMethod":Ljava/lang/reflect/Method;
    move-object v3, v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 155
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p0, v0, v5

    invoke-virtual {v3, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    nop

    .end local v3    # "logMethod":Ljava/lang/reflect/Method;
    return-void

    .line 156
    :catchall_0
    move-exception v0

    .line 159
    return-void
.end method

.method static synthetic c()Landroid/app/Activity;
    .locals 1

    .line 31
    sget-object v0, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->e:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic d()Z
    .locals 1

    .line 31
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->c:Z

    return v0
.end method

.method static synthetic e()Ljava/lang/Object;
    .locals 1

    .line 31
    invoke-static {}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->h()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static f()V
    .locals 4

    .line 65
    const-string v0, "H5PagePreloader"

    const-string v1, "registerUcInitSuccessReceiver"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    sget-object v0, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->f:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 67
    return-void

    .line 70
    :cond_0
    new-instance v0, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader$1;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->f:Landroid/content/BroadcastReceiver;

    .line 81
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->f:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "h5_action_uc_init_finish"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 83
    return-void
.end method

.method private static g()V
    .locals 2

    .line 86
    const-string v0, "H5PagePreloader"

    const-string v1, "preloadH5Page enter"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    sget-boolean v1, Lcom/alipay/mobile/h5container/api/H5Flag;->ucReady:Z

    if-nez v1, :cond_0

    .line 88
    invoke-static {}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->f()V

    .line 89
    return-void

    .line 91
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->isBackgroundRunning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 92
    return-void

    .line 94
    :cond_1
    const-string v1, "preloadH5Page do preload"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    new-instance v0, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader$2;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader$2;-><init>()V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 116
    return-void
.end method

.method public static getPreloadedViewHolder(Landroid/os/Bundle;)Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;
    .locals 7
    .param p0, "params"    # Landroid/os/Bundle;

    const-string v0, "create_page"

    .line 163
    const/4 v1, 0x0

    :try_start_0
    sget-boolean v2, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->d:Z

    if-nez v2, :cond_0

    .line 164
    return-object v1

    .line 166
    :cond_0
    sget-boolean v2, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->c:Z

    if-nez v2, :cond_3

    sget-object v2, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->b:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    if-nez v2, :cond_1

    goto :goto_0

    .line 169
    :cond_1
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v2

    move-object v3, v1

    .line 170
    .local v3, "h5Page":Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
    move-object v3, v2

    if-nez v2, :cond_2

    .line 171
    return-object v1

    .line 173
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 174
    .local v4, "time":J
    invoke-virtual {v3, p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->setUpPage(Landroid/os/Bundle;)V

    .line 175
    const-string v2, "h5Page.setUpPage"

    invoke-static {v0, v2, v4, v5}, Lcom/alipay/mobile/nebulacore/util/H5TimeUtil;->timeLog(Ljava/lang/String;Ljava/lang/String;J)V

    .line 176
    sget-object v2, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->a:Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl;

    sget-object v6, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->b:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v2, v6, p0}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl;->setUpPage(Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;Landroid/os/Bundle;)V

    .line 177
    const-string v2, "h5PageFactory.setUpPage"

    invoke-static {v0, v2, v4, v5}, Lcom/alipay/mobile/nebulacore/util/H5TimeUtil;->timeLog(Ljava/lang/String;Ljava/lang/String;J)V

    .line 178
    sget-object v0, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->b:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    .line 179
    .local v0, "viewHolder":Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;
    sput-object v1, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->b:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    .line 180
    sput-object v1, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->a:Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl;

    .line 181
    sput-object v1, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->e:Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    return-object v0

    .line 167
    .end local v0    # "viewHolder":Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;
    .end local v3    # "h5Page":Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
    .end local v4    # "time":J
    :cond_3
    :goto_0
    return-object v1

    .line 183
    :catchall_0
    move-exception v0

    .line 184
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v2, "H5PagePreloader"

    const-string v3, "set up preloaded H5Page error!"

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 185
    const-string v2, "set_up_page_error"

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->b(Ljava/lang/String;)V

    .line 186
    return-object v1
.end method

.method private static h()Ljava/lang/Object;
    .locals 7

    .line 235
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    move-object v2, v0

    .line 236
    .local v2, "activityThreadClass":Ljava/lang/Class;
    move-object v2, v1

    const-string v3, "currentActivityThread"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    move-object v3, v0

    .line 237
    .local v3, "currentActivityThreadMethod":Ljava/lang/reflect/Method;
    move-object v3, v1

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 238
    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 239
    .local v1, "currentActivityThread":Ljava/lang/Object;
    const-string v4, "mInstrumentation"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    move-object v6, v0

    .line 240
    .local v6, "mInstrumentationField":Ljava/lang/reflect/Field;
    move-object v6, v4

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 241
    invoke-virtual {v6, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    return-object v0

    .line 243
    .end local v1    # "currentActivityThread":Ljava/lang/Object;
    .end local v2    # "activityThreadClass":Ljava/lang/Class;
    .end local v3    # "currentActivityThreadMethod":Ljava/lang/reflect/Method;
    .end local v6    # "mInstrumentationField":Ljava/lang/reflect/Field;
    :catchall_0
    move-exception v1

    .line 244
    .local v1, "thr":Ljava/lang/Throwable;
    const-string v2, "H5PagePreloader"

    const-string v3, "getCurrentInstrumentation error!"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 246
    .end local v1    # "thr":Ljava/lang/Throwable;
    return-object v0
.end method

.method public static onH5ActivityCreated(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    const-string v0, "H5PagePreloader"

    .line 127
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->e:Landroid/app/Activity;

    if-eqz v1, :cond_2

    if-eq p0, v1, :cond_2

    .line 129
    invoke-static {}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->abandon()V

    .line 130
    const/4 v1, 0x0

    sput-object v1, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->e:Landroid/app/Activity;

    .line 131
    instance-of v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-eqz v2, :cond_0

    .line 132
    const-string v2, "activity_not_start"

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->b(Ljava/lang/String;)V

    .line 134
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->h()Ljava/lang/Object;

    move-result-object v2

    .line 135
    .local v1, "quinoxInstrumentation":Ljava/lang/Object;
    move-object v1, v2

    if-eqz v2, :cond_1

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "instrumentation class type = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_1
    const-string v2, "onH5ActivityCreated not hit"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void

    .line 140
    .end local v1    # "quinoxInstrumentation":Ljava/lang/Object;
    :cond_2
    if-ne p0, v1, :cond_3

    .line 142
    const/4 v1, 0x1

    sput-boolean v1, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :cond_3
    return-void

    .line 144
    :catchall_0
    move-exception v1

    .line 145
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "onH5ActivityCreated error!"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public static precreateH5Activity()V
    .locals 1

    .line 192
    invoke-static {}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->isBackgroundRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    return-void

    .line 195
    :cond_0
    new-instance v0, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader$3;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader$3;-><init>()V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 231
    return-void
.end method

.method public static startPreload()V
    .locals 3

    .line 44
    const-string v0, "H5PagePreloader"

    const-string v1, "startPreload enter"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->isBackgroundRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    return-void

    .line 48
    :cond_0
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 49
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v1, 0x0

    .line 51
    .local v1, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v1, v0

    if-nez v0, :cond_1

    .line 52
    return-void

    .line 54
    :cond_1
    const-string v0, "h5_preloadH5Page"

    invoke-interface {v1, v0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "config":Ljava/lang/String;
    const-string v2, "yes"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 56
    return-void

    .line 59
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->precreateH5Activity()V

    .line 60
    return-void
.end method
