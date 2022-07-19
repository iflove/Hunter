.class Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler$1;
.super Ljava/lang/Object;
.source "H5NetworkSuScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;->execInternal(Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSupervisor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;

.field final synthetic val$h5NetworkSupervisor:Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSupervisor;

.field final synthetic val$tmpEntityList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;Ljava/util/List;Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSupervisor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;

    .line 56
    iput-object p1, p0, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler$1;->this$0:Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;

    iput-object p2, p0, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler$1;->val$tmpEntityList:Ljava/util/List;

    iput-object p3, p0, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler$1;->val$h5NetworkSupervisor:Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSupervisor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler$1;->val$tmpEntityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuEntity;

    .line 60
    .local v1, "entity":Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuEntity;
    move-object v1, v2

    if-eqz v2, :cond_1

    .line 61
    instance-of v2, v1, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuRequest;

    if-eqz v2, :cond_0

    .line 62
    iget-object v2, p0, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler$1;->val$h5NetworkSupervisor:Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSupervisor;

    move-object v3, v1

    check-cast v3, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuRequest;

    invoke-interface {v2, v3}, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSupervisor;->onSendReq(Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuRequest;)V

    goto :goto_0

    .line 64
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler$1;->val$h5NetworkSupervisor:Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSupervisor;

    move-object v3, v1

    check-cast v3, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuResponse;

    invoke-interface {v2, v3}, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSupervisor;->onReceiveRsp(Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuResponse;)V

    .line 67
    .end local v1    # "entity":Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuEntity;
    :cond_1
    goto :goto_0

    .line 68
    :cond_2
    return-void
.end method
