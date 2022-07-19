.class public Lcom/alipay/mobile/quinox/preload/PreloadInstrumentation;
.super Landroid/app/Instrumentation;
.source "PreloadInstrumentation.java"


# static fields
.field public static final KEY_ORIGIN_ACTION:Ljava/lang/String; = "preload_origin_action"

.field public static final KEY_ORIGIN_COMPONENT:Ljava/lang/String; = "preload_origin_component"

.field public static final KEY_ORIGIN_PRELOAD_BY:Ljava/lang/String; = "preload_origin_preload_by"

.field public static final KEY_ORIGIN_PUSH_EXIST:Ljava/lang/String; = "preload_origin_push_exist"

.field public static sInstance:Lcom/alipay/mobile/quinox/preload/PreloadInstrumentation;


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/quinox/preload/PreloadInstrumentation;->sInstance:Lcom/alipay/mobile/quinox/preload/PreloadInstrumentation;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 30
    invoke-direct {p0}, Landroid/app/Instrumentation;-><init>()V

    .line 31
    sput-object p0, Lcom/alipay/mobile/quinox/preload/PreloadInstrumentation;->sInstance:Lcom/alipay/mobile/quinox/preload/PreloadInstrumentation;

    .line 33
    :try_start_0
    const-string v0, "android.app.ActivityThread"

    const-string v1, "currentActivityThread"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 34
    const-string v1, "mBoundApplication"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 35
    const-string v1, "instrumentationArgs"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 36
    .local v2, "instrumentationArgs":Ljava/lang/Object;
    move-object v2, v0

    instance-of v0, v0, Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 37
    move-object v0, v2

    check-cast v0, Landroid/os/Bundle;

    .line 38
    .local v0, "args":Landroid/os/Bundle;
    iput-object v0, p0, Lcom/alipay/mobile/quinox/preload/PreloadInstrumentation;->a:Landroid/os/Bundle;

    .line 39
    const-string v3, "preload_origin_preload_by"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 40
    .local v1, "preloadBy":Ljava/lang/String;
    move-object v1, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 41
    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->setPreloadBy(Ljava/lang/String;)V

    return-void

    .line 43
    :cond_0
    const-string v3, "auto-preload-ins"

    invoke-static {v3}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->setPreloadBy(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "preloadBy":Ljava/lang/String;
    .end local v2    # "instrumentationArgs":Ljava/lang/Object;
    :cond_1
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 49
    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/quinox/preload/PreloadInstrumentation;
    .locals 1

    .line 53
    sget-object v0, Lcom/alipay/mobile/quinox/preload/PreloadInstrumentation;->sInstance:Lcom/alipay/mobile/quinox/preload/PreloadInstrumentation;

    return-object v0
.end method


# virtual methods
.method public isOriginPushExist()Z
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/quinox/preload/PreloadInstrumentation;->a:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "preload_origin_push_exist"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public restartComponent(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "PreloadInstrumentation"

    .line 60
    iget-object v1, p0, Lcom/alipay/mobile/quinox/preload/PreloadInstrumentation;->a:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    .line 63
    :try_start_0
    const-string v2, "preload_origin_component"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "originComponent":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "restart origin component:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 66
    .local v2, "component":Ljava/lang/Class;
    const-class v3, Landroid/app/Service;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 67
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    .local v3, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/alipay/mobile/quinox/preload/PreloadInstrumentation;->a:Landroid/os/Bundle;

    const-string v5, "preload_origin_action"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 69
    .local v5, "originAction":Ljava/lang/String;
    move-object v5, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 70
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    :cond_0
    new-instance v4, Lcom/alipay/mobile/quinox/preload/PreloadInstrumentation$1;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/quinox/preload/PreloadInstrumentation$1;-><init>(Lcom/alipay/mobile/quinox/preload/PreloadInstrumentation;)V

    const/4 v6, 0x1

    invoke-virtual {p1, v3, v4, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .end local v1    # "originComponent":Ljava/lang/String;
    .end local v2    # "component":Ljava/lang/Class;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "originAction":Ljava/lang/String;
    :cond_1
    return-void

    .line 84
    :catchall_0
    move-exception v1

    .line 85
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_2
    return-void
.end method
