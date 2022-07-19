.class public final enum Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;
.super Ljava/lang/Enum;
.source "DynamicResourceBizType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BIRDNEST:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

.field public static final enum BUNDLE:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

.field public static final enum CMD:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

.field public static final enum HOTPATCH:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

.field public static final enum IOSDYNAMIC:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

.field public static final enum NEBULA:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

.field public static final enum RESOURCE:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

.field public static final enum UNKNOWN:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic d:[Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 16
    new-instance v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->UNKNOWN:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    .line 21
    new-instance v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    const-string v3, "HOTPATCH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->HOTPATCH:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    .line 26
    new-instance v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    const-string v5, "BUNDLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->BUNDLE:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    .line 31
    new-instance v5, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    const-string v7, "BIRDNEST"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->BIRDNEST:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    .line 36
    new-instance v7, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    const-string v9, "NEBULA"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->NEBULA:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    .line 41
    new-instance v9, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    const-string v11, "IOSDYNAMIC"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->IOSDYNAMIC:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    .line 46
    new-instance v11, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    const-string v13, "CMD"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->CMD:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    .line 51
    new-instance v13, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    const-string v15, "RESOURCE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->RESOURCE:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    .line 12
    const/16 v15, 0x8

    new-array v15, v15, [Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->d:[Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->b:Ljava/util/Map;

    .line 56
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->c:Landroid/util/SparseArray;

    .line 60
    invoke-static {}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->values()[Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 61
    .local v3, "type":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;
    sget-object v4, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->b:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v4, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->c:Landroid/util/SparseArray;

    iget v5, v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->a:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 60
    .end local v3    # "type":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    :cond_0
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

    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    iput p3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->a:I

    .line 68
    return-void
.end method

.method public static convert(I)Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;
    .locals 1
    .param p0, "value"    # I

    .line 76
    sget-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    return-object v0
.end method

.method public static convert(Ljava/lang/String;)Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 80
    sget-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 12
    const-class v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;
    .locals 1

    .line 12
    sget-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->d:[Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    invoke-virtual {v0}, [Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->a:I

    return v0
.end method
