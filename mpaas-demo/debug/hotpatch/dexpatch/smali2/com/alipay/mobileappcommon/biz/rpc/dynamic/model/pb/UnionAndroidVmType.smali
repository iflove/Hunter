.class public final enum Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionAndroidVmType;
.super Ljava/lang/Enum;
.source "UnionAndroidVmType.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionAndroidVmType;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field public static final enum ALL:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionAndroidVmType;

.field public static final enum AOC:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionAndroidVmType;

.field public static final enum ART:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionAndroidVmType;

.field public static final enum Dalvik:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionAndroidVmType;

.field public static final enum Lemur:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionAndroidVmType;

.field private static final synthetic b:[Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionAndroidVmType;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 9
    new-instance v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionAndroidVmType;

    const-string v1, "ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionAndroidVmType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionAndroidVmType;->ALL:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionAndroidVmType;

    .line 10
    new-instance v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionAndroidVmType;

    const-string v3, "ART"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionAndroidVmType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionAndroidVmType;->ART:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionAndroidVmType;

    .line 11
    new-instance v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionAndroidVmType;

    const-string v5, "Dalvik"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionAndroidVmType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionAndroidVmType;->Dalvik:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionAndroidVmType;

    .line 12
    new-instance v5, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionAndroidVmType;

    const-string v7, "Lemur"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionAndroidVmType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionAndroidVmType;->Lemur:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionAndroidVmType;

    .line 13
    new-instance v7, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionAndroidVmType;

    const-string v9, "AOC"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionAndroidVmType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionAndroidVmType;->AOC:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionAndroidVmType;

    .line 7
    const/4 v9, 0x5

    new-array v9, v9, [Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionAndroidVmType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionAndroidVmType;->b:[Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionAndroidVmType;

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

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionAndroidVmType;->a:I

    .line 19
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionAndroidVmType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 7
    const-class v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionAndroidVmType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionAndroidVmType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionAndroidVmType;
    .locals 1

    .line 7
    sget-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionAndroidVmType;->b:[Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionAndroidVmType;

    invoke-virtual {v0}, [Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionAndroidVmType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionAndroidVmType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionAndroidVmType;->a:I

    return v0
.end method
