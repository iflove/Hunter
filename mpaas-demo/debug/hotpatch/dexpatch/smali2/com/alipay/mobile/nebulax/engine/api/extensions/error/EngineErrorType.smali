.class public final enum Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineErrorType;
.super Ljava/lang/Enum;
.source "EngineErrorType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineErrorType;

.field public static final enum ASSERT_EXCEPTION:Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineErrorType;

.field public static final enum COMMON_EXCEPTION:Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineErrorType;

.field public static final enum JS_EXCEPTION:Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineErrorType;


# instance fields
.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 8
    new-instance v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineErrorType;

    const-string v1, "JS_EXCEPTION"

    const/4 v2, 0x0

    const-string v3, "javascript"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineErrorType;->JS_EXCEPTION:Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineErrorType;

    .line 9
    new-instance v1, Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineErrorType;

    const-string v3, "ASSERT_EXCEPTION"

    const/4 v4, 0x1

    const-string v5, "assert"

    invoke-direct {v1, v3, v4, v5}, Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineErrorType;->ASSERT_EXCEPTION:Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineErrorType;

    .line 10
    new-instance v3, Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineErrorType;

    const-string v5, "COMMON_EXCEPTION"

    const/4 v6, 0x2

    const-string v7, "common"

    invoke-direct {v3, v5, v6, v7}, Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineErrorType;->COMMON_EXCEPTION:Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineErrorType;

    .line 7
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineErrorType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineErrorType;->$VALUES:[Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput-object p3, p0, Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineErrorType;->type:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineErrorType;
    .locals 1

    .line 7
    const-class v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineErrorType;

    return-object p0
.end method

.method public static values()[Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineErrorType;
    .locals 1

    .line 7
    sget-object v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineErrorType;->$VALUES:[Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineErrorType;

    invoke-virtual {v0}, [Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineErrorType;

    return-object v0
.end method


# virtual methods
.method public value()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineErrorType;->type:Ljava/lang/String;

    return-object v0
.end method
