.class final Lcom/alipay/mobile/nebulauc/impl/UCWebView$17;
.super Ljava/lang/Object;
.source "UCWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/impl/UCWebView;->preloadAppXJs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ucWebView:Lcom/alipay/mobile/nebulauc/impl/UCWebView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)V
    .locals 0

    .line 1597
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$17;->val$ucWebView:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1601
    const-string v0, "H5UCWebView"

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$17;->val$ucWebView:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->destroy()V

    .line 1602
    const-string v1, "preloadAppXJs webview destroyed"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1605
    goto :goto_0

    .line 1603
    :catchall_0
    move-exception v1

    .line 1604
    .local v1, "thr":Ljava/lang/Throwable;
    const-string v2, "destroy js preload ucwebview error!"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1606
    .end local v1    # "thr":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
