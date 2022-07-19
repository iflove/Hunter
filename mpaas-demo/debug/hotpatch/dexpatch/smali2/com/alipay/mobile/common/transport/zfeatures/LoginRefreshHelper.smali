.class public Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshHelper;
.super Ljava/lang/Object;
.source "LoginRefreshHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final checkIn(Lcom/alipay/mobile/common/transport/http/HttpWorker;Landroid/content/Context;)V
    .locals 5
    .param p0, "httpWorker"    # Lcom/alipay/mobile/common/transport/http/HttpWorker;
    .param p1, "context"    # Landroid/content/Context;

    .line 32
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->isRpcRequest()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 33
    invoke-static {}, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->getInstance()Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->isEnabledLoginRefresh(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->getInstance()Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->checkIn(Lcom/alipay/mobile/common/transport/http/HttpWorker;)Z

    move-result v1

    .line 37
    .local v0, "checkResult":Z
    if-eqz v1, :cond_1

    .line 44
    .end local v0    # "checkResult":Z
    return-void

    .line 38
    .restart local v0    # "checkResult":Z
    :cond_1
    new-instance v1, Lcom/alipay/mobile/common/transport/http/HttpException;

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " Login refresh check don\'t pass. API:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .end local p0    # "httpWorker":Lcom/alipay/mobile/common/transport/http/HttpWorker;
    .end local p1    # "context":Landroid/content/Context;
    throw v1
    :try_end_0
    .catch Lcom/alipay/mobile/common/transport/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .end local v0    # "checkResult":Z
    .restart local p0    # "httpWorker":Lcom/alipay/mobile/common/transport/http/HttpWorker;
    .restart local p1    # "context":Landroid/content/Context;
    :cond_2
    :goto_0
    return-void

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "HttpWorker"

    const-string v2, "LoginRefreshHelper#checkIn error. "

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void

    .line 41
    :catch_0
    move-exception v1

    .local v0, "he":Lcom/alipay/mobile/common/transport/http/HttpException;
    throw v1
.end method

.method public static final recordRpc(Lcom/alipay/mobile/common/transport/http/HttpWorker;Landroid/content/Context;)V
    .locals 3
    .param p0, "httpWorker"    # Lcom/alipay/mobile/common/transport/http/HttpWorker;
    .param p1, "context"    # Landroid/content/Context;

    .line 19
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->isRpcRequest()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    invoke-static {}, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->getInstance()Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->isEnabledLoginRefresh(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->getInstance()Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->recordRpc(Lcom/alipay/mobile/common/transport/http/HttpWorker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    return-void

    .line 21
    :cond_1
    :goto_0
    return-void

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "HttpWorker"

    const-string v2, "LoginRefreshHelper#recordRpc error. "

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public static final removeRpc(Lcom/alipay/mobile/common/transport/http/HttpWorker;Landroid/content/Context;)V
    .locals 3
    .param p0, "httpWorker"    # Lcom/alipay/mobile/common/transport/http/HttpWorker;
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->isRpcRequest()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    invoke-static {}, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->getInstance()Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->isEnabledLoginRefresh(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->getInstance()Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->removeRecord(Lcom/alipay/mobile/common/transport/http/HttpWorker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    return-void

    .line 52
    :cond_1
    :goto_0
    return-void

    .line 55
    :catchall_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "HttpWorker"

    const-string v2, "LoginRefreshHelper#removeRpc error. "

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method
