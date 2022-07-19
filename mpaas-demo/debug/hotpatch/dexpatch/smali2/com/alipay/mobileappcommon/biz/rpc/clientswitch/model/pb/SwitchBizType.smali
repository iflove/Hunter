.class public final enum Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchBizType;
.super Ljava/lang/Enum;
.source "SwitchBizType.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchBizType;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchBizType;

.field public static final enum ALL:Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchBizType;

.field public static final enum CONFIG:Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchBizType;

.field public static final enum SWITCH:Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchBizType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 9
    new-instance v0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchBizType;

    const-string v1, "ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchBizType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchBizType;->ALL:Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchBizType;

    .line 10
    new-instance v1, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchBizType;

    const-string v3, "SWITCH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchBizType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchBizType;->SWITCH:Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchBizType;

    .line 11
    new-instance v3, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchBizType;

    const-string v5, "CONFIG"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchBizType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchBizType;->CONFIG:Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchBizType;

    .line 7
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchBizType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchBizType;->$VALUES:[Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchBizType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput p3, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchBizType;->value:I

    .line 17
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchBizType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 7
    const-class v0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchBizType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchBizType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchBizType;
    .locals 1

    .line 7
    sget-object v0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchBizType;->$VALUES:[Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchBizType;

    invoke-virtual {v0}, [Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchBizType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchBizType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchBizType;->value:I

    return v0
.end method
