.class public final enum Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionPlatformType;
.super Ljava/lang/Enum;
.source "UnionPlatformType.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionPlatformType;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field public static final enum android:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionPlatformType;

.field private static final synthetic b:[Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionPlatformType;

.field public static final enum ios:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionPlatformType;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 9
    new-instance v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionPlatformType;

    const-string v1, "android"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionPlatformType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionPlatformType;->android:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionPlatformType;

    .line 10
    new-instance v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionPlatformType;

    const-string v3, "ios"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionPlatformType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionPlatformType;->ios:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionPlatformType;

    .line 7
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionPlatformType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionPlatformType;->b:[Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionPlatformType;

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
    iput p3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionPlatformType;->a:I

    .line 16
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionPlatformType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 7
    const-class v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionPlatformType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionPlatformType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionPlatformType;
    .locals 1

    .line 7
    sget-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionPlatformType;->b:[Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionPlatformType;

    invoke-virtual {v0}, [Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionPlatformType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionPlatformType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionPlatformType;->a:I

    return v0
.end method
