.class Lcom/alipay/mobile/nebulax/engine/common/c/b$1;
.super Ljava/lang/Object;
.source "CommonBackPerform.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/engine/api/model/GoBackCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulax/engine/common/c/b;->a(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext;Lcom/alipay/mobile/nebulax/engine/api/model/GoBackCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulax/engine/api/model/GoBackCallback;

.field final synthetic b:Lcom/alipay/mobile/nebulax/engine/common/c/b;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulax/engine/common/c/b;Lcom/alipay/mobile/nebulax/engine/api/model/GoBackCallback;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/common/c/b$1;->b:Lcom/alipay/mobile/nebulax/engine/common/c/b;

    iput-object p2, p0, Lcom/alipay/mobile/nebulax/engine/common/c/b$1;->a:Lcom/alipay/mobile/nebulax/engine/api/model/GoBackCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterProcess(Z)V
    .locals 1

    .line 97
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/common/c/b$1;->b:Lcom/alipay/mobile/nebulax/engine/common/c/b;

    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/common/c/b$1;->a:Lcom/alipay/mobile/nebulax/engine/api/model/GoBackCallback;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/nebulax/engine/common/c/b;->b(Lcom/alipay/mobile/nebulax/engine/api/model/GoBackCallback;)V

    .line 98
    return-void
.end method
