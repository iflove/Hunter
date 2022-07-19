.class public final enum Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;
.super Ljava/lang/Enum;
.source "InsideUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebula/util/InsideUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InsideType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;

.field public static final enum ANTFIN:Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;

.field public static final enum MPAAS:Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;

.field public static final enum TINY_INSIDE:Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;

.field public static final enum WALLET:Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 18
    new-instance v0, Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;

    const-string v1, "WALLET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;->WALLET:Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;

    .line 19
    new-instance v1, Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;

    const-string v3, "MPAAS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;->MPAAS:Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;

    .line 20
    new-instance v3, Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;

    const-string v5, "TINY_INSIDE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;->TINY_INSIDE:Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;

    .line 21
    new-instance v5, Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;

    const-string v7, "ANTFIN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;->ANTFIN:Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;

    .line 17
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;->$VALUES:[Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 17
    const-class v0, Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;
    .locals 1

    .line 17
    sget-object v0, Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;->$VALUES:[Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;

    invoke-virtual {v0}, [Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;

    return-object v0
.end method
