.class public Lcom/alipay/mobile/framework/FrameworkAdapterManager;
.super Ljava/lang/Object;
.source "FrameworkAdapterManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/framework/FrameworkAdapterManager$ConfigAdapter;
    }
.end annotation


# static fields
.field private static volatile b:Lcom/alipay/mobile/framework/FrameworkAdapterManager;


# instance fields
.field private a:Lcom/alipay/mobile/framework/FrameworkAdapterManager$ConfigAdapter;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static g()Lcom/alipay/mobile/framework/FrameworkAdapterManager;
    .locals 3

    .line 19
    sget-object v0, Lcom/alipay/mobile/framework/FrameworkAdapterManager;->b:Lcom/alipay/mobile/framework/FrameworkAdapterManager;

    if-nez v0, :cond_1

    .line 20
    const-class v0, Lcom/alipay/mobile/framework/FrameworkAdapterManager;

    monitor-enter v0

    .line 21
    :try_start_0
    new-instance v1, Lcom/alipay/mobile/framework/FrameworkAdapterManager;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/FrameworkAdapterManager;-><init>()V

    .line 22
    .local v1, "tmp":Lcom/alipay/mobile/framework/FrameworkAdapterManager;
    sget-object v2, Lcom/alipay/mobile/framework/FrameworkAdapterManager;->b:Lcom/alipay/mobile/framework/FrameworkAdapterManager;

    if-nez v2, :cond_0

    .line 23
    sput-object v1, Lcom/alipay/mobile/framework/FrameworkAdapterManager;->b:Lcom/alipay/mobile/framework/FrameworkAdapterManager;

    .line 25
    .end local v1    # "tmp":Lcom/alipay/mobile/framework/FrameworkAdapterManager;
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 28
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/mobile/framework/FrameworkAdapterManager;->b:Lcom/alipay/mobile/framework/FrameworkAdapterManager;

    return-object v0
.end method


# virtual methods
.method public getConfigFromAdapter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/framework/FrameworkAdapterManager;->a:Lcom/alipay/mobile/framework/FrameworkAdapterManager$ConfigAdapter;

    if-nez v0, :cond_0

    .line 37
    const/4 v0, 0x0

    return-object v0

    .line 40
    :cond_0
    invoke-interface {v0, p1}, Lcom/alipay/mobile/framework/FrameworkAdapterManager$ConfigAdapter;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setConfigAdapter(Lcom/alipay/mobile/framework/FrameworkAdapterManager$ConfigAdapter;)V
    .locals 0
    .param p1, "configAdapter"    # Lcom/alipay/mobile/framework/FrameworkAdapterManager$ConfigAdapter;

    .line 32
    iput-object p1, p0, Lcom/alipay/mobile/framework/FrameworkAdapterManager;->a:Lcom/alipay/mobile/framework/FrameworkAdapterManager$ConfigAdapter;

    .line 33
    return-void
.end method
