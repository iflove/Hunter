.class Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper$SpeedTestTask;
.super Ljava/lang/Object;
.source "AlipayDNSHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SpeedTestTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;

    .line 338
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper$SpeedTestTask;->this$0:Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 344
    sget-object v0, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->IPRANK_AB_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->grayscaleUtdidForABTest(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    const-string v0, "IPR_ADNSHelper"

    const-string v1, "iprank is off,need\'t speedtest"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    return-void

    .line 349
    :cond_0
    monitor-enter p0

    .line 350
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper$SpeedTestTask;->this$0:Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;

    # getter for: Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->d:I
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->access$100(Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 351
    const-string v0, "IPR_ADNSHelper"

    const-string v1, "SPEEDTEST_STATUS_BUSY, return."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    monitor-exit p0

    return-void

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper$SpeedTestTask;->this$0:Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;

    # setter for: Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->d:I
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->access$102(Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;I)I

    .line 355
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 359
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "IPR_ADNSHelper"

    const-string/jumbo v2, "start speed test task"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper$SpeedTestTask;->this$0:Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;

    # invokes: Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->c()V
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->access$200(Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 365
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper$SpeedTestTask;->this$0:Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;

    # setter for: Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->d:I
    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->access$102(Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;I)I

    .line 366
    return-void

    .line 362
    :catchall_0
    move-exception v1

    .line 363
    .local v1, "th":Ljava/lang/Throwable;
    :try_start_2
    const-string v2, "IPR_ADNSHelper"

    const-string v3, "SpeedTestTask exception"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v1    # "th":Ljava/lang/Throwable;
    goto :goto_0

    .line 365
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper$SpeedTestTask;->this$0:Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;

    # setter for: Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->d:I
    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->access$102(Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;I)I

    throw v1

    .line 355
    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method
