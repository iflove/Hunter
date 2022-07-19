.class Lcom/alipay/mobile/common/transport/httpdns/HttpDns$DnsReqTaskStrong;
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
    name = "DnsReqTaskStrong"
.end annotation


# instance fields
.field private a:Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;

.field final synthetic this$0:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transport/httpdns/HttpDns;Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/transport/httpdns/HttpDns;
    .param p2, "opt"    # Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;

    .line 1050
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$DnsReqTaskStrong;->this$0:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1051
    iput-object p2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$DnsReqTaskStrong;->a:Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;

    .line 1052
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1048
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$DnsReqTaskStrong;->this$0:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$DnsReqTaskStrong;->a:Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;

    # invokes: Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->b(Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->access$300(Lcom/alipay/mobile/common/transport/httpdns/HttpDns;Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;)V

    .line 1049
    return-void
.end method
