.class final Lcom/alipay/mobile/nebulacore/core/H5PagePreloader$3;
.super Ljava/lang/Object;
.source "H5PagePreloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->precreateH5Activity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    const-string v0, "H5Activity_create_failed"

    const-string v1, "H5PagePreloader"

    .line 199
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->e()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 200
    .local v4, "quinoxInstrumentation":Ljava/lang/Object;
    move-object v4, v2

    if-nez v2, :cond_0

    .line 201
    return-void

    .line 203
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "instrumentation class type = "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "com.alipay.mobile"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 205
    return-void

    .line 207
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    const-string v5, "window"

    invoke-virtual {v2, v5}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    move-object v5, v3

    .line 208
    .local v5, "wm":Landroid/view/WindowManager;
    move-object v5, v2

    if-nez v2, :cond_2

    .line 209
    return-void

    .line 211
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v6, "precreateActivity"

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const-class v9, Ljava/lang/ClassLoader;

    const/4 v11, 0x1

    aput-object v9, v8, v11

    invoke-virtual {v2, v6, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v6, v3

    .line 212
    .local v6, "precreateActivityMethod":Ljava/lang/reflect/Method;
    move-object v6, v2

    invoke-virtual {v2, v11}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 213
    sget-object v2, Lcom/alipay/mobile/nebulacore/Nebula;->LITE_PROCESS_H5_ACTIVITY:[Ljava/lang/Class;

    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5EventHandler()Lcom/alipay/mobile/nebula/process/H5EventHandler;

    move-result-object v8

    invoke-interface {v8}, Lcom/alipay/mobile/nebula/process/H5EventHandler;->getLitePid()I

    move-result v8

    sub-int/2addr v8, v11

    aget-object v2, v2, v8

    .line 214
    .local v2, "targetActivity":Ljava/lang/Class;
    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-virtual {v6, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/Activity;

    .line 215
    .local v7, "activity":Landroid/app/Activity;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "activity create success ? "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v7, :cond_3

    const/4 v10, 0x1

    :cond_3
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-static {v7}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->a(Landroid/app/Activity;)Landroid/app/Activity;

    .line 217
    invoke-static {}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->c()Landroid/app/Activity;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 218
    const-class v8, Landroid/app/Activity;

    const-string v9, "mWindowManager"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 219
    .local v3, "field":Ljava/lang/reflect/Field;
    move-object v3, v8

    invoke-virtual {v8, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 220
    invoke-static {}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->c()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v3, v8, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 221
    invoke-static {}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->a()V

    .line 222
    .end local v3    # "field":Ljava/lang/reflect/Field;
    return-void

    .line 223
    :cond_4
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    .end local v2    # "targetActivity":Ljava/lang/Class;
    .end local v4    # "quinoxInstrumentation":Ljava/lang/Object;
    .end local v5    # "wm":Landroid/view/WindowManager;
    .end local v6    # "precreateActivityMethod":Ljava/lang/reflect/Method;
    .end local v7    # "activity":Landroid/app/Activity;
    return-void

    .line 225
    :catchall_0
    move-exception v2

    .line 226
    .local v2, "thr":Ljava/lang/Throwable;
    const-string v3, "precreateH5Activity error"

    invoke-static {v1, v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 227
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->a(Ljava/lang/String;)V

    .line 229
    .end local v2    # "thr":Ljava/lang/Throwable;
    return-void
.end method
