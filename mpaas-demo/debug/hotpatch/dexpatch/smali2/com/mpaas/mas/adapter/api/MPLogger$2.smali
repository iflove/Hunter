.class final Lcom/mpaas/mas/adapter/api/MPLogger$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/common/logging/api/LogCustomerControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mpaas/mas/adapter/api/MPLogger;->disableUpload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isLogUpload(Lcom/alipay/mobile/common/logging/api/customer/LogUploadInfo;)Lcom/alipay/mobile/common/logging/api/customer/UploadResultInfo;
    .locals 3
    .param p1, "logUploadInfo"    # Lcom/alipay/mobile/common/logging/api/customer/LogUploadInfo;

    .line 212
    new-instance v0, Lcom/alipay/mobile/common/logging/api/customer/UploadResultInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/customer/UploadResultInfo;-><init>()V

    const/4 v1, 0x0

    .line 213
    .local v1, "info":Lcom/alipay/mobile/common/logging/api/customer/UploadResultInfo;
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/alipay/mobile/common/logging/api/customer/UploadResultInfo;->isUpload:Z

    .line 214
    return-object v1
.end method

.method public final isLogWrite(Lcom/alipay/mobile/common/logging/api/customer/LogWriteInfo;)Z
    .locals 1
    .param p1, "logWriteInfo"    # Lcom/alipay/mobile/common/logging/api/customer/LogWriteInfo;

    .line 207
    const/4 v0, 0x0

    return v0
.end method
