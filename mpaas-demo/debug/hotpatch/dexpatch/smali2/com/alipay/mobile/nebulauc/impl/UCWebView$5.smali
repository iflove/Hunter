.class final Lcom/alipay/mobile/nebulauc/impl/UCWebView$5;
.super Ljava/lang/Object;
.source "UCWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/impl/UCWebView;->preCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$view:Lcom/alipay/mobile/nebulauc/impl/UCWebView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$5;->val$view:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 320
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$5;->val$view:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    :cond_0
    goto :goto_0

    .line 323
    :catchall_0
    move-exception v0

    .line 324
    .local v0, "thr":Ljava/lang/Throwable;
    const-string v1, "H5UCWebView"

    const-string v2, "destroy preload ucwebview error!"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 326
    .end local v0    # "thr":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
