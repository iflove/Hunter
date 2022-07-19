.class public abstract Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;
.super Ljava/lang/Object;
.source "H5CoreTarget.java"

# interfaces
.implements Lcom/alipay/mobile/h5container/api/H5CoreNode;
.implements Lcom/alipay/mobile/nebulax/kernel/node/Scope;


# static fields
.field public static final TAG:Ljava/lang/String; = "H5CoreTarget"

.field private static g:I

.field private static h:I


# instance fields
.field private a:Lcom/alipay/mobile/h5container/api/H5PluginManager;

.field private b:Lcom/alipay/mobile/h5container/api/H5CoreNode;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/h5container/api/H5CoreNode;",
            ">;"
        }
    .end annotation
.end field

.field protected final childNodes:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/alipay/mobile/nebulax/kernel/node/Node;",
            ">;"
        }
    .end annotation
.end field

.field private d:J

.field private e:Lcom/alipay/mobile/nebulax/kernel/node/Node;

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected mH5Data:Lcom/alipay/mobile/h5container/api/H5Data;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    mul-int/lit16 v0, v0, 0x2710

    sput v0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->g:I

    .line 40
    const/4 v0, 0x1

    sput v0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->h:I

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->childNodes:Ljava/util/Stack;

    .line 171
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->f:Ljava/util/Map;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->b:Lcom/alipay/mobile/h5container/api/H5CoreNode;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->c:Ljava/util/List;

    .line 46
    new-instance v0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;-><init>(Lcom/alipay/mobile/h5container/api/H5CoreNode;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->a:Lcom/alipay/mobile/h5container/api/H5PluginManager;

    .line 49
    sget v0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->g:I

    sget v1, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->h:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->h:I

    add-int/2addr v0, v1

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->d:J

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->childNodes:Ljava/util/Stack;

    .line 171
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->f:Ljava/util/Map;

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->d:J

    .line 257
    const-class v0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulax/kernel/node/Node;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->e:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    .line 258
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/nebulax/kernel/node/Node;)V
    .locals 0
    .param p1, "parentNode"    # Lcom/alipay/mobile/nebulax/kernel/node/Node;

    .line 53
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->e:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    .line 55
    return-void
.end method


# virtual methods
.method public declared-synchronized addChild(Lcom/alipay/mobile/h5container/api/H5CoreNode;)Z
    .locals 3
    .param p1, "child"    # Lcom/alipay/mobile/h5container/api/H5CoreNode;

    monitor-enter p0

    .line 91
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 92
    monitor-exit p0

    return v0

    .line 95
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/h5container/api/H5CoreNode;

    .line 96
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 97
    monitor-exit p0

    return v0

    .line 99
    :cond_1
    goto :goto_0

    .line 101
    .end local p0    # "this":Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-interface {p1, p0}, Lcom/alipay/mobile/h5container/api/H5CoreNode;->setParent(Lcom/alipay/mobile/h5container/api/H5CoreNode;)V

    .line 104
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->pushChild(Lcom/alipay/mobile/nebulax/kernel/node/Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 90
    .end local p1    # "child":Lcom/alipay/mobile/h5container/api/H5CoreNode;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public describeContents()I
    .locals 1

    .line 262
    const/4 v0, 0x0

    return v0
.end method

.method public getChild(J)Lcom/alipay/mobile/nebulax/kernel/node/Node;
    .locals 5
    .param p1, "id"    # J

    .line 219
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->childNodes:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulax/kernel/node/Node;

    .line 220
    .local v1, "node":Lcom/alipay/mobile/nebulax/kernel/node/Node;
    invoke-interface {v1}, Lcom/alipay/mobile/nebulax/kernel/node/Node;->getNodeId()J

    move-result-wide v2

    cmp-long v4, p1, v2

    if-nez v4, :cond_0

    .line 221
    return-object v1

    .line 223
    .end local v1    # "node":Lcom/alipay/mobile/nebulax/kernel/node/Node;
    :cond_0
    goto :goto_0

    .line 224
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildAt(I)Lcom/alipay/mobile/nebulax/kernel/node/Node;
    .locals 1
    .param p1, "index"    # I

    .line 229
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->childNodes:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 230
    const/4 v0, 0x0

    return-object v0

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->childNodes:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulax/kernel/node/Node;

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->childNodes:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    return v0
.end method

.method public getData()Lcom/alipay/mobile/h5container/api/H5Data;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->mH5Data:Lcom/alipay/mobile/h5container/api/H5Data;

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

    .line 288
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 289
    .local v1, "data":Ljava/lang/Object;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 291
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    .line 292
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->f:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    goto :goto_0

    .line 293
    :catchall_0
    move-exception v0

    .line 294
    .local v0, "e":Ljava/lang/Throwable;
    const-string v2, "H5CoreTarget"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 297
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-object v1
.end method

.method public getGroup()Lcom/alipay/mobile/nebulax/kernel/security/Group;
    .locals 1

    .line 273
    sget-object v0, Lcom/alipay/mobile/nebulax/kernel/security/DefaultGroup;->INTERNAL:Lcom/alipay/mobile/nebulax/kernel/security/DefaultGroup;

    return-object v0
.end method

.method public getNodeId()J
    .locals 2

    .line 252
    iget-wide v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->d:J

    return-wide v0
.end method

.method public getParent()Lcom/alipay/mobile/h5container/api/H5CoreNode;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->b:Lcom/alipay/mobile/h5container/api/H5CoreNode;

    return-object v0
.end method

.method public getParentNode()Lcom/alipay/mobile/nebulax/kernel/node/Node;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->e:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    return-object v0
.end method

.method public getPluginManager()Lcom/alipay/mobile/h5container/api/H5PluginManager;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->a:Lcom/alipay/mobile/h5container/api/H5PluginManager;

    return-object v0
.end method

.method public getScopeType()Ljava/lang/Class;
    .locals 1

    .line 302
    const-class v0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;

    return-object v0
.end method

.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 1
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->a:Lcom/alipay/mobile/h5container/api/H5PluginManager;

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

    .line 284
    return-void
.end method

.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 1
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->a:Lcom/alipay/mobile/h5container/api/H5PluginManager;

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
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->childNodes:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    return v0
.end method

.method public onFinalized()V
    .locals 0

    .line 184
    return-void
.end method

.method public onInitialize(Lcom/alipay/mobile/h5container/api/H5CoreNode;)V
    .locals 0
    .param p1, "coreNode"    # Lcom/alipay/mobile/h5container/api/H5CoreNode;

    .line 59
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

    .line 64
    return-void
.end method

.method public onRelease()V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->a:Lcom/alipay/mobile/h5container/api/H5PluginManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 139
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->onRelease()V

    .line 140
    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->a:Lcom/alipay/mobile/h5container/api/H5PluginManager;

    .line 142
    :cond_0
    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->mH5Data:Lcom/alipay/mobile/h5container/api/H5Data;

    .line 143
    return-void
.end method

.method public peekChild()Lcom/alipay/mobile/nebulax/kernel/node/Node;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->childNodes:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    const/4 v0, 0x0

    return-object v0

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->childNodes:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulax/kernel/node/Node;

    return-object v0
.end method

.method public popChild()Lcom/alipay/mobile/nebulax/kernel/node/Node;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->childNodes:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulax/kernel/node/Node;

    return-object v0
.end method

.method public pushChild(Lcom/alipay/mobile/nebulax/kernel/node/Node;)V
    .locals 1
    .param p1, "node"    # Lcom/alipay/mobile/nebulax/kernel/node/Node;

    .line 198
    if-nez p1, :cond_0

    .line 199
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->childNodes:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    return-void
.end method

.method public declared-synchronized removeChild(Lcom/alipay/mobile/h5container/api/H5CoreNode;)Z
    .locals 3
    .param p1, "child"    # Lcom/alipay/mobile/h5container/api/H5CoreNode;

    monitor-enter p0

    .line 109
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 110
    monitor-exit p0

    return v0

    .line 113
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->childNodes:Ljava/util/Stack;

    invoke-virtual {v1, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 115
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 116
    .local v1, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 117
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/h5container/api/H5CoreNode;

    .line 118
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 119
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 122
    .end local p0    # "this":Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;
    :cond_1
    goto :goto_0

    .line 123
    :cond_2
    monitor-exit p0

    return v0

    .line 108
    .end local v1    # "iterator":Ljava/util/Iterator;
    .end local p1    # "child":Lcom/alipay/mobile/h5container/api/H5CoreNode;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeChild(Lcom/alipay/mobile/nebulax/kernel/node/Node;)Z
    .locals 1
    .param p1, "node"    # Lcom/alipay/mobile/nebulax/kernel/node/Node;

    .line 242
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->childNodes:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "param"    # Lcom/alibaba/fastjson/JSONObject;

    .line 162
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dispatch action "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5CoreTarget"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getDispatcher()Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p0}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CoreNode;)Lcom/alipay/mobile/h5container/api/H5Event$Error;

    .line 166
    return-void
.end method

.method public setData(Lcom/alipay/mobile/h5container/api/H5Data;)V
    .locals 0
    .param p1, "data"    # Lcom/alipay/mobile/h5container/api/H5Data;

    .line 157
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->mH5Data:Lcom/alipay/mobile/h5container/api/H5Data;

    .line 158
    return-void
.end method

.method public setParent(Lcom/alipay/mobile/h5container/api/H5CoreNode;)V
    .locals 1
    .param p1, "parent"    # Lcom/alipay/mobile/h5container/api/H5CoreNode;

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->b:Lcom/alipay/mobile/h5container/api/H5CoreNode;

    if-ne p1, v0, :cond_0

    .line 72
    return-void

    .line 76
    :cond_0
    if-eqz v0, :cond_1

    .line 77
    invoke-interface {v0, p0}, Lcom/alipay/mobile/h5container/api/H5CoreNode;->removeChild(Lcom/alipay/mobile/h5container/api/H5CoreNode;)Z

    .line 80
    :cond_1
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->b:Lcom/alipay/mobile/h5container/api/H5CoreNode;

    .line 83
    if-eqz p1, :cond_2

    .line 84
    invoke-interface {p1, p0}, Lcom/alipay/mobile/h5container/api/H5CoreNode;->addChild(Lcom/alipay/mobile/h5container/api/H5CoreNode;)Z

    .line 87
    :cond_2
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->setParentNode(Lcom/alipay/mobile/nebulax/kernel/node/Node;)V

    .line 88
    return-void
.end method

.method public setParentNode(Lcom/alipay/mobile/nebulax/kernel/node/Node;)V
    .locals 0
    .param p1, "node"    # Lcom/alipay/mobile/nebulax/kernel/node/Node;

    .line 193
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->e:Lcom/alipay/mobile/nebulax/kernel/node/Node;

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

    .line 278
    const/4 v0, 0x0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 267
    iget-wide v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->d:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 268
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->e:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 269
    return-void
.end method
