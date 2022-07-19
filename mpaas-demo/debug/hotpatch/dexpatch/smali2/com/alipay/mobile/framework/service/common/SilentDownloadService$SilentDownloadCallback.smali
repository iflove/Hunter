.class public interface abstract Lcom/alipay/mobile/framework/service/common/SilentDownloadService$SilentDownloadCallback;
.super Ljava/lang/Object;
.source "SilentDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/framework/service/common/SilentDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SilentDownloadCallback"
.end annotation


# virtual methods
.method public abstract onCancel(Lcom/alipay/mobile/common/transport/Request;Ljava/lang/String;)V
.end method

.method public abstract onComplete(Lcom/alipay/mobile/common/transport/Request;Lcom/alipay/mobile/common/transport/Response;Ljava/lang/String;)V
.end method

.method public abstract onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onProgress(Lcom/alipay/mobile/common/transport/Request;D)V
.end method

.method public abstract onStart(Lcom/alipay/mobile/common/transport/Request;Ljava/lang/String;)V
.end method
