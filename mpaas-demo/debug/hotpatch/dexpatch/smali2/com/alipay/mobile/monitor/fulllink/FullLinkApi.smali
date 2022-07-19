.class public Lcom/alipay/mobile/monitor/fulllink/FullLinkApi;
.super Ljava/lang/Object;
.source "FullLinkApi.java"

# interfaces
.implements Lcom/alipay/mobile/monitor/fulllink/IFullLinkApi;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static a:Lcom/alipay/mobile/monitor/fulllink/FullLinkApi;


# instance fields
.field private b:Lcom/alipay/mobile/monitor/fulllink/IFullLinkApi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/monitor/fulllink/FullLinkApi;->a:Lcom/alipay/mobile/monitor/fulllink/FullLinkApi;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/monitor/fulllink/FullLinkApi;
    .locals 2

    .line 14
    sget-object v0, Lcom/alipay/mobile/monitor/fulllink/FullLinkApi;->a:Lcom/alipay/mobile/monitor/fulllink/FullLinkApi;

    if-nez v0, :cond_1

    .line 15
    const-class v0, Lcom/alipay/mobile/monitor/fulllink/FullLinkApi;

    monitor-enter v0

    .line 16
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/monitor/fulllink/FullLinkApi;->a:Lcom/alipay/mobile/monitor/fulllink/FullLinkApi;

    if-nez v1, :cond_0

    .line 17
    new-instance v1, Lcom/alipay/mobile/monitor/fulllink/FullLinkApi;

    invoke-direct {v1}, Lcom/alipay/mobile/monitor/fulllink/FullLinkApi;-><init>()V

    sput-object v1, Lcom/alipay/mobile/monitor/fulllink/FullLinkApi;->a:Lcom/alipay/mobile/monitor/fulllink/FullLinkApi;

    .line 19
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 21
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/mobile/monitor/fulllink/FullLinkApi;->a:Lcom/alipay/mobile/monitor/fulllink/FullLinkApi;

    return-object v0
.end method


# virtual methods
.method public bizReady(Ljava/lang/String;)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/monitor/fulllink/FullLinkApi;->b:Lcom/alipay/mobile/monitor/fulllink/IFullLinkApi;

    const/4 v1, 0x0

    .line 67
    .local v1, "api":Lcom/alipay/mobile/monitor/fulllink/IFullLinkApi;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 68
    return-void

    .line 70
    :cond_0
    invoke-interface {v1, p1}, Lcom/alipay/mobile/monitor/fulllink/IFullLinkApi;->bizReady(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public endInLink(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/monitor/fulllink/FullLinkApi;->b:Lcom/alipay/mobile/monitor/fulllink/IFullLinkApi;

    const/4 v1, 0x0

    .line 40
    .local v1, "api":Lcom/alipay/mobile/monitor/fulllink/IFullLinkApi;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 41
    return-void

    .line 43
    :cond_0
    invoke-interface {v1, p1, p2}, Lcom/alipay/mobile/monitor/fulllink/IFullLinkApi;->endInLink(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public endInLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[J)V
    .locals 6
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "nextKey"    # Ljava/lang/String;
    .param p4, "captureEnv"    # Z
    .param p5, "tids"    # [J

    .line 111
    iget-object v1, p0, Lcom/alipay/mobile/monitor/fulllink/FullLinkApi;->b:Lcom/alipay/mobile/monitor/fulllink/IFullLinkApi;

    const/4 v0, 0x0

    .line 112
    .local v0, "api":Lcom/alipay/mobile/monitor/fulllink/IFullLinkApi;
    move-object v0, v1

    if-nez v1, :cond_0

    .line 113
    return-void

    .line 115
    :cond_0
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/monitor/fulllink/IFullLinkApi;->endInLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[J)V

    .line 116
    return-void
.end method

.method public endInLink(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "captureEnv"    # Z

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/monitor/fulllink/FullLinkApi;->b:Lcom/alipay/mobile/monitor/fulllink/IFullLinkApi;

    const/4 v1, 0x0

    .line 85
    .local v1, "api":Lcom/alipay/mobile/monitor/fulllink/IFullLinkApi;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 86
    return-void

    .line 88
    :cond_0
    invoke-interface {v1, p1, p2, p3}, Lcom/alipay/mobile/monitor/fulllink/IFullLinkApi;->endInLink(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 89
    return-void
.end method

.method public endInLink(Ljava/lang/String;Ljava/lang/String;Z[J)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "captureEnv"    # Z
    .param p4, "tids"    # [J

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/monitor/fulllink/FullLinkApi;->b:Lcom/alipay/mobile/monitor/fulllink/IFullLinkApi;

    const/4 v1, 0x0

    .line 103
    .local v1, "api":Lcom/alipay/mobile/monitor/fulllink/IFullLinkApi;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 104
    return-void

    .line 106
    :cond_0
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/alipay/mobile/monitor/fulllink/IFullLinkApi;->endInLink(Ljava/lang/String;Ljava/lang/String;Z[J)V

    .line 107
    return-void
.end method

.method public putInChain(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/monitor/fulllink/FullLinkApi;->b:Lcom/alipay/mobile/monitor/fulllink/IFullLinkApi;

    const/4 v1, 0x0

    .line 58
    .local v1, "api":Lcom/alipay/mobile/monitor/fulllink/IFullLinkApi;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 59
    return-void

    .line 61
    :cond_0
    invoke-interface {v1, p1, p2}, Lcom/alipay/mobile/monitor/fulllink/IFullLinkApi;->putInChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public putInLink(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "cost"    # J

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/monitor/fulllink/FullLinkApi;->b:Lcom/alipay/mobile/monitor/fulllink/IFullLinkApi;

    const/4 v1, 0x0

    .line 49
    .local v1, "api":Lcom/alipay/mobile/monitor/fulllink/IFullLinkApi;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 50
    return-void

    .line 52
    :cond_0
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/alipay/mobile/monitor/fulllink/IFullLinkApi;->putInLink(Ljava/lang/String;Ljava/lang/String;J)V

    .line 53
    return-void
.end method

.method public setDelegator(Lcom/alipay/mobile/monitor/fulllink/IFullLinkApi;)V
    .locals 0
    .param p1, "api"    # Lcom/alipay/mobile/monitor/fulllink/IFullLinkApi;

    .line 25
    iput-object p1, p0, Lcom/alipay/mobile/monitor/fulllink/FullLinkApi;->b:Lcom/alipay/mobile/monitor/fulllink/IFullLinkApi;

    .line 26
    return-void
.end method

.method public startInLink(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/monitor/fulllink/FullLinkApi;->b:Lcom/alipay/mobile/monitor/fulllink/IFullLinkApi;

    const/4 v1, 0x0

    .line 31
    .local v1, "api":Lcom/alipay/mobile/monitor/fulllink/IFullLinkApi;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 32
    return-void

    .line 34
    :cond_0
    invoke-interface {v1, p1, p2}, Lcom/alipay/mobile/monitor/fulllink/IFullLinkApi;->startInLink(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public startInLink(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "captureEnv"    # Z

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/monitor/fulllink/FullLinkApi;->b:Lcom/alipay/mobile/monitor/fulllink/IFullLinkApi;

    const/4 v1, 0x0

    .line 76
    .local v1, "api":Lcom/alipay/mobile/monitor/fulllink/IFullLinkApi;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 77
    return-void

    .line 79
    :cond_0
    invoke-interface {v1, p1, p2, p3}, Lcom/alipay/mobile/monitor/fulllink/IFullLinkApi;->startInLink(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 80
    return-void
.end method

.method public startInLink(Ljava/lang/String;Ljava/lang/String;Z[J)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "captureEnv"    # Z
    .param p4, "tids"    # [J

    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/monitor/fulllink/FullLinkApi;->b:Lcom/alipay/mobile/monitor/fulllink/IFullLinkApi;

    const/4 v1, 0x0

    .line 94
    .local v1, "api":Lcom/alipay/mobile/monitor/fulllink/IFullLinkApi;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 95
    return-void

    .line 97
    :cond_0
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/alipay/mobile/monitor/fulllink/IFullLinkApi;->startInLink(Ljava/lang/String;Ljava/lang/String;Z[J)V

    .line 98
    return-void
.end method
