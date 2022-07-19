.class Lcom/alipay/mobile/nebulax/engine/a/d/d$2;
.super Ljava/lang/Object;
.source "NXWebView.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/webview/APDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulax/engine/a/d/d;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulax/engine/a/d/d;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulax/engine/a/d/d;)V
    .locals 0

    .line 568
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d$2;->a:Lcom/alipay/mobile/nebulax/engine/a/d/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9

    .line 572
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5UrlDownloadProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5UrlDownloadProvider;

    .line 573
    if-eqz v1, :cond_0

    .line 574
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d$2;->a:Lcom/alipay/mobile/nebulax/engine/a/d/d;

    .line 575
    invoke-static {v0}, Lcom/alipay/mobile/nebulax/engine/a/d/d;->b(Lcom/alipay/mobile/nebulax/engine/a/d/d;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v8

    .line 574
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-interface/range {v1 .. v8}, Lcom/alipay/mobile/nebula/provider/H5UrlDownloadProvider;->handleDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/alipay/mobile/h5container/api/H5Page;)V

    goto :goto_0

    .line 577
    :cond_0
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d$2;->a:Lcom/alipay/mobile/nebulax/engine/a/d/d;

    invoke-static {p2}, Lcom/alipay/mobile/nebulax/engine/a/d/d;->b(Lcom/alipay/mobile/nebulax/engine/a/d/d;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p2, p1, p3}, Lcom/alipay/mobile/nebulacore/Nebula;->openInBrowser(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 579
    :goto_0
    return-void
.end method
