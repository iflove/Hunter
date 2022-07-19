.class public final enum Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStoreType;
.super Ljava/lang/Enum;
.source "UnionStoreType.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStoreType;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field public static final enum MEM:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStoreType;

.field public static final enum SD:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStoreType;

.field private static final synthetic b:[Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStoreType;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 9
    new-instance v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStoreType;

    const-string v1, "SD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStoreType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStoreType;->SD:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStoreType;

    .line 10
    new-instance v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStoreType;

    const-string v3, "MEM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStoreType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStoreType;->MEM:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStoreType;

    .line 7
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStoreType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStoreType;->b:[Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStoreType;

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

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput p3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStoreType;->a:I

    .line 16
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStoreType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 7
    const-class v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStoreType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStoreType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStoreType;
    .locals 1

    .line 7
    sget-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStoreType;->b:[Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStoreType;

    invoke-virtual {v0}, [Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStoreType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStoreType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStoreType;->a:I

    return v0
.end method
