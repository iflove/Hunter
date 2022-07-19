.class final Lcom/alipay/mobile/nebulauc/impl/setup/UcNetworkSetup$1;
.super Ljava/lang/Object;
.source "UcNetworkSetup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/impl/setup/UcNetworkSetup;->initNetworkConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 46
    # invokes: Lcom/alipay/mobile/nebulauc/impl/setup/UcNetworkSetup;->setThirdNetwork()V
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/setup/UcNetworkSetup;->access$000()V

    .line 47
    # invokes: Lcom/alipay/mobile/nebulauc/impl/setup/UcNetworkSetup;->setNetworkDelegate()V
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/setup/UcNetworkSetup;->access$100()V

    .line 48
    # invokes: Lcom/alipay/mobile/nebulauc/impl/setup/UcNetworkSetup;->initUcRequestSetting()V
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/setup/UcNetworkSetup;->access$200()V

    .line 49
    # invokes: Lcom/alipay/mobile/nebulauc/impl/setup/UcNetworkSetup;->initHttpCacheUpperSize()V
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/setup/UcNetworkSetup;->access$300()V

    .line 50
    # invokes: Lcom/alipay/mobile/nebulauc/impl/setup/UcNetworkSetup;->initUcHttpCacheSdCardSetting()V
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/setup/UcNetworkSetup;->access$400()V

    .line 51
    return-void
.end method
