.class Lcom/alipay/mobile/nebulax/engine/cube/f/c$1;
.super Ljava/lang/Object;
.source "NXCubeView.java"

# interfaces
.implements Lcom/antfin/cube/cubecore/api/CKView$CKScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulax/engine/cube/f/c;->load(Lcom/alipay/mobile/nebulax/engine/api/model/LoadParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulax/engine/cube/f/c;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulax/engine/cube/f/c;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c$1;->a:Lcom/alipay/mobile/nebulax/engine/cube/f/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(IIII)V
    .locals 0

    .line 171
    iget-object p3, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c$1;->a:Lcom/alipay/mobile/nebulax/engine/cube/f/c;

    invoke-static {p3}, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->a(Lcom/alipay/mobile/nebulax/engine/cube/f/c;)Lcom/alipay/mobile/nebulax/engine/api/model/ScrollChangedCallback;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lcom/alipay/mobile/nebulax/engine/api/model/ScrollChangedCallback;->onScroll(II)V

    .line 172
    return-void
.end method
