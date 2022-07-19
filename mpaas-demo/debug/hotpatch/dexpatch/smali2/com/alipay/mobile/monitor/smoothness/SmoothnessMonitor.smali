.class public Lcom/alipay/mobile/monitor/smoothness/SmoothnessMonitor;
.super Ljava/lang/Object;
.source "SmoothnessMonitor.java"

# interfaces
.implements Lcom/alipay/mobile/monitor/smoothness/ISmoothnessMonitor;


# static fields
.field private static volatile a:Lcom/alipay/mobile/monitor/smoothness/SmoothnessMonitor;


# instance fields
.field private b:Lcom/alipay/mobile/monitor/smoothness/ISmoothnessMonitor;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/monitor/smoothness/SmoothnessMonitor;
    .locals 2

    .line 9
    sget-object v0, Lcom/alipay/mobile/monitor/smoothness/SmoothnessMonitor;->a:Lcom/alipay/mobile/monitor/smoothness/SmoothnessMonitor;

    if-nez v0, :cond_1

    .line 10
    const-class v0, Lcom/alipay/mobile/monitor/smoothness/SmoothnessMonitor;

    monitor-enter v0

    .line 11
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/monitor/smoothness/SmoothnessMonitor;->a:Lcom/alipay/mobile/monitor/smoothness/SmoothnessMonitor;

    if-nez v1, :cond_0

    .line 12
    new-instance v1, Lcom/alipay/mobile/monitor/smoothness/SmoothnessMonitor;

    invoke-direct {v1}, Lcom/alipay/mobile/monitor/smoothness/SmoothnessMonitor;-><init>()V

    sput-object v1, Lcom/alipay/mobile/monitor/smoothness/SmoothnessMonitor;->a:Lcom/alipay/mobile/monitor/smoothness/SmoothnessMonitor;

    .line 14
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 16
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/mobile/monitor/smoothness/SmoothnessMonitor;->a:Lcom/alipay/mobile/monitor/smoothness/SmoothnessMonitor;

    return-object v0
.end method


# virtual methods
.method public addSmoothnessMonitor(Ljava/lang/Object;Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "result"    # Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;

    .line 23
    iget-object v0, p0, Lcom/alipay/mobile/monitor/smoothness/SmoothnessMonitor;->b:Lcom/alipay/mobile/monitor/smoothness/ISmoothnessMonitor;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/monitor/smoothness/ISmoothnessMonitor;->addSmoothnessMonitor(Ljava/lang/Object;Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;)V

    .line 24
    return-void
.end method

.method public getSmoothnessResult(Ljava/lang/Object;)J
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lcom/alipay/mobile/monitor/smoothness/SmoothnessMonitor;->b:Lcom/alipay/mobile/monitor/smoothness/ISmoothnessMonitor;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/monitor/smoothness/ISmoothnessMonitor;->getSmoothnessResult(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public setListener(Lcom/alipay/mobile/monitor/smoothness/ISmoothnessMonitor$ISmoothnessListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/alipay/mobile/monitor/smoothness/ISmoothnessMonitor$ISmoothnessListener;

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/monitor/smoothness/SmoothnessMonitor;->b:Lcom/alipay/mobile/monitor/smoothness/ISmoothnessMonitor;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/monitor/smoothness/ISmoothnessMonitor;->setListener(Lcom/alipay/mobile/monitor/smoothness/ISmoothnessMonitor$ISmoothnessListener;)V

    .line 57
    return-void
.end method

.method public setProxy(Lcom/alipay/mobile/monitor/smoothness/ISmoothnessMonitor;)V
    .locals 0
    .param p1, "monitor"    # Lcom/alipay/mobile/monitor/smoothness/ISmoothnessMonitor;

    .line 31
    iput-object p1, p0, Lcom/alipay/mobile/monitor/smoothness/SmoothnessMonitor;->b:Lcom/alipay/mobile/monitor/smoothness/ISmoothnessMonitor;

    .line 32
    return-void
.end method

.method public start()V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/monitor/smoothness/SmoothnessMonitor;->b:Lcom/alipay/mobile/monitor/smoothness/ISmoothnessMonitor;

    invoke-interface {v0}, Lcom/alipay/mobile/monitor/smoothness/ISmoothnessMonitor;->start()V

    .line 37
    return-void
.end method

.method public start(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/monitor/smoothness/SmoothnessMonitor;->b:Lcom/alipay/mobile/monitor/smoothness/ISmoothnessMonitor;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/monitor/smoothness/ISmoothnessMonitor;->start(Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method public stop()V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/monitor/smoothness/SmoothnessMonitor;->b:Lcom/alipay/mobile/monitor/smoothness/ISmoothnessMonitor;

    invoke-interface {v0}, Lcom/alipay/mobile/monitor/smoothness/ISmoothnessMonitor;->stop()V

    .line 47
    return-void
.end method

.method public stop(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/monitor/smoothness/SmoothnessMonitor;->b:Lcom/alipay/mobile/monitor/smoothness/ISmoothnessMonitor;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/monitor/smoothness/ISmoothnessMonitor;->stop(Ljava/lang/Object;)V

    .line 52
    return-void
.end method
