.class public final enum Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSPALoadResult$CubeSPALoadResultType;
.super Ljava/lang/Enum;
.source "CubeSPALoadResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSPALoadResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CubeSPALoadResultType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSPALoadResult$CubeSPALoadResultType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSPALoadResult$CubeSPALoadResultType;

.field public static final enum DOWNLAOD_ERROR:Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSPALoadResult$CubeSPALoadResultType;

.field public static final enum PARSE_ERROR:Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSPALoadResult$CubeSPALoadResultType;

.field public static final enum SUCCESS:Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSPALoadResult$CubeSPALoadResultType;

.field public static final enum UNKONW_ERROR:Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSPALoadResult$CubeSPALoadResultType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 5
    new-instance v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSPALoadResult$CubeSPALoadResultType;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSPALoadResult$CubeSPALoadResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSPALoadResult$CubeSPALoadResultType;->SUCCESS:Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSPALoadResult$CubeSPALoadResultType;

    .line 6
    new-instance v1, Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSPALoadResult$CubeSPALoadResultType;

    const-string v3, "PARSE_ERROR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSPALoadResult$CubeSPALoadResultType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSPALoadResult$CubeSPALoadResultType;->PARSE_ERROR:Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSPALoadResult$CubeSPALoadResultType;

    .line 7
    new-instance v3, Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSPALoadResult$CubeSPALoadResultType;

    const-string v5, "DOWNLAOD_ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSPALoadResult$CubeSPALoadResultType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSPALoadResult$CubeSPALoadResultType;->DOWNLAOD_ERROR:Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSPALoadResult$CubeSPALoadResultType;

    .line 8
    new-instance v5, Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSPALoadResult$CubeSPALoadResultType;

    const-string v7, "UNKONW_ERROR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSPALoadResult$CubeSPALoadResultType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSPALoadResult$CubeSPALoadResultType;->UNKONW_ERROR:Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSPALoadResult$CubeSPALoadResultType;

    .line 4
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSPALoadResult$CubeSPALoadResultType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSPALoadResult$CubeSPALoadResultType;->$VALUES:[Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSPALoadResult$CubeSPALoadResultType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSPALoadResult$CubeSPALoadResultType;
    .locals 1

    .line 4
    const-class v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSPALoadResult$CubeSPALoadResultType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSPALoadResult$CubeSPALoadResultType;

    return-object p0
.end method

.method public static values()[Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSPALoadResult$CubeSPALoadResultType;
    .locals 1

    .line 4
    sget-object v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSPALoadResult$CubeSPALoadResultType;->$VALUES:[Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSPALoadResult$CubeSPALoadResultType;

    invoke-virtual {v0}, [Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSPALoadResult$CubeSPALoadResultType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSPALoadResult$CubeSPALoadResultType;

    return-object v0
.end method
