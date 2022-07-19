.class public final enum Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;
.super Ljava/lang/Enum;
.source "H5NetworkUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebula/util/H5NetworkUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Network"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

.field public static final enum NETWORK_MOBILE_FAST:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

.field public static final enum NETWORK_MOBILE_MIDDLE:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

.field public static final enum NETWORK_MOBILE_SLOW:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

.field public static final enum NETWORK_NO_CONNECTION:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

.field public static final enum NETWORK_TYPE_UNKNOWN:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

.field public static final enum NETWORK_WIFI:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 207
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    const-string v1, "NETWORK_WIFI"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;->NETWORK_WIFI:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    .line 212
    new-instance v1, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    const-string v3, "NETWORK_MOBILE_FAST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;->NETWORK_MOBILE_FAST:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    .line 217
    new-instance v3, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    const-string v5, "NETWORK_MOBILE_MIDDLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;->NETWORK_MOBILE_MIDDLE:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    .line 222
    new-instance v5, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    const-string v7, "NETWORK_MOBILE_SLOW"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;->NETWORK_MOBILE_SLOW:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    .line 227
    new-instance v7, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    const-string v9, "NETWORK_NO_CONNECTION"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;->NETWORK_NO_CONNECTION:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    .line 232
    new-instance v9, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    const-string v11, "NETWORK_TYPE_UNKNOWN"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;->NETWORK_TYPE_UNKNOWN:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    .line 203
    const/4 v11, 0x6

    new-array v11, v11, [Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;->$VALUES:[Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 203
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 203
    const-class v0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;
    .locals 1

    .line 203
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;->$VALUES:[Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    invoke-virtual {v0}, [Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    return-object v0
.end method
