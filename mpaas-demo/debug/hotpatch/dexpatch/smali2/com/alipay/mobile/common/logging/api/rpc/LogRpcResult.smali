.class public Lcom/alipay/mobile/common/logging/api/rpc/LogRpcResult;
.super Ljava/lang/Object;
.source "LogRpcResult.java"


# static fields
.field public static final TAG_SUCCESS:I = 0x3e8


# instance fields
.field public errorMsg:Ljava/lang/String;

.field public respCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/common/logging/api/rpc/LogRpcResult;->respCode:I

    return-void
.end method
