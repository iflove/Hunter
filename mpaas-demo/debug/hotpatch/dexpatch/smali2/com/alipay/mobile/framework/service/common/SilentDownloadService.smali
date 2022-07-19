.class public abstract Lcom/alipay/mobile/framework/service/common/SilentDownloadService;
.super Lcom/alipay/mobile/framework/service/CommonService;
.source "SilentDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/framework/service/common/SilentDownloadService$SilentDownloadCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/CommonService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract isDownloading(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract startSilentDownload(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/common/SilentDownloadService$SilentDownloadCallback;)V
.end method

.method public abstract stopSilentDownload(Ljava/lang/String;Ljava/lang/String;)V
.end method
