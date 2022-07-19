.class Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve$InetAddrGetAllByNameTask;
.super Ljava/lang/Object;
.source "LocalDNSResolve.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InetAddrGetAllByNameTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "[",
        "Ljava/net/InetAddress;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field final synthetic this$0:Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;
    .param p2, "host"    # Ljava/lang/String;

    .line 200
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve$InetAddrGetAllByNameTask;->this$0:Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-object p2, p0, Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve$InetAddrGetAllByNameTask;->a:Ljava/lang/String;

    .line 202
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 196
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve$InetAddrGetAllByNameTask;->call()[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public call()[Ljava/net/InetAddress;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve$InetAddrGetAllByNameTask;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method
