.class final Lcom/alipay/mobile/common/utils/SharedSwitchUtil$1;
.super Ljava/util/ArrayList;
.source "SharedSwitchUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/utils/SharedSwitchUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    const-string/jumbo v0, "netsdk_normal_switch"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/utils/SharedSwitchUtil$1;->add(Ljava/lang/Object;)Z

    .line 76
    const-string v0, "android_network_core"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/utils/SharedSwitchUtil$1;->add(Ljava/lang/Object;)Z

    .line 78
    const-string/jumbo v0, "spdy_uniformorigin_config"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/utils/SharedSwitchUtil$1;->add(Ljava/lang/Object;)Z

    .line 80
    const-string/jumbo v0, "thread_pool_config"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/utils/SharedSwitchUtil$1;->add(Ljava/lang/Object;)Z

    .line 82
    const-string/jumbo v0, "mdap_upload_white_config"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/utils/SharedSwitchUtil$1;->add(Ljava/lang/Object;)Z

    .line 84
    const-string/jumbo v0, "positive_log_white_config"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/utils/SharedSwitchUtil$1;->add(Ljava/lang/Object;)Z

    .line 85
    return-void
.end method
