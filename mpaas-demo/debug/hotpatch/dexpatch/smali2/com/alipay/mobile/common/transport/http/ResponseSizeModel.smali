.class public Lcom/alipay/mobile/common/transport/http/ResponseSizeModel;
.super Ljava/lang/Object;
.source "ResponseSizeModel.java"


# instance fields
.field public compressedSize:J

.field public rawSize:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0
    .param p1, "compressedSize"    # J
    .param p3, "rawSize"    # J

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-wide p1, p0, Lcom/alipay/mobile/common/transport/http/ResponseSizeModel;->compressedSize:J

    .line 20
    iput-wide p3, p0, Lcom/alipay/mobile/common/transport/http/ResponseSizeModel;->rawSize:J

    .line 21
    return-void
.end method
