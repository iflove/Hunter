.class public final enum Lcom/alipay/mobile/nebulax/engine/api/model/EngineType;
.super Ljava/lang/Enum;
.source "EngineType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobile/nebulax/engine/api/model/EngineType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/nebulax/engine/api/model/EngineType;

.field public static final enum CUBE:Lcom/alipay/mobile/nebulax/engine/api/model/EngineType;

.field public static final enum WEB:Lcom/alipay/mobile/nebulax/engine/api/model/EngineType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 8
    new-instance v0, Lcom/alipay/mobile/nebulax/engine/api/model/EngineType;

    const-string v1, "WEB"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/nebulax/engine/api/model/EngineType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/nebulax/engine/api/model/EngineType;->WEB:Lcom/alipay/mobile/nebulax/engine/api/model/EngineType;

    .line 9
    new-instance v1, Lcom/alipay/mobile/nebulax/engine/api/model/EngineType;

    const-string v3, "CUBE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/alipay/mobile/nebulax/engine/api/model/EngineType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/alipay/mobile/nebulax/engine/api/model/EngineType;->CUBE:Lcom/alipay/mobile/nebulax/engine/api/model/EngineType;

    .line 7
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/alipay/mobile/nebulax/engine/api/model/EngineType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/alipay/mobile/nebulax/engine/api/model/EngineType;->$VALUES:[Lcom/alipay/mobile/nebulax/engine/api/model/EngineType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/api/model/EngineType;
    .locals 1

    .line 7
    const-class v0, Lcom/alipay/mobile/nebulax/engine/api/model/EngineType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alipay/mobile/nebulax/engine/api/model/EngineType;

    return-object p0
.end method

.method public static values()[Lcom/alipay/mobile/nebulax/engine/api/model/EngineType;
    .locals 1

    .line 7
    sget-object v0, Lcom/alipay/mobile/nebulax/engine/api/model/EngineType;->$VALUES:[Lcom/alipay/mobile/nebulax/engine/api/model/EngineType;

    invoke-virtual {v0}, [Lcom/alipay/mobile/nebulax/engine/api/model/EngineType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/nebulax/engine/api/model/EngineType;

    return-object v0
.end method
