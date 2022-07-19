.class public interface abstract Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadService$UpgradeSilentDownloadCallback;
.super Ljava/lang/Object;
.source "UpgradeSilentDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UpgradeSilentDownloadCallback"
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
