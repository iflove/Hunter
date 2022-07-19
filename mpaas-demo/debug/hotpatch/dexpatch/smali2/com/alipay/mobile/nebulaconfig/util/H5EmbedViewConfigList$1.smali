.class final Lcom/alipay/mobile/nebulaconfig/util/H5EmbedViewConfigList$1;
.super Ljava/util/ArrayList;
.source "H5EmbedViewConfigList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulaconfig/util/H5EmbedViewConfigList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 5

    .line 17
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    new-instance v0, Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;

    const-string v1, "android-phone-mobilecommon-map"

    const-string v2, "com.alipay.mobile.embedview.H5EmbedMapView"

    const-string/jumbo v3, "map"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaconfig/util/H5EmbedViewConfigList$1;->add(Ljava/lang/Object;)Z

    .line 24
    new-instance v0, Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;

    const-string v1, "android-phone-wallet-nebulabiz"

    const-string v2, "com.alipay.mobile.nebulabiz.embedview.H5EmbedLottieView"

    const-string v3, "lottie"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaconfig/util/H5EmbedViewConfigList$1;->add(Ljava/lang/Object;)Z

    .line 28
    new-instance v0, Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;

    sget-object v1, Lcom/alipay/mobile/nebulaconfig/util/H5EmbedViewConfigList;->nebulauc:Ljava/lang/String;

    const-string v2, "com.alipay.mobile.nebulauc.embedview.H5WalletEmbedWebView"

    const-string/jumbo v3, "web-view"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaconfig/util/H5EmbedViewConfigList$1;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v0, Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;

    const-string v1, "android-phone-wallet-nebula"

    const-string v2, "com.alipay.mobile.nebula.embedviewcommon.H5NewEmbedBaseView"

    const-string/jumbo v3, "newembedbase"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaconfig/util/H5EmbedViewConfigList$1;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v0, Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;

    const-string v1, "android-phone-wallet-beehive"

    const-string v2, "com.alipay.mobile.beehive.video.h5.H5BeeVideoPlayerView"

    const-string/jumbo v3, "video"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaconfig/util/H5EmbedViewConfigList$1;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v0, Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;

    const-string v2, "android-phone-wallet-canvas"

    const-string v3, "com.alipay.mobile.canvas.tinyapp.CanvasEmbedViewController"

    const-string v4, "canvas"

    invoke-direct {v0, v2, v3, v4}, Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaconfig/util/H5EmbedViewConfigList$1;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v0, Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;

    const-string v2, "com.alipay.mobile.beehive.live.h5.H5BeeLivePushView"

    const-string v3, "live-pusher"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaconfig/util/H5EmbedViewConfigList$1;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance v0, Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;

    const-string v2, "com.alipay.mobile.beehive.lottie.H5BeeLottieView"

    const-string v3, "lottieview"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaconfig/util/H5EmbedViewConfigList$1;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v0, Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;

    const-string v2, "android-phone-wallet-beecapture"

    const-string v3, "com.alipay.mobile.beehive.capture.plugin.H5CaptureView"

    const-string v4, "camera"

    invoke-direct {v0, v2, v3, v4}, Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaconfig/util/H5EmbedViewConfigList$1;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v0, Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;

    const-string v2, "android-phone-wallet-advertisement"

    const-string v3, "com.alipay.android.phone.businesscommon.advertisement.ui.APH5AdvertisementView"

    const-string v4, "ad"

    invoke-direct {v0, v2, v3, v4}, Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaconfig/util/H5EmbedViewConfigList$1;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v0, Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;

    sget-object v2, Lcom/alipay/mobile/nebulaconfig/util/H5EmbedViewConfigList;->nebulauc:Ljava/lang/String;

    const-string v3, "com.alipay.mobile.nebulauc.embedview.input.H5EmbedEditText"

    const-string v4, "input"

    invoke-direct {v0, v2, v3, v4}, Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaconfig/util/H5EmbedViewConfigList$1;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v0, Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;

    const-string v2, "com.alipay.mobile.beehive.video.h5.H5BeeLivePlayerView"

    const-string v3, "live-player"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaconfig/util/H5EmbedViewConfigList$1;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v0, Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;

    const-string v1, "android-phone-wallet-beeaicomponent"

    const-string v2, "com.alipay.wallet.beeai.h5plugin.component.AICameraView"

    const-string v3, "ai-camera"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaconfig/util/H5EmbedViewConfigList$1;->add(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method
