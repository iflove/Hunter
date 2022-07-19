.class public abstract Lcom/alipay/mobile/framework/BaseMetaInfo;
.super Ljava/lang/Object;
.source "BaseMetaInfo.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/app/ApplicationDescription;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/service/ServiceDescription;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/pipeline/ValveDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addApplication(Lcom/alipay/mobile/framework/app/ApplicationDescription;)V
    .locals 1
    .param p1, "app"    # Lcom/alipay/mobile/framework/app/ApplicationDescription;

    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->a:Ljava/util/List;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->a:Ljava/util/List;

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    return-void
.end method

.method public addBroadcastReceiver(Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;)V
    .locals 1
    .param p1, "broadcastReceiver"    # Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->c:Ljava/util/List;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->c:Ljava/util/List;

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method public addService(Lcom/alipay/mobile/framework/service/ServiceDescription;)V
    .locals 1
    .param p1, "service"    # Lcom/alipay/mobile/framework/service/ServiceDescription;

    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->b:Ljava/util/List;

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method public addValve(Lcom/alipay/mobile/framework/pipeline/ValveDescription;)V
    .locals 1
    .param p1, "valve"    # Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->e:Ljava/util/List;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->e:Ljava/util/List;

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    return-void
.end method

.method public getApplications()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/app/ApplicationDescription;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->a:Ljava/util/List;

    return-object v0
.end method

.method public getBroadcastReceivers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->c:Ljava/util/List;

    return-object v0
.end method

.method public getEntry()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getServices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/service/ServiceDescription;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->b:Ljava/util/List;

    return-object v0
.end method

.method public getValves()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/pipeline/ValveDescription;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->e:Ljava/util/List;

    return-object v0
.end method

.method public setApplications(Ljava/util/List;)V
    .locals 0
    .param p1, "applications"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/app/ApplicationDescription;",
            ">;)V"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->a:Ljava/util/List;

    .line 37
    return-void
.end method

.method public setBroadcastReceivers(Ljava/util/List;)V
    .locals 0
    .param p1, "broadcastReceivers"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;",
            ">;)V"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->c:Ljava/util/List;

    .line 67
    return-void
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 2
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/MicroDescription;

    .line 94
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/framework/MicroDescription;->setClassLoader(Ljava/lang/ClassLoader;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 95
    goto :goto_0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/MicroDescription;

    .line 99
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/framework/MicroDescription;->setClassLoader(Ljava/lang/ClassLoader;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 100
    goto :goto_1

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->c:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/MicroDescription;

    .line 104
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/framework/MicroDescription;->setClassLoader(Ljava/lang/ClassLoader;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 105
    goto :goto_2

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->e:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    .line 109
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->setClassLoader(Ljava/lang/ClassLoader;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 110
    goto :goto_3

    .line 112
    :cond_3
    return-void
.end method

.method public setEntry(Ljava/lang/String;)V
    .locals 0
    .param p1, "entry"    # Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->d:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setServices(Ljava/util/List;)V
    .locals 0
    .param p1, "services"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/service/ServiceDescription;",
            ">;)V"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->b:Ljava/util/List;

    .line 52
    return-void
.end method

.method public setValves(Ljava/util/List;)V
    .locals 0
    .param p1, "valves"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/pipeline/ValveDescription;",
            ">;)V"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->e:Ljava/util/List;

    .line 82
    return-void
.end method
