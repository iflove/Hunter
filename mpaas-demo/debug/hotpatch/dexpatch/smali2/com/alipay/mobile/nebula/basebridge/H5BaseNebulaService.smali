.class public abstract Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;
.super Ljava/lang/Object;
.source "H5BaseNebulaService.java"

# interfaces
.implements Lcom/alipay/mobile/h5container/api/H5CoreNode;


# static fields
.field public static final TAG:Ljava/lang/String; = "H5BaseNebulaService"

.field private static base:I

.field private static index:I


# instance fields
.field protected final childNodes:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/alipay/mobile/nebulax/kernel/node/Node;",
            ">;"
        }
    .end annotation
.end field

.field private children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/h5container/api/H5CoreNode;",
            ">;"
        }
    .end annotation
.end field

.field private final dataStore:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected h5Data:Lcom/alipay/mobile/h5container/api/H5Data;

.field private nodeId:J

.field private parent:Lcom/alipay/mobile/h5container/api/H5CoreNode;

.field private parentNode:Lcom/alipay/mobile/nebulax/kernel/node/Node;

.field private pluginManager:Lcom/alipay/mobile/h5container/api/H5PluginManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    mul-int/lit16 v0, v0, 0x2710

    sput v0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->base:I

    .line 41
    const/4 v0, 0x1

    sput v0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->index:I

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->childNodes:Ljava/util/Stack;

    .line 171
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->dataStore:Ljava/util/Map;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->parent:Lcom/alipay/mobile/h5container/api/H5CoreNode;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->children:Ljava/util/List;

    .line 47
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v0

    .line 48
    .local v0, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/h5container/service/H5Service;->createPluginManager(Lcom/alipay/mobile/h5container/api/H5CoreNode;)Lcom/alipay/mobile/h5container/api/H5PluginManager;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->pluginManager:Lcom/alipay/mobile/h5container/api/H5PluginManager;

    .line 51
    sget v1, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->base:I

    sget v2, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->index:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->index:I

    add-int/2addr v1, v2

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->nodeId:J

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->childNodes:Ljava/util/Stack;

    .line 171
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->dataStore:Ljava/util/Map;

    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->nodeId:J

    .line 269
    const-class v0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulax/kernel/node/Node;

    iput-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->parentNode:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    .line 270
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/nebulax/kernel/node/Node;)V
    .locals 0
    .param p1, "parentNode"    # Lcom/alipay/mobile/nebulax/kernel/node/Node;

    .line 55
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->parentNode:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    .line 57
    return-void
.end method


# virtual methods
.method public declared-synchronized addChild(Lcom/alipay/mobile/h5container/api/H5CoreNode;)Z
    .locals 3
    .param p1, "child"    # Lcom/alipay/mobile/h5container/api/H5CoreNode;

    monitor-enter p0

    .line 93
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 94
    monitor-exit p0

    return v0

    .line 97
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/h5container/api/H5CoreNode;

    .line 98
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 99
    monitor-exit p0

    return v0

    .line 101
    :cond_1
    goto :goto_0

    .line 103
    .end local p0    # "this":Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-interface {p1, p0}, Lcom/alipay/mobile/h5container/api/H5CoreNode;->setParent(Lcom/alipay/mobile/h5container/api/H5CoreNode;)V

    .line 106
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->pushChild(Lcom/alipay/mobile/nebulax/kernel/node/Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 92
    .end local p1    # "child":Lcom/alipay/mobile/h5container/api/H5CoreNode;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public describeContents()I
    .locals 1

    .line 274
    const/4 v0, 0x0

    return v0
.end method

.method public getChild(J)Lcom/alipay/mobile/nebulax/kernel/node/Node;
    .locals 6
    .param p1, "id"    # J

    .line 225
    iget-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->childNodes:Ljava/util/Stack;

    monitor-enter v0

    .line 226
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->childNodes:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebulax/kernel/node/Node;

    .line 227
    .local v2, "node":Lcom/alipay/mobile/nebulax/kernel/node/Node;
    invoke-interface {v2}, Lcom/alipay/mobile/nebulax/kernel/node/Node;->getNodeId()J

    move-result-wide v3

    cmp-long v5, p1, v3

    if-nez v5, :cond_0

    .line 228
    monitor-exit v0

    return-object v2

    .line 230
    .end local v2    # "node":Lcom/alipay/mobile/nebulax/kernel/node/Node;
    :cond_0
    goto :goto_0

    .line 231
    :cond_1
    monitor-exit v0

    .line 232
    const/4 v0, 0x0

    return-object v0

    .line 231
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getChildAt(I)Lcom/alipay/mobile/nebulax/kernel/node/Node;
    .locals 1
    .param p1, "index"    # I

    .line 237
    iget-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->childNodes:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 238
    const/4 v0, 0x0

    return-object v0

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->childNodes:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulax/kernel/node/Node;

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->childNodes:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    return v0
.end method

.method public getData()Lcom/alipay/mobile/h5container/api/H5Data;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->h5Data:Lcom/alipay/mobile/h5container/api/H5Data;

    return-object v0
.end method

.method public getData(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p1, "type"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->dataStore:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 301
    .local v1, "data":Ljava/lang/Object;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 303
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    .line 304
    iget-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->dataStore:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    goto :goto_0

    .line 305
    :catchall_0
    move-exception v0

    .line 306
    .local v0, "e":Ljava/lang/Throwable;
    const-string v2, "H5BaseNebulaService"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 309
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-object v1
.end method

.method public getGroup()Lcom/alipay/mobile/nebulax/kernel/security/Group;
    .locals 1

    .line 285
    sget-object v0, Lcom/alipay/mobile/nebulax/kernel/security/DefaultGroup;->INTERNAL:Lcom/alipay/mobile/nebulax/kernel/security/DefaultGroup;

    return-object v0
.end method

.method public getNodeId()J
    .locals 2

    .line 264
    iget-wide v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->nodeId:J

    return-wide v0
.end method

.method public getParent()Lcom/alipay/mobile/h5container/api/H5CoreNode;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->parent:Lcom/alipay/mobile/h5container/api/H5CoreNode;

    return-object v0
.end method

.method public getParentNode()Lcom/alipay/mobile/nebulax/kernel/node/Node;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->parentNode:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    return-object v0
.end method

.method public getPluginManager()Lcom/alipay/mobile/h5container/api/H5PluginManager;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->pluginManager:Lcom/alipay/mobile/h5container/api/H5PluginManager;

    return-object v0
.end method

.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 1
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->pluginManager:Lcom/alipay/mobile/h5container/api/H5PluginManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public inquiry(Ljava/util/List;Lcom/alipay/mobile/nebulax/kernel/security/Accessor$InquiryCallback;)V
    .locals 0
    .param p1, "list"    # Ljava/util/List;
    .param p2, "inquiryCallback"    # Lcom/alipay/mobile/nebulax/kernel/security/Accessor$InquiryCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/alipay/mobile/nebulax/kernel/security/Permission;",
            ">;",
            "Lcom/alipay/mobile/nebulax/kernel/security/Accessor$InquiryCallback;",
            ")V"
        }
    .end annotation

    .line 296
    return-void
.end method

.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 1
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->pluginManager:Lcom/alipay/mobile/h5container/api/H5PluginManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isChildless()Z
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->childNodes:Ljava/util/Stack;

    monitor-enter v0

    .line 258
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->childNodes:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 259
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onFinalized()V
    .locals 0

    .line 184
    return-void
.end method

.method public onInitialize(Lcom/alipay/mobile/h5container/api/H5CoreNode;)V
    .locals 0
    .param p1, "coreNode"    # Lcom/alipay/mobile/h5container/api/H5CoreNode;

    .line 61
    return-void
.end method

.method public onInitialized()V
    .locals 0

    .line 179
    return-void
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 0
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 66
    return-void
.end method

.method public onRelease()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->pluginManager:Lcom/alipay/mobile/h5container/api/H5PluginManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 142
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->onRelease()V

    .line 143
    iput-object v1, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->pluginManager:Lcom/alipay/mobile/h5container/api/H5PluginManager;

    .line 145
    :cond_0
    iput-object v1, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->h5Data:Lcom/alipay/mobile/h5container/api/H5Data;

    .line 146
    return-void
.end method

.method public peekChild()Lcom/alipay/mobile/nebulax/kernel/node/Node;
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->childNodes:Ljava/util/Stack;

    monitor-enter v0

    .line 216
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->childNodes:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 219
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->childNodes:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulax/kernel/node/Node;

    monitor-exit v0

    return-object v1

    .line 220
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public popChild()Lcom/alipay/mobile/nebulax/kernel/node/Node;
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->childNodes:Ljava/util/Stack;

    monitor-enter v0

    .line 209
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->childNodes:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulax/kernel/node/Node;

    monitor-exit v0

    return-object v1

    .line 210
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public pushChild(Lcom/alipay/mobile/nebulax/kernel/node/Node;)V
    .locals 2
    .param p1, "node"    # Lcom/alipay/mobile/nebulax/kernel/node/Node;

    .line 198
    if-nez p1, :cond_0

    .line 199
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->childNodes:Ljava/util/Stack;

    monitor-enter v0

    .line 202
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->childNodes:Ljava/util/Stack;

    invoke-virtual {v1, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized removeChild(Lcom/alipay/mobile/h5container/api/H5CoreNode;)Z
    .locals 4
    .param p1, "child"    # Lcom/alipay/mobile/h5container/api/H5CoreNode;

    monitor-enter p0

    .line 111
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 112
    monitor-exit p0

    return v0

    .line 115
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->childNodes:Ljava/util/Stack;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 116
    :try_start_1
    iget-object v2, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->childNodes:Ljava/util/Stack;

    invoke-virtual {v2, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 117
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    :try_start_2
    iget-object v1, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iterator":Ljava/util/Iterator;
    const/4 v2, 0x0

    .line 119
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 120
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/h5container/api/H5CoreNode;

    .line 121
    .local v2, "target":Lcom/alipay/mobile/h5container/api/H5CoreNode;
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 122
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 123
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 125
    .end local v2    # "target":Lcom/alipay/mobile/h5container/api/H5CoreNode;
    .end local p0    # "this":Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;
    :cond_1
    goto :goto_0

    .line 126
    :cond_2
    monitor-exit p0

    return v0

    .line 117
    .end local v1    # "iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 110
    .end local p1    # "child":Lcom/alipay/mobile/h5container/api/H5CoreNode;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeChild(Lcom/alipay/mobile/nebulax/kernel/node/Node;)Z
    .locals 2
    .param p1, "node"    # Lcom/alipay/mobile/nebulax/kernel/node/Node;

    .line 250
    iget-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->childNodes:Ljava/util/Stack;

    monitor-enter v0

    .line 251
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->childNodes:Ljava/util/Stack;

    invoke-virtual {v1, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 252
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "param"    # Lcom/alibaba/fastjson/JSONObject;

    .line 166
    return-void
.end method

.method public setData(Lcom/alipay/mobile/h5container/api/H5Data;)V
    .locals 0
    .param p1, "data"    # Lcom/alipay/mobile/h5container/api/H5Data;

    .line 160
    iput-object p1, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->h5Data:Lcom/alipay/mobile/h5container/api/H5Data;

    .line 161
    return-void
.end method

.method public setParent(Lcom/alipay/mobile/h5container/api/H5CoreNode;)V
    .locals 1
    .param p1, "parent"    # Lcom/alipay/mobile/h5container/api/H5CoreNode;

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->parent:Lcom/alipay/mobile/h5container/api/H5CoreNode;

    if-ne p1, v0, :cond_0

    .line 74
    return-void

    .line 78
    :cond_0
    if-eqz v0, :cond_1

    .line 79
    invoke-interface {v0, p0}, Lcom/alipay/mobile/h5container/api/H5CoreNode;->removeChild(Lcom/alipay/mobile/h5container/api/H5CoreNode;)Z

    .line 82
    :cond_1
    iput-object p1, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->parent:Lcom/alipay/mobile/h5container/api/H5CoreNode;

    .line 85
    if-eqz p1, :cond_2

    .line 86
    invoke-interface {p1, p0}, Lcom/alipay/mobile/h5container/api/H5CoreNode;->addChild(Lcom/alipay/mobile/h5container/api/H5CoreNode;)Z

    .line 89
    :cond_2
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->setParentNode(Lcom/alipay/mobile/nebulax/kernel/node/Node;)V

    .line 90
    return-void
.end method

.method public setParentNode(Lcom/alipay/mobile/nebulax/kernel/node/Node;)V
    .locals 0
    .param p1, "node"    # Lcom/alipay/mobile/nebulax/kernel/node/Node;

    .line 193
    iput-object p1, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->parentNode:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    .line 194
    return-void
.end method

.method public usePermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulax/kernel/security/Permission;",
            ">;"
        }
    .end annotation

    .line 290
    const/4 v0, 0x0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 279
    iget-wide v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->nodeId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 280
    iget-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->parentNode:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 281
    return-void
.end method
