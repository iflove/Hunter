.class final Lcom/alipay/mobile/nebulauc/impl/UCWebView$1;
.super Ljava/lang/Object;
.source "UCWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/impl/UCWebView;->preCreateOnMainWithDelay(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 188
    const-string v0, "WebView is pre-created"

    const-string v1, "create.ucwebview.end"

    const-string v2, "H5UCWebView"

    const-string v3, "uc_init"

    const/4 v4, 0x0

    :try_start_0
    const-string v5, "create.ucwebview.start"

    invoke-static {v3, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->handleTinyAppKeyEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    # invokes: Lcom/alipay/mobile/nebulauc/impl/UCWebView;->preCreate()V
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$000()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    :goto_0
    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->handleTinyAppKeyEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    # setter for: Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sWaitPreCreating:Z
    invoke-static {v4}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$102(Z)Z

    .line 195
    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    goto :goto_1

    .line 190
    :catchall_0
    move-exception v5

    .line 191
    .local v5, "t":Ljava/lang/Throwable;
    :try_start_1
    const-string v6, "preCreate exception "

    invoke-static {v2, v6, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v5    # "t":Ljava/lang/Throwable;
    goto :goto_0

    .line 197
    :goto_1
    return-void

    .line 193
    :catchall_1
    move-exception v5

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->handleTinyAppKeyEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    # setter for: Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sWaitPreCreating:Z
    invoke-static {v4}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$102(Z)Z

    .line 195
    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v5
.end method
