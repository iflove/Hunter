.class Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper$3;
.super Ljava/lang/Object;
.source "AlipayDNSHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->feedback(Ljava/lang/String;Ljava/lang/String;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;

.field final synthetic val$domain:Ljava/lang/String;

.field final synthetic val$ip:Ljava/lang/String;

.field final synthetic val$isSuccess:Z

.field final synthetic val$rtt:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;

    .line 294
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper$3;->this$0:Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;

    iput-object p2, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper$3;->val$domain:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper$3;->val$ip:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper$3;->val$isSuccess:Z

    iput p5, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper$3;->val$rtt:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 297
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper$3;->this$0:Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper;->domainFeedback:Lcom/alipay/mobile/common/transport/iprank/mng/feedback/DomainFeedback;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper$3;->val$domain:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper$3;->val$ip:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper$3;->val$isSuccess:Z

    iget v4, p0, Lcom/alipay/mobile/common/transport/iprank/AlipayDNSHelper$3;->val$rtt:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/common/transport/iprank/mng/feedback/DomainFeedback;->feedback(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 298
    return-void
.end method
