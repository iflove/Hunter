.class Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper$5;
.super Ljava/lang/Object;
.source "AlipayDNSHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;

    .line 379
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper$5;->this$0:Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 382
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper$5;->this$0:Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->speedTestBiz:Lcom/alipay/mobile/common/transport/iprank/biz/SpeedTestBiz;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/iprank/biz/SpeedTestBiz;->speedTest()V

    .line 383
    const-string v0, "IPR_ADNSHelper"

    const-string/jumbo v1, "stop speed test task"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    return-void
.end method
