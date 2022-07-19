.class Lcom/alipay/mobile/nebulax/engine/cube/b/c$1;
.super Lcom/alipay/mobile/nebulacore/web/H5WebView;
.source "CubeNXBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulax/engine/cube/b/c;-><init>(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/engine/cube/f/c;Lcom/antfin/cube/cubecore/api/CKApp;Lcom/alipay/mobile/h5container/api/H5Page;Lcom/alipay/mobile/nebulax/engine/cube/c/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulax/engine/cube/c/a;

.field final synthetic b:Lcom/alipay/mobile/nebulax/engine/cube/b/c;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulax/engine/cube/b/c;Lcom/alipay/mobile/nebulax/engine/cube/c/a;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/c$1;->b:Lcom/alipay/mobile/nebulax/engine/cube/b/c;

    iput-object p2, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/c$1;->a:Lcom/alipay/mobile/nebulax/engine/cube/c/a;

    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;-><init>()V

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/c$1;->a:Lcom/alipay/mobile/nebulax/engine/cube/c/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulax/engine/cube/c/a;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
