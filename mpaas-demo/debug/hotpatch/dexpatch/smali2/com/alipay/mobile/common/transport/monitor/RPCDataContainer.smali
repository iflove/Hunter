.class public Lcom/alipay/mobile/common/transport/monitor/RPCDataContainer;
.super Ljava/lang/Object;
.source "RPCDataContainer.java"

# interfaces
.implements Lcom/alipay/mobile/common/transport/monitor/DataContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/transport/monitor/RPCDataContainer$DateModel;
    }
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/transport/monitor/RPCDataContainer$DateModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/monitor/RPCDataContainer;->a:Ljava/util/Map;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/monitor/RPCDataContainer;->b:Ljava/util/Map;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "v"    # Ljava/lang/String;

    .line 67
    if-nez p0, :cond_0

    .line 68
    const/4 v0, 0x0

    return-object v0

    .line 72
    :cond_0
    const-string v0, ","

    const-string v1, "*"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDataItem(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "k"    # Ljava/lang/String;

    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/monitor/RPCDataContainer;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/monitor/RPCDataContainer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public putDataItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;

    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/monitor/RPCDataContainer;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    return-void
.end method

.method public removeDataItem(Ljava/lang/String;)V
    .locals 1
    .param p1, "k"    # Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/monitor/RPCDataContainer;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    return-void
.end method

.method public timeItemDot(Ljava/lang/String;)V
    .locals 2
    .param p1, "k"    # Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/monitor/RPCDataContainer;->b:Ljava/util/Map;

    new-instance v1, Lcom/alipay/mobile/common/transport/monitor/RPCDataContainer$DateModel;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/transport/monitor/RPCDataContainer$DateModel;-><init>(Lcom/alipay/mobile/common/transport/monitor/RPCDataContainer;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-void
.end method

.method public timeItemDot(Ljava/lang/String;J)V
    .locals 2
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "timeMillis"    # J

    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/monitor/RPCDataContainer;->b:Ljava/util/Map;

    new-instance v1, Lcom/alipay/mobile/common/transport/monitor/RPCDataContainer$DateModel;

    invoke-direct {v1, p0, p2, p3}, Lcom/alipay/mobile/common/transport/monitor/RPCDataContainer$DateModel;-><init>(Lcom/alipay/mobile/common/transport/monitor/RPCDataContainer;J)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    return-void
.end method

.method public timeItemRelease(Ljava/lang/String;)V
    .locals 6
    .param p1, "k"    # Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/monitor/RPCDataContainer;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/monitor/RPCDataContainer$DateModel;

    const/4 v1, 0x0

    .line 52
    .local v1, "dateModel":Lcom/alipay/mobile/common/transport/monitor/RPCDataContainer$DateModel;
    move-object v1, v0

    if-eqz v0, :cond_1

    iget-wide v2, v1, Lcom/alipay/mobile/common/transport/monitor/RPCDataContainer$DateModel;->mRequestTime:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/monitor/RPCDataContainer$DateModel;->getCost()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/common/transport/monitor/RPCDataContainer;->putDataItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void

    .line 53
    :cond_1
    :goto_0
    const-string v0, "-1"

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/common/transport/monitor/RPCDataContainer;->putDataItem(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
