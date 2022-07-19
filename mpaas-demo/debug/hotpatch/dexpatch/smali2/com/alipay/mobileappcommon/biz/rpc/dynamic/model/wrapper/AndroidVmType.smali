.class public final enum Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;
.super Ljava/lang/Enum;
.source "AndroidVmType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALL:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;

.field public static final enum AOC:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;

.field public static final enum ART:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;

.field public static final enum Dalvik:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;

.field public static final enum Lemur:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic d:[Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 14
    new-instance v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;

    const-string v1, "ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;->ALL:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;

    .line 15
    new-instance v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;

    const-string v3, "ART"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;->ART:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;

    .line 16
    new-instance v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;

    const-string v5, "Dalvik"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;->Dalvik:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;

    .line 17
    new-instance v5, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;

    const-string v7, "Lemur"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;->Lemur:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;

    .line 18
    new-instance v7, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;

    const-string v9, "AOC"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;->AOC:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;

    .line 13
    const/4 v9, 0x5

    new-array v9, v9, [Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;->d:[Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;->b:Ljava/util/Map;

    .line 24
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;->c:Landroid/util/SparseArray;

    .line 28
    invoke-static {}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;->values()[Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 29
    .local v3, "type":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;
    sget-object v4, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;->b:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v4, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;->c:Landroid/util/SparseArray;

    iget v5, v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;->a:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 28
    .end local v3    # "type":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 32
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

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput p3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;->a:I

    .line 36
    return-void
.end method

.method public static convert(I)Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;
    .locals 1
    .param p0, "value"    # I

    .line 43
    sget-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;

    return-object v0
.end method

.method public static convert(Ljava/lang/String;)Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 47
    sget-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 13
    const-class v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;
    .locals 1

    .line 13
    sget-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;->d:[Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;

    invoke-virtual {v0}, [Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;->a:I

    return v0
.end method
