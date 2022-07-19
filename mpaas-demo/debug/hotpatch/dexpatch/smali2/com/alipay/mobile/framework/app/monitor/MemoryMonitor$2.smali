.class Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$2;
.super Ljava/lang/Object;
.source "MemoryMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;->commit(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;

.field final synthetic val$family:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;

    .line 116
    iput-object p1, p0, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$2;->this$0:Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;

    iput-object p2, p0, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$2;->val$family:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 120
    const-string v0, "FRAME.MemoryMonitor"

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$2;->this$0:Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;

    # getter for: Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;->e:Ljava/util/Set;
    invoke-static {v1}, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;->access$000(Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$2;->val$family:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "commit but already Reported: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$2;->val$family:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void

    .line 124
    :cond_0
    const/4 v1, 0x0

    .line 125
    .local v1, "targetMemoryFamily":Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$MemoryFamily;
    iget-object v2, p0, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$2;->this$0:Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;

    # getter for: Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;->f:Ljava/util/List;
    invoke-static {v2}, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;->access$100(Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$MemoryFamily;

    .line 126
    .local v3, "memoryFamily":Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$MemoryFamily;
    iget-object v4, p0, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$2;->val$family:Ljava/lang/String;

    iget-object v5, v3, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$MemoryFamily;->familyName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 127
    move-object v1, v3

    .line 128
    goto :goto_1

    .line 130
    .end local v3    # "memoryFamily":Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$MemoryFamily;
    :cond_1
    goto :goto_0

    .line 131
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 132
    iget-object v2, p0, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$2;->this$0:Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;

    # getter for: Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;->f:Ljava/util/List;
    invoke-static {v2}, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;->access$100(Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 133
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$MemoryFamily;->commit()V

    return-void

    .line 135
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "commit family but not found: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$2;->val$family:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    .end local v1    # "targetMemoryFamily":Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$MemoryFamily;
    return-void

    .line 137
    :catchall_0
    move-exception v1

    .line 138
    .local v1, "tr":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    .end local v1    # "tr":Ljava/lang/Throwable;
    return-void
.end method
