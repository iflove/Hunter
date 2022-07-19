.class public Lcom/alipay/mobile/nebulax/kernel/extension/bridge/ActionMeta;
.super Ljava/lang/Object;
.source "ActionMeta.java"


# instance fields
.field public actionMethod:Ljava/lang/reflect/Method;

.field public actionName:Ljava/lang/String;

.field public bridgeExtensionClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/alipay/mobile/nebulax/kernel/extension/bridge/BridgeExtension;",
            ">;"
        }
    .end annotation
.end field

.field public guard:Lcom/alipay/mobile/nebulax/kernel/security/Guard;

.field public isAutoCallback:Z

.field public isParamRequired:Z

.field public returnType:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
