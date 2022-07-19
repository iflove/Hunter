.class Lcom/alipay/mobile/common/transport/httpdns/HttpDns$DnsReqTask;
.super Ljava/lang/Object;
.source "HttpDns.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/transport/httpdns/HttpDns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DnsReqTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transport/httpdns/HttpDns;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    .line 1002
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$DnsReqTask;->this$0:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1004
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$DnsReqTask;->this$0:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    # invokes: Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->c()V
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->access$200(Lcom/alipay/mobile/common/transport/httpdns/HttpDns;)V

    .line 1005
    return-void
.end method
