.class Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$MemoryFamily;
.super Ljava/lang/Object;
.source "MemoryMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MemoryFamily"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$MemoryFamily$MemoryUnit;
    }
.end annotation


# instance fields
.field extParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field familyName:Ljava/lang/String;

.field memoryUnits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$MemoryFamily$MemoryUnit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;
    .param p2, "familyName"    # Ljava/lang/String;

    .line 182
    iput-object p1, p0, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$MemoryFamily;->this$0:Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-object p2, p0, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$MemoryFamily;->familyName:Ljava/lang/String;

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$MemoryFamily;->memoryUnits:Ljava/util/List;

    .line 185
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$MemoryFamily;->extParams:Ljava/util/Map;

    .line 186
    return-void
.end method


# virtual methods
.method commit()V
    .locals 9

    .line 217
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$MemoryFamily;->familyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "FRAME.MemoryMonitor"

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$MemoryFamily;->this$0:Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;

    # getter for: Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;->e:Ljava/util/Set;
    invoke-static {v0}, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;->access$000(Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;)Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$MemoryFamily;->familyName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "commit and add reported family: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$MemoryFamily;->familyName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$MemoryFamily;->memoryUnits:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "commit but no memoryUnits: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$MemoryFamily;->familyName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    return-void

    .line 225
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "commit family:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$MemoryFamily;->familyName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 227
    .local v0, "params":Ljava/util/Map;
    iget-object v2, p0, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$MemoryFamily;->memoryUnits:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$MemoryFamily$MemoryUnit;

    .line 228
    .local v3, "memoryUnit":Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$MemoryFamily$MemoryUnit;
    move-object v3, v4

    iget-wide v4, v4, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$MemoryFamily$MemoryUnit;->memInfo:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_2

    .line 229
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$MemoryFamily$MemoryUnit;->unitName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_totalPss"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-wide v5, v3, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$MemoryFamily$MemoryUnit;->memInfo:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "unit:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$MemoryFamily$MemoryUnit;->unitName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " totalPss:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v3, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$MemoryFamily$MemoryUnit;->memInfo:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .end local v3    # "memoryUnit":Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$MemoryFamily$MemoryUnit;
    :cond_2
    goto :goto_0

    .line 233
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$MemoryFamily;->extParams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 234
    .local v3, "entry":Ljava/util/Map$Entry;
    move-object v3, v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 235
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 236
    .local v4, "value":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 237
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "entry":Ljava/util/Map$Entry;
    .end local v4    # "value":Ljava/lang/String;
    :cond_4
    goto :goto_1

    .line 240
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->createPerformanceBuilderObject()Ljava/lang/Object;

    move-result-object v2

    .line 241
    .local v1, "performanceBuilder":Ljava/lang/Object;
    iget-object v5, p0, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$MemoryFamily;->familyName:Ljava/lang/String;

    const/4 v6, 0x0

    const-string v3, "FRAME.MemoryMonitor"

    const-string v4, "FamilyMemory"

    move-object v7, v0

    invoke-static/range {v2 .. v7}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->invokePerformanceBuilder(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v2

    .line 242
    .local v2, "performance":Ljava/lang/Object;
    sget-object v3, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->MONITORPOINT_PERFORMANCE:Ljava/lang/Object;

    invoke-static {v3, v2}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->performance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 243
    return-void
.end method

.method putExtParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "unit"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 206
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    return-void

    .line 209
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$MemoryFamily;->extParams:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$MemoryFamily;->extParams:Ljava/util/Map;

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    return-void
.end method

.method recordUnit(Ljava/lang/String;)V
    .locals 4
    .param p1, "unit"    # Ljava/lang/String;

    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, "targetMemoryUnit":Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$MemoryFamily$MemoryUnit;
    iget-object v1, p0, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$MemoryFamily;->memoryUnits:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$MemoryFamily$MemoryUnit;

    .line 191
    .local v2, "memoryUnit":Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$MemoryFamily$MemoryUnit;
    iget-object v3, v2, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$MemoryFamily$MemoryUnit;->unitName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 192
    move-object v0, v2

    .line 193
    goto :goto_1

    .line 195
    .end local v2    # "memoryUnit":Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$MemoryFamily$MemoryUnit;
    :cond_0
    goto :goto_0

    .line 196
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 197
    new-instance v1, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$MemoryFamily$MemoryUnit;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$MemoryFamily$MemoryUnit;-><init>(Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$MemoryFamily;Ljava/lang/String;)V

    move-object v0, v1

    .line 198
    iget-object v1, p0, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$MemoryFamily;->memoryUnits:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "record family: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$MemoryFamily;->familyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " unit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FRAME.MemoryMonitor"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$MemoryFamily$MemoryUnit;->recordMemInfo()V

    .line 203
    return-void
.end method
