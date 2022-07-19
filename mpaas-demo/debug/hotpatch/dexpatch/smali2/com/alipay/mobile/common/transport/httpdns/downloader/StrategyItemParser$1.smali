.class final Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyItemParser$1;
.super Ljava/lang/Object;
.source "StrategyItemParser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyItemParser;->a(Lcom/alibaba/fastjson/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 116
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    # getter for: Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyItemParser;->a:Z
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyItemParser;->access$000()Z

    move-result v1

    const-string/jumbo v2, "oversea"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/common/transport/utils/SharedPreUtils;->putData(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 117
    return-void
.end method
