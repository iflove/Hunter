.class Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz$1;
.super Ljava/lang/Object;
.source "IpRankStorageBiz.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->getIpFromCache(Ljava/lang/String;)[Ljava/net/InetAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;

.field final synthetic val$host:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;

    .line 195
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz$1;->this$0:Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;

    iput-object p2, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz$1;->val$host:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 200
    const-string v0, "IPR_StorageBiz"

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz$1;->this$0:Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;

    # getter for: Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->d:Landroid/util/LruCache;
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->access$000(Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;)Landroid/util/LruCache;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz$1;->val$host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getIpFromCache,dns time out,request again,host:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz$1;->val$host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz$1;->this$0:Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;

    # getter for: Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->a:Landroid/content/Context;
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;->access$100(Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/iprank/biz/IpRankStorageBiz$1;->val$host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/iprank/mng/resolve/LocalDNSResolve;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    return-void

    .line 203
    :catchall_0
    move-exception v1

    .line 204
    .local v1, "ex":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getIpFromCache exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .end local v1    # "ex":Ljava/lang/Throwable;
    return-void
.end method
