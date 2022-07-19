.class public Lcom/alipay/mobile/framework/pipeline/PipeLineController;
.super Ljava/lang/Object;
.source "PipeLineController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/framework/pipeline/PipeLineController$Pausable;
    }
.end annotation


# static fields
.field private static a:Lcom/alipay/mobile/framework/pipeline/PipeLineController;


# instance fields
.field private b:Lcom/alipay/mobile/framework/pipeline/PipeLineController$Pausable;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/framework/pipeline/PipeLineController$Pausable;)V
    .locals 0
    .param p1, "pausable"    # Lcom/alipay/mobile/framework/pipeline/PipeLineController$Pausable;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/alipay/mobile/framework/pipeline/PipeLineController;->b:Lcom/alipay/mobile/framework/pipeline/PipeLineController$Pausable;

    .line 26
    return-void
.end method

.method public static declared-synchronized createInstance(Lcom/alipay/mobile/framework/pipeline/PipeLineController$Pausable;)V
    .locals 2
    .param p0, "pausable"    # Lcom/alipay/mobile/framework/pipeline/PipeLineController$Pausable;

    const-class v0, Lcom/alipay/mobile/framework/pipeline/PipeLineController;

    monitor-enter v0

    .line 15
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/framework/pipeline/PipeLineController;->a:Lcom/alipay/mobile/framework/pipeline/PipeLineController;

    if-nez v1, :cond_0

    .line 16
    new-instance v1, Lcom/alipay/mobile/framework/pipeline/PipeLineController;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/framework/pipeline/PipeLineController;-><init>(Lcom/alipay/mobile/framework/pipeline/PipeLineController$Pausable;)V

    sput-object v1, Lcom/alipay/mobile/framework/pipeline/PipeLineController;->a:Lcom/alipay/mobile/framework/pipeline/PipeLineController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :cond_0
    monitor-exit v0

    return-void

    .line 14
    .end local p0    # "pausable":Lcom/alipay/mobile/framework/pipeline/PipeLineController$Pausable;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/framework/pipeline/PipeLineController;
    .locals 2

    const-class v0, Lcom/alipay/mobile/framework/pipeline/PipeLineController;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/framework/pipeline/PipeLineController;->a:Lcom/alipay/mobile/framework/pipeline/PipeLineController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 21
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public pausePipeline()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/PipeLineController;->b:Lcom/alipay/mobile/framework/pipeline/PipeLineController$Pausable;

    if-eqz v0, :cond_0

    .line 36
    invoke-interface {v0}, Lcom/alipay/mobile/framework/pipeline/PipeLineController$Pausable;->pause()V

    .line 38
    :cond_0
    return-void
.end method

.method public resumePipeline()V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/PipeLineController;->b:Lcom/alipay/mobile/framework/pipeline/PipeLineController$Pausable;

    if-eqz v0, :cond_0

    .line 42
    invoke-interface {v0}, Lcom/alipay/mobile/framework/pipeline/PipeLineController$Pausable;->resume()V

    .line 45
    :cond_0
    return-void
.end method
