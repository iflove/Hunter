.class Lcom/alipay/mobile/nebulax/engine/cube/f/c$4;
.super Ljava/lang/Object;
.source "NXCubeView.java"

# interfaces
.implements Lcom/antfin/cube/cubecore/api/CKView$CKScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulax/engine/cube/f/c;->setScrollChangedCallback(Lcom/alipay/mobile/nebulax/engine/api/model/ScrollChangedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulax/engine/api/model/ScrollChangedCallback;

.field final synthetic b:Lcom/alipay/mobile/nebulax/engine/cube/f/c;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulax/engine/cube/f/c;Lcom/alipay/mobile/nebulax/engine/api/model/ScrollChangedCallback;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c$4;->b:Lcom/alipay/mobile/nebulax/engine/cube/f/c;

    iput-object p2, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c$4;->a:Lcom/alipay/mobile/nebulax/engine/api/model/ScrollChangedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(IIII)V
    .locals 0

    .line 318
    iget-object p3, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c$4;->a:Lcom/alipay/mobile/nebulax/engine/api/model/ScrollChangedCallback;

    invoke-interface {p3, p1, p2}, Lcom/alipay/mobile/nebulax/engine/api/model/ScrollChangedCallback;->onScroll(II)V

    .line 319
    return-void
.end method
