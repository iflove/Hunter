.class Lcom/alipay/mobile/nebulax/engine/a/d/b$8;
.super Ljava/lang/Object;
.source "NXH5WebViewClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulax/engine/a/d/b;->shouldInterceptResponse(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/util/HashMap;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebula/webview/APWebView;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Lcom/alipay/mobile/nebulax/engine/a/d/b;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulax/engine/a/d/b;Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;I)V
    .locals 0

    .line 938
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$8;->d:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    iput-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$8;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    iput-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$8;->b:Ljava/lang/String;

    iput p4, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$8;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 941
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$8;->d:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$8;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$8;->b:Ljava/lang/String;

    iget v3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$8;->c:I

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a(Lcom/alipay/mobile/nebulax/engine/a/d/b;Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;I)V

    .line 942
    return-void
.end method
