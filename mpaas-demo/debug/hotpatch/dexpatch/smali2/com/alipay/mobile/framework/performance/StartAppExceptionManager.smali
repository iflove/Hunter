.class public Lcom/alipay/mobile/framework/performance/StartAppExceptionManager;
.super Ljava/lang/Object;
.source "StartAppExceptionManager.java"


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/alipay/mobile/framework/performance/IStartAppExceptionListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/performance/StartAppExceptionManager;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/alipay/mobile/framework/performance/IStartAppExceptionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/alipay/mobile/framework/performance/IStartAppExceptionListener;

    .line 16
    iget-object v0, p0, Lcom/alipay/mobile/framework/performance/StartAppExceptionManager;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 17
    return-void
.end method

.method public onStartAppFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "sourceAppId"    # Ljava/lang/String;
    .param p2, "targetAppId"    # Ljava/lang/String;
    .param p3, "errorCode"    # Ljava/lang/String;

    .line 20
    iget-object v0, p0, Lcom/alipay/mobile/framework/performance/StartAppExceptionManager;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/performance/IStartAppExceptionListener;

    .line 21
    invoke-interface {v1, p1, p2, p3}, Lcom/alipay/mobile/framework/performance/IStartAppExceptionListener;->onStartAppFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public onStartAppReject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "sourceAppId"    # Ljava/lang/String;
    .param p2, "targetAppId"    # Ljava/lang/String;
    .param p3, "errorCode"    # Ljava/lang/String;

    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/framework/performance/StartAppExceptionManager;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/performance/IStartAppExceptionListener;

    .line 27
    invoke-interface {v1, p1, p2, p3}, Lcom/alipay/mobile/framework/performance/IStartAppExceptionListener;->onStartAppReject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method
