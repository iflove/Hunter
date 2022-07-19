.class final Lcom/alipay/mobile/nebulauc/impl/setup/UcVideoSetup$4;
.super Ljava/lang/Object;
.source "UcVideoSetup.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulauc/impl/setup/UcVideoSetup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 52
    # invokes: Lcom/alipay/mobile/nebulauc/impl/setup/UcVideoSetup;->updateWebAudioDecodePolicy(Ljava/lang/String;)V
    invoke-static {p1}, Lcom/alipay/mobile/nebulauc/impl/setup/UcVideoSetup;->access$000(Ljava/lang/String;)V

    .line 53
    return-void
.end method
