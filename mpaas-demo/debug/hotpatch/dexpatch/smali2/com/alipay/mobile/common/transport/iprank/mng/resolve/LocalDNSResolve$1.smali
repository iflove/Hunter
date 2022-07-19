.class Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve$1;
.super Ljava/lang/Object;
.source "LocalDNSResolve.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;

.field final synthetic val$host:Ljava/lang/String;

.field final synthetic val$inetAddresses:[Ljava/net/InetAddress;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;Ljava/lang/String;[Ljava/net/InetAddress;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;

    .line 86
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve$1;->this$0:Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;

    iput-object p2, p0, Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve$1;->val$host:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve$1;->val$inetAddresses:[Ljava/net/InetAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 94
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    .line 95
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->IPRANK_TTL:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getIntValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)I

    move-result v0

    .line 98
    .local v0, "ttlConfig":I
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve$1;->this$0:Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve$1;->val$host:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve$1;->val$inetAddresses:[Ljava/net/InetAddress;

    # invokes: Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;->a(Ljava/lang/String;[Ljava/net/InetAddress;I)Ljava/util/ArrayList;
    invoke-static {v1, v2, v3, v0}, Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;->access$000(Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;Ljava/lang/String;[Ljava/net/InetAddress;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 100
    .local v1, "list":Ljava/util/ArrayList;
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve$1;->this$0:Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve$1;->val$host:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve$1;->val$inetAddresses:[Ljava/net/InetAddress;

    # invokes: Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;->a(Ljava/lang/String;Ljava/util/ArrayList;I[Ljava/net/InetAddress;)V
    invoke-static {v2, v3, v1, v0, v4}, Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;->access$100(Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;Ljava/lang/String;Ljava/util/ArrayList;I[Ljava/net/InetAddress;)V

    .line 101
    return-void
.end method
