.class Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper$2;
.super Ljava/lang/Object;
.source "AlipayDNSHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->removeSingleIp(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;

.field final synthetic val$host:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;

    .line 260
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper$2;->this$0:Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;

    iput-object p2, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper$2;->val$host:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 264
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->getInstance()Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper$2;->val$host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->getAllByNameByLocalDNS(Ljava/lang/String;)[Ljava/net/InetAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    return-void

    .line 265
    :catchall_0
    move-exception v0

    .line 266
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v1, "IPR_ADNSHelper"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 268
    .end local v0    # "ex":Ljava/lang/Throwable;
    return-void
.end method
