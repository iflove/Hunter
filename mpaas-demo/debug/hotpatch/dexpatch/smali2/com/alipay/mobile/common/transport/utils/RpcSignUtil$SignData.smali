.class public Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;
.super Ljava/lang/Object;
.source "RpcSignUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/transport/utils/RpcSignUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SignData"
.end annotation


# static fields
.field public static OPEN_ENUM_SIGN_ATLAS:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static a:Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;


# instance fields
.field public errorCode:Ljava/lang/String;

.field public sign:Ljava/lang/String;

.field public signCost:I

.field public signType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 83
    sget v0, Lcom/alipay/mobile/common/netsdkextdependapi/security/SignRequest;->SIGN_TYPE_ATLAS:I

    sput v0, Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;->OPEN_ENUM_SIGN_ATLAS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;->sign:Ljava/lang/String;

    .line 87
    const/4 v1, 0x0

    iput v1, p0, Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;->signType:I

    .line 89
    iput v1, p0, Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;->signCost:I

    .line 91
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;->errorCode:Ljava/lang/String;

    return-void
.end method

.method public static final createSignDataBySignResult(Lcom/alipay/mobile/common/netsdkextdependapi/security/SignResult;)Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;
    .locals 3
    .param p0, "signResult"    # Lcom/alipay/mobile/common/netsdkextdependapi/security/SignResult;

    const/4 v0, 0x0

    .line 104
    .local v0, "signData":Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;
    invoke-virtual {p0}, Lcom/alipay/mobile/common/netsdkextdependapi/security/SignResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    new-instance v1, Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;-><init>()V

    .line 106
    move-object v0, v1

    iget-object v2, p0, Lcom/alipay/mobile/common/netsdkextdependapi/security/SignResult;->sign:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;->sign:Ljava/lang/String;

    .line 107
    iget v1, p0, Lcom/alipay/mobile/common/netsdkextdependapi/security/SignResult;->signType:I

    iput v1, v0, Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;->signType:I

    goto :goto_0

    .line 109
    :cond_0
    new-instance v1, Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;-><init>()V

    .line 110
    move-object v0, v1

    invoke-virtual {p0}, Lcom/alipay/mobile/common/netsdkextdependapi/security/SignResult;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;->errorCode:Ljava/lang/String;

    .line 112
    :goto_0
    return-object v0
.end method

.method public static final newEmptySignData()Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;
    .locals 1

    .line 96
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;->a:Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;->a:Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;

    .line 99
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;->a:Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;

    return-object v0
.end method
