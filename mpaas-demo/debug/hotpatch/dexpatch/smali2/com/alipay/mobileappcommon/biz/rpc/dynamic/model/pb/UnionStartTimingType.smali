.class public final enum Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStartTimingType;
.super Ljava/lang/Enum;
.source "UnionStartTimingType.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStartTimingType;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field public static final enum BACKGROUND:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStartTimingType;

.field public static final enum START:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStartTimingType;

.field public static final enum STUNKNOWN:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStartTimingType;

.field public static final enum SYNC:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStartTimingType;

.field public static final enum USER:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStartTimingType;

.field private static final synthetic b:[Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStartTimingType;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 12
    new-instance v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStartTimingType;

    const-string v1, "STUNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStartTimingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStartTimingType;->STUNKNOWN:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStartTimingType;

    .line 16
    new-instance v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStartTimingType;

    const-string v3, "START"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStartTimingType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStartTimingType;->START:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStartTimingType;

    .line 20
    new-instance v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStartTimingType;

    const-string v5, "BACKGROUND"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStartTimingType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStartTimingType;->BACKGROUND:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStartTimingType;

    .line 24
    new-instance v5, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStartTimingType;

    const-string v7, "USER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStartTimingType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStartTimingType;->USER:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStartTimingType;

    .line 28
    new-instance v7, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStartTimingType;

    const-string v9, "SYNC"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStartTimingType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStartTimingType;->SYNC:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStartTimingType;

    .line 7
    const/4 v9, 0x5

    new-array v9, v9, [Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStartTimingType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStartTimingType;->b:[Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStartTimingType;

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

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput p3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStartTimingType;->a:I

    .line 34
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStartTimingType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 7
    const-class v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStartTimingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStartTimingType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStartTimingType;
    .locals 1

    .line 7
    sget-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStartTimingType;->b:[Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStartTimingType;

    invoke-virtual {v0}, [Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStartTimingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStartTimingType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStartTimingType;->a:I

    return v0
.end method
