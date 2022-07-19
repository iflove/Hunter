.class Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper$4;
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
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;

    .line 307
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper$4;->this$0:Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 311
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper$4;->this$0:Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;

    # invokes: Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->b()Ljava/util/List;
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->access$000(Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;)Ljava/util/List;

    move-result-object v0

    .line 312
    .local v0, "hosts":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 313
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 314
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper$4;->this$0:Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;

    iget-object v2, v2, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->localDNSResolve:Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 319
    .end local v0    # "hosts":Ljava/util/List;
    .end local v1    # "i":I
    :cond_1
    return-void

    .line 317
    :catchall_0
    move-exception v0

    .line 318
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v1, "IPR_ADNSHelper"

    const-string/jumbo v2, "preResolve exception"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 320
    .end local v0    # "ex":Ljava/lang/Throwable;
    return-void
.end method
