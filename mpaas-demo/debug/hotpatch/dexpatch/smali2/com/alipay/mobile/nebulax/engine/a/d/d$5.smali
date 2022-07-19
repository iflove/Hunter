.class Lcom/alipay/mobile/nebulax/engine/a/d/d$5;
.super Ljava/lang/Object;
.source "NXWebView.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/webview/H5ScrollChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulax/engine/a/d/d;->setScrollChangedCallback(Lcom/alipay/mobile/nebulax/engine/api/model/ScrollChangedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulax/engine/api/model/ScrollChangedCallback;

.field final synthetic b:Lcom/alipay/mobile/nebulax/engine/a/d/d;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulax/engine/a/d/d;Lcom/alipay/mobile/nebulax/engine/api/model/ScrollChangedCallback;)V
    .locals 0

    .line 618
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d$5;->b:Lcom/alipay/mobile/nebulax/engine/a/d/d;

    iput-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d$5;->a:Lcom/alipay/mobile/nebulax/engine/api/model/ScrollChangedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(II)V
    .locals 1

    .line 621
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d$5;->a:Lcom/alipay/mobile/nebulax/engine/api/model/ScrollChangedCallback;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/nebulax/engine/api/model/ScrollChangedCallback;->onScroll(II)V

    .line 622
    return-void
.end method
