.class Lcom/alipay/mobile/nebulax/engine/a/d/b$11;
.super Ljava/lang/Object;
.source "NXH5WebViewClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulax/engine/a/d/b;->a(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/net/Uri;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebula/webview/APWebView;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/mobile/nebulax/engine/a/d/b;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulax/engine/a/d/b;Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)V
    .locals 0

    .line 1488
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$11;->c:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    iput-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$11;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    iput-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$11;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1491
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$11;->c:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    iget-object v0, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    const-string v1, "handle hasInputException"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$11;->c:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$11;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$11;->b:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a(Lcom/alipay/mobile/nebulax/engine/a/d/b;Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;I)V

    .line 1493
    return-void
.end method
