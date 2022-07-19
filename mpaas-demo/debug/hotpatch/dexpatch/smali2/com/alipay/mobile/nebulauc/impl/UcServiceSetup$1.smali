.class final Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$1;
.super Ljava/lang/Object;
.source "UcServiceSetup.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Ljava/lang/String;)V
    .locals 0
    .param p1, "newValue"    # Ljava/lang/String;

    .line 119
    # invokes: Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->configureWebViewPool(Ljava/lang/String;)V
    invoke-static {p1}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->access$000(Ljava/lang/String;)V

    .line 120
    return-void
.end method
