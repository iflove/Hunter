.class public Lcom/alipay/mobile/nebulauc/embedview/H5WalletEmbedWebView;
.super Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;
.source "H5WalletEmbedWebView.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;-><init>()V

    return-void
.end method


# virtual methods
.method protected canInterceptBackEvent()Z
    .locals 1

    .line 18
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->canInterceptBackEvent()Z

    move-result v0

    return v0
.end method
