.class public final enum Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/StoreType;
.super Ljava/lang/Enum;
.source "StoreType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/StoreType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum MEM:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/StoreType;

.field public static final enum SD:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/StoreType;

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/StoreType;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/StoreType;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic d:[Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/StoreType;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 13
    new-instance v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/StoreType;

    const-string v1, "SD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/StoreType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/StoreType;->SD:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/StoreType;

    .line 14
    new-instance v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/StoreType;

    const-string v3, "MEM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/StoreType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/StoreType;->MEM:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/StoreType;

    .line 12
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/StoreType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/StoreType;->d:[Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/StoreType;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/StoreType;->b:Ljava/util/Map;

    .line 19
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/StoreType;->c:Landroid/util/SparseArray;

    .line 23
    invoke-static {}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/StoreType;->values()[Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/StoreType;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 24
    .local v3, "type":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/StoreType;
    sget-object v4, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/StoreType;->b:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/StoreType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v4, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/StoreType;->c:Landroid/util/SparseArray;

    iget v5, v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/StoreType;->a:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 23
    .end local v3    # "type":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/StoreType;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 27
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

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput p3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/StoreType;->a:I

    .line 31
    return-void
.end method

.method public static convert(I)Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/StoreType;
    .locals 1
    .param p0, "value"    # I

    .line 39
    sget-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/StoreType;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/StoreType;

    return-object v0
.end method

.method public static convert(Ljava/lang/String;)Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/StoreType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 43
    sget-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/StoreType;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/StoreType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/StoreType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 12
    const-class v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/StoreType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/StoreType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/StoreType;
    .locals 1

    .line 12
    sget-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/StoreType;->d:[Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/StoreType;

    invoke-virtual {v0}, [Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/StoreType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/StoreType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/StoreType;->a:I

    return v0
.end method
