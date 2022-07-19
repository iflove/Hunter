.class public Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;
.super Ljava/lang/Object;
.source "H5LinkMonitorImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;


# static fields
.field private static final TAG:Ljava/lang/String; = "H5LinkMonitorImpl"


# instance fields
.field private handler:Landroid/os/Handler;

.field private linkCompleted:Z

.field private linkMonitorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;->linkMonitorMap:Ljava/util/Map;

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;->handler:Landroid/os/Handler;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;->linkCompleted:Z

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;Ljava/lang/String;Ljava/lang/String;ILcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor$ExpectationListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor$ExpectationListener;

    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;->handleCheckExpectation(Ljava/lang/String;Ljava/lang/String;ILcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor$ExpectationListener;)V

    return-void
.end method

.method private handleCheckExpectation(Ljava/lang/String;Ljava/lang/String;ILcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor$ExpectationListener;)V
    .locals 16
    .param p1, "linkId"    # Ljava/lang/String;
    .param p2, "nodeName"    # Ljava/lang/String;
    .param p3, "timeout"    # I
    .param p4, "listener"    # Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor$ExpectationListener;

    .line 134
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p0

    iget-object v5, v4, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;->linkMonitorMap:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;

    const/4 v6, 0x0

    move-object v7, v6

    .line 135
    .local v7, "linkMonitorTree":Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;
    move-object v7, v5

    const-string v8, "H5LinkMonitorImpl"

    if-nez v5, :cond_0

    .line 136
    const-string v5, "linkMonitorTree == null"

    invoke-static {v8, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void

    .line 139
    :cond_0
    if-eqz v3, :cond_1

    .line 140
    invoke-interface {v3, v7}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor$ExpectationListener;->checkExpectation(Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;)V

    .line 141
    return-void

    .line 143
    :cond_1
    invoke-virtual {v7, v1}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;->getLinkNodeByName(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;

    move-result-object v5

    move-object v9, v6

    .line 144
    .local v9, "linkNode":Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;
    move-object v9, v5

    if-eqz v5, :cond_4

    .line 146
    invoke-virtual {v9, v6}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;->setCheckRunnable(Ljava/lang/Runnable;)V

    .line 147
    invoke-virtual {v9}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;->getTriggerTime()J

    move-result-wide v10

    .line 148
    .local v10, "triggerTime":J
    const-wide/16 v12, 0x0

    .line 149
    .local v12, "parentTriggerTime":J
    invoke-virtual {v9}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;->getParentNode()Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;

    move-result-object v5

    .line 150
    .local v6, "parentNode":Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;
    move-object v6, v5

    if-eqz v5, :cond_2

    .line 151
    invoke-virtual {v6}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;->getTriggerTime()J

    move-result-wide v12

    .line 154
    :cond_2
    const-wide/16 v14, 0x0

    cmp-long v5, v10, v14

    if-lez v5, :cond_3

    sub-long v14, v10, v12

    int-to-long v3, v2

    cmp-long v5, v14, v3

    if-gez v5, :cond_3

    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checkExpectation nodeName : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " triggerTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " parentNodeName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v6}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " parentNodeTrigger : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 155
    invoke-static {v8, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void

    .line 160
    :cond_3
    invoke-virtual {v7, v0, v1, v2}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;->logExpectationFail(Ljava/lang/String;Ljava/lang/String;I)V

    .line 162
    .end local v6    # "parentNode":Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;
    .end local v10    # "triggerTime":J
    .end local v12    # "parentTriggerTime":J
    :cond_4
    return-void
.end method


# virtual methods
.method public addLinkMonitorTree(Ljava/lang/String;)V
    .locals 2
    .param p1, "linkId"    # Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;->linkMonitorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " linkMonitorMap already contains : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5LinkMonitorImpl"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;->linkMonitorMap:Ljava/util/Map;

    new-instance v1, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;

    invoke-direct {v1}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-void
.end method

.method public cancelExpectation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "linkId"    # Ljava/lang/String;
    .param p2, "nodeName"    # Ljava/lang/String;

    .line 187
    iget-object v0, p0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;->linkMonitorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;

    const/4 v1, 0x0

    move-object v2, v1

    .line 188
    .local v2, "linkMonitorTree":Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 189
    const-string v0, "H5LinkMonitorImpl"

    const-string v1, "linkMonitorTree == null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return-void

    .line 192
    :cond_0
    invoke-virtual {v2, p2}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;->getLinkNodeByName(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;

    move-result-object v0

    move-object v3, v1

    .line 193
    .local v3, "linkNode":Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;
    move-object v3, v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;->getCheckRunnable()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;->handler:Landroid/os/Handler;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;->getCheckRunnable()Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 195
    invoke-virtual {v3, v1}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;->setCheckRunnable(Ljava/lang/Runnable;)V

    .line 197
    :cond_1
    return-void
.end method

.method public cancelLinkMonitor(Ljava/lang/String;)V
    .locals 6
    .param p1, "linkId"    # Ljava/lang/String;

    .line 201
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;->getLinkById(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 202
    .local v2, "linkMonitorTree":Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;
    move-object v2, v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;->getLinkMonitorList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 203
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;->getLinkMonitorList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 204
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;->getLinkMonitorList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v3, v1

    move-object v4, v3

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;

    .line 205
    .local v3, "linkNode":Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;
    move-object v3, v5

    invoke-virtual {v5}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;->getCheckRunnable()Ljava/lang/Runnable;

    move-result-object v5

    .line 206
    .local v4, "runnable":Ljava/lang/Runnable;
    move-object v4, v5

    if-eqz v5, :cond_0

    .line 207
    iget-object v5, p0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;->handler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 208
    invoke-virtual {v3, v1}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;->setCheckRunnable(Ljava/lang/Runnable;)V

    .line 210
    .end local v3    # "linkNode":Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;
    .end local v4    # "runnable":Ljava/lang/Runnable;
    :cond_0
    goto :goto_0

    .line 212
    :cond_1
    return-void
.end method

.method public checkExpectation(Ljava/lang/String;Ljava/lang/String;ILcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor$ExpectationListener;)V
    .locals 7
    .param p1, "linkId"    # Ljava/lang/String;
    .param p2, "nodeName"    # Ljava/lang/String;
    .param p3, "timeout"    # I
    .param p4, "listener"    # Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor$ExpectationListener;

    .line 124
    new-instance v6, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl$2;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl$2;-><init>(Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;Ljava/lang/String;Ljava/lang/String;ILcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor$ExpectationListener;)V

    .line 130
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;->handler:Landroid/os/Handler;

    int-to-long v2, p3

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 131
    return-void
.end method

.method public createExpectation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .param p1, "linkId"    # Ljava/lang/String;
    .param p2, "nodeName"    # Ljava/lang/String;
    .param p3, "depend"    # Ljava/lang/String;
    .param p4, "timeout"    # I

    .line 83
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;->createExpectation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor$ExpectationListener;)Z

    move-result v0

    return v0
.end method

.method public createExpectation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor$ExpectationListener;)Z
    .locals 17
    .param p1, "linkId"    # Ljava/lang/String;
    .param p2, "nodeName"    # Ljava/lang/String;
    .param p3, "depend"    # Ljava/lang/String;
    .param p4, "timeout"    # I
    .param p5, "listener"    # Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor$ExpectationListener;

    .line 89
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createExpectation linkId : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " nodeName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " depend : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " timeout : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5LinkMonitorImpl"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, v6, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;->linkMonitorMap:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;

    const/4 v2, 0x0

    move-object v3, v2

    .line 92
    .local v3, "linkMonitorTree":Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;
    move-object v11, v0

    .end local v3    # "linkMonitorTree":Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;
    .local v11, "linkMonitorTree":Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;
    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 93
    const-string v0, "linkMonitorTree == null"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return v3

    .line 96
    :cond_0
    invoke-virtual {v11, v8}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;->containsNode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "linkMonitorTree already contain : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return v3

    .line 100
    :cond_1
    new-instance v0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;-><init>()V

    move-object v1, v2

    .line 101
    .local v1, "linkNode":Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;
    move-object v12, v0

    .end local v1    # "linkNode":Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;
    .local v12, "linkNode":Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;
    invoke-virtual {v0, v8}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;->setNodeName(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v11, v12, v9}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;->addNode(Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v11, v9}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;->getLinkNodeByName(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;

    move-result-object v0

    .line 105
    .local v1, "dependNode":Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;
    move-object v13, v0

    .end local v1    # "dependNode":Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;
    .local v13, "dependNode":Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;
    if-eqz v0, :cond_2

    .line 106
    invoke-virtual {v13}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;->getTriggerTime()J

    move-result-wide v14

    .line 107
    .local v14, "dependTrigger":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v14

    long-to-int v1, v0

    sub-int v5, v10, v1

    .line 109
    .local v5, "checkT":I
    new-instance v16, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p4

    move v7, v5

    .end local v5    # "checkT":I
    .local v7, "checkT":I
    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl$1;-><init>(Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;Ljava/lang/String;Ljava/lang/String;ILcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor$ExpectationListener;)V

    .line 115
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-virtual {v12, v0}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;->setCheckRunnable(Ljava/lang/Runnable;)V

    .line 116
    iget-object v1, v6, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;->handler:Landroid/os/Handler;

    int-to-long v2, v7

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 118
    .end local v0    # "runnable":Ljava/lang/Runnable;
    .end local v7    # "checkT":I
    .end local v14    # "dependTrigger":J
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public fulfillExpectation(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8
    .param p1, "linkId"    # Ljava/lang/String;
    .param p2, "nodeName"    # Ljava/lang/String;
    .param p3, "triggerTime"    # J

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fulfillExpectation linkId : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " nodeName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " triggerTime : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5LinkMonitorImpl"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;->linkMonitorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;

    const/4 v2, 0x0

    move-object v3, v2

    .line 169
    .local v3, "linkMonitorTree":Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;
    move-object v3, v0

    if-nez v0, :cond_0

    .line 170
    const-string v0, "linkMonitorTree == null"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    return-void

    .line 174
    :cond_0
    invoke-virtual {v3, p2}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;->getLinkNodeByName(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 175
    invoke-virtual {v3, p2}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;->getLinkNodeByName(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;->getTriggerTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " already trigger"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-void

    .line 179
    :cond_1
    invoke-virtual {v3, p2}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;->getLinkNodeByName(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;

    move-result-object v0

    move-object v1, v2

    .line 180
    .local v1, "linkNode":Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;
    move-object v1, v0

    if-eqz v0, :cond_2

    .line 181
    invoke-virtual {v1, p3, p4}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;->setTriggerTime(J)V

    .line 183
    :cond_2
    return-void
.end method

.method public getLinkById(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;
    .locals 1
    .param p1, "linkId"    # Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;->linkMonitorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;

    return-object v0
.end method

.method public getLinkData(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "linkId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;->linkMonitorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;

    const/4 v1, 0x0

    move-object v2, v1

    .line 33
    .local v2, "linkMonitorTree":Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;->getLinkMonitorList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 36
    :cond_0
    return-object v1
.end method

.method public linkCompleted()Z
    .locals 2

    .line 55
    iget-boolean v0, p0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;->linkCompleted:Z

    if-eqz v0, :cond_0

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "linkCompleted : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;->linkCompleted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5LinkMonitorImpl"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;->linkCompleted:Z

    return v0
.end method

.method public setLinkCompleted(Z)V
    .locals 0
    .param p1, "completed"    # Z

    .line 63
    iput-boolean p1, p0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;->linkCompleted:Z

    .line 64
    return-void
.end method

.method public setLinkData(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 4
    .param p1, "linkId"    # Ljava/lang/String;
    .param p2, "nodeName"    # Ljava/lang/String;
    .param p3, "triggerTime"    # J
    .param p5, "parentName"    # Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setLinkData linkId : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " nodeName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " triggerTime : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " parentName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5LinkMonitorImpl"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;->linkMonitorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;

    const/4 v2, 0x0

    move-object v3, v2

    .line 71
    .local v3, "linkMonitorTree":Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;
    move-object v3, v0

    if-nez v0, :cond_0

    .line 72
    const-string v0, "linkMonitorTree == null"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void

    .line 75
    :cond_0
    new-instance v0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;-><init>()V

    move-object v1, v2

    .line 76
    .local v1, "linkNode":Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;
    move-object v1, v0

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;->setNodeName(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v1, p3, p4}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;->setTriggerTime(J)V

    .line 78
    invoke-virtual {v3, v1, p5}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;->addNode(Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;Ljava/lang/String;)V

    .line 79
    return-void
.end method
