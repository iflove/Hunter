.class public Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse;
.super Ljava/lang/Object;
.source "BridgeResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse$NamedValue;,
        Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse$Error;,
        Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse$ErrorCode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final ERROR_CODE_FORBIDDEN_ERROR:I = 0x4

.field public static final ERROR_CODE_INVALID_PARAM:I = 0x2

.field public static final ERROR_CODE_NOT_FOUND:I = 0x1

.field public static final ERROR_CODE_SYSTEM_ERROR:I = 0x5

.field public static final ERROR_CODE_UNKNOWN_ERROR:I = 0x3

.field public static FORBIDDEN_ERROR:Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse;

.field public static INVALID_PARAM:Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse;

.field public static NOT_FOUND:Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse;

.field public static SUCCESS:Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse;

.field public static UNKNOWN_ERROR:Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse;


# instance fields
.field private response:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 13
    new-instance v0, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse$NamedValue;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "success"

    invoke-direct {v0, v3, v2}, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse$NamedValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v0, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse;->SUCCESS:Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse;

    .line 28
    new-instance v0, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse$Error;

    const-string v2, "not implemented!"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse$Error;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse;->NOT_FOUND:Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse;

    .line 29
    new-instance v0, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse$Error;

    const/4 v1, 0x2

    const-string v2, "invalid parameter!"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse$Error;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse;->INVALID_PARAM:Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse;

    .line 30
    new-instance v0, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse$Error;

    const/4 v1, 0x3

    const-string v2, "unknown error!"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse$Error;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse;->UNKNOWN_ERROR:Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse;

    .line 31
    new-instance v0, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse$Error;

    const/4 v1, 0x4

    const-string v2, "forbidden error!"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse$Error;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse;->FORBIDDEN_ERROR:Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse;->response:Ljava/lang/Object;

    .line 67
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse;->response:Ljava/lang/Object;

    return-object v0
.end method
