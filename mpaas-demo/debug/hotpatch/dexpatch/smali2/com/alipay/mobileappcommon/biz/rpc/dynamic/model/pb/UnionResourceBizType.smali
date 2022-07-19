.class public final enum Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;
.super Ljava/lang/Enum;
.source "UnionResourceBizType.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field public static final enum BIRDNEST:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

.field public static final enum BUNDLE:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

.field public static final enum CMD:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

.field public static final enum HOTPATCH:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

.field public static final enum IOSDYNAMIC:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

.field public static final enum IOSFRAMEWORK:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

.field public static final enum NEBULA:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

.field public static final enum RESOURCE:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

.field public static final enum UNKNOWN:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

.field private static final synthetic b:[Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 12
    new-instance v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;->UNKNOWN:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

    .line 16
    new-instance v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

    const-string v3, "HOTPATCH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;->HOTPATCH:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

    .line 20
    new-instance v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

    const-string v5, "BUNDLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;->BUNDLE:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

    .line 24
    new-instance v5, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

    const-string v7, "BIRDNEST"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;->BIRDNEST:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

    .line 28
    new-instance v7, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

    const-string v9, "NEBULA"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;->NEBULA:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

    .line 32
    new-instance v9, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

    const-string v11, "IOSDYNAMIC"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;->IOSDYNAMIC:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

    .line 36
    new-instance v11, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

    const-string v13, "CMD"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;->CMD:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

    .line 40
    new-instance v13, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

    const-string v15, "RESOURCE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;->RESOURCE:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

    .line 44
    new-instance v15, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

    const-string v14, "IOSFRAMEWORK"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;->IOSFRAMEWORK:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

    .line 7
    const/16 v14, 0x9

    new-array v14, v14, [Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    sput-object v14, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;->b:[Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

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

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    iput p3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;->a:I

    .line 50
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 7
    const-class v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;
    .locals 1

    .line 7
    sget-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;->b:[Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

    invoke-virtual {v0}, [Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;->a:I

    return v0
.end method
