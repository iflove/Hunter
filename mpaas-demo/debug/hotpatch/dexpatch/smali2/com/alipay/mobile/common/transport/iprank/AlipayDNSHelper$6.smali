.class Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper$6;
.super Ljava/lang/Object;
.source "AlipayDNSHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->g()V
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

    .line 421
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper$6;->this$0:Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 424
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper$6;->this$0:Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;

    # getter for: Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->e:I
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->access$300(Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;)I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_0

    .line 425
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper$6;->this$0:Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;

    # invokes: Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->h()V
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->access$400(Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;)V

    .line 426
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper$6;->this$0:Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;

    const/4 v1, 0x0

    # setter for: Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->e:I
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->access$302(Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;I)I

    .line 427
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper$6;->this$0:Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;

    # setter for: Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->f:I
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->access$502(Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;I)I

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper$6;->this$0:Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper$6;->this$0:Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;

    # getter for: Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->e:I
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->access$300(Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;)I

    move-result v1

    const-string v2, "iprank_queryNum"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/common/transport/utils/SharedPreUtils;->putData(Landroid/content/Context;Ljava/lang/String;I)V

    .line 430
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper$6;->this$0:Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper$6;->this$0:Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;

    # getter for: Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->f:I
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->access$500(Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;)I

    move-result v1

    const-string v2, "iprank_hitNum"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/common/transport/utils/SharedPreUtils;->putData(Landroid/content/Context;Ljava/lang/String;I)V

    .line 431
    return-void
.end method
