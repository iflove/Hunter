.class public Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateController;
.super Ljava/lang/Object;
.source "TinyAppActionStateController.java"


# static fields
.field private static final ACTION_ARRAY:[Ljava/lang/String;

.field private static final STATE_OFF:I = 0x0

.field private static final STATE_ON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TinyAppActionStateContr"


# instance fields
.field private final mListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mStateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 28
    const-string v0, "bluetooth"

    const-string v1, "location"

    const-string/jumbo v2, "record"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateController;->ACTION_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateController;->mLock:Ljava/lang/Object;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateController;->mListenerList:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateController;->mStateList:Ljava/util/List;

    .line 40
    return-void
.end method

.method private createActionState(Ljava/lang/String;)Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;
    .locals 4
    .param p1, "action"    # Ljava/lang/String;

    .line 191
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x37b993af

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_3

    const v1, 0x714f9fb5

    if-eq v0, v1, :cond_2

    const v1, 0x755ac2ae

    if-eq v0, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v0, "bluetooth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const-string v0, "location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "record"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    .line 197
    new-instance v0, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;

    invoke-direct {v0, p1, v2}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;-><init>(Ljava/lang/String;Z)V

    return-object v0

    .line 193
    :cond_4
    new-instance v0, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;

    invoke-direct {v0, p1, v3}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method private handleStateDecreaseCount(Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;Ljava/lang/String;)V
    .locals 5
    .param p1, "actionState"    # Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;
    .param p2, "type"    # Ljava/lang/String;

    .line 122
    if-nez p1, :cond_0

    .line 123
    return-void

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleStateDecreaseCount before action "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;->getCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    const-string v3, "TinyAppActionStateContr"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 129
    return-void

    .line 132
    :cond_1
    invoke-virtual {p1, p2}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;->decreaseCount(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 135
    iget-object v0, p0, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateController;->mStateList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 136
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateController;->notifyStateChanged()V

    .line 139
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "handleStateDecreaseCount after action "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method private handleStateIncreaseCount(Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;ILjava/lang/String;)V
    .locals 6
    .param p1, "actionState"    # Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;
    .param p2, "index"    # I
    .param p3, "type"    # Ljava/lang/String;

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleStateIncreaseCount before action "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;->getCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    const-string v3, "TinyAppActionStateContr"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p1, p3}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;->increaseCount(Ljava/lang/String;)V

    .line 104
    if-eqz p2, :cond_0

    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateController;->mStateList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 108
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;->getCount()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    .line 110
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateController;->notifyStateChanged()V

    .line 113
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "handleStateIncreaseCount after action "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method private isActionAvailable(Ljava/lang/String;)Z
    .locals 5
    .param p1, "action"    # Ljava/lang/String;

    .line 144
    sget-object v0, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateController;->ACTION_ARRAY:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 145
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 146
    const/4 v0, 0x1

    return v0

    .line 144
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 149
    :cond_1
    return v2
.end method

.method private declared-synchronized notifyStateChanged()V
    .locals 5

    monitor-enter p0

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateController;->mListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 162
    .local v0, "iterator":Ljava/util/Iterator;
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateController;->getCurrentState()Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;

    move-result-object v1

    .line 164
    .local v1, "currentState":Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;
    const-string v2, "TinyAppActionStateContr"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "notifyStateChanged  currentState: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 166
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 167
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 168
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateListener;

    .line 169
    .local v2, "listener":Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateListener;
    move-object v2, v3

    if-eqz v3, :cond_0

    .line 170
    invoke-interface {v2, v1}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateListener;->onStateChanged(Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;)V

    goto :goto_0

    .line 172
    .end local p0    # "this":Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateController;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    .end local v2    # "listener":Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateListener;
    goto :goto_0

    .line 175
    :cond_1
    monitor-exit p0

    return-void

    .line 159
    .end local v0    # "iterator":Ljava/util/Iterator;
    .end local v1    # "currentState":Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setStateInner(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "state"    # I

    .line 64
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateController;->isActionAvailable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    return-void

    .line 68
    :cond_0
    const-string v0, "TinyAppActionStateContr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setStateInner action["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] type["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 71
    const/4 v1, 0x0

    .line 72
    .local v1, "index":I
    const/4 v2, 0x0

    .local v2, "actionState":Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;
    const/4 v3, 0x0

    .line 73
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateController;->mStateList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 74
    iget-object v4, p0, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateController;->mStateList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;

    .line 75
    .local v3, "tmp":Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;
    move-object v3, v4

    invoke-virtual {v4}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 76
    move-object v2, v3

    .line 77
    goto :goto_1

    .line 73
    .end local v3    # "tmp":Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    :cond_2
    :goto_1
    const/4 v3, 0x1

    if-ne p3, v3, :cond_4

    .line 82
    if-nez v2, :cond_3

    .line 84
    iget-object v3, p0, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateController;->mStateList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v1, v3

    .line 85
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateController;->createActionState(Ljava/lang/String;)Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;

    move-result-object v3

    move-object v2, v3

    .line 86
    iget-object v3, p0, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateController;->mStateList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_3
    invoke-direct {p0, v2, v1, p2}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateController;->handleStateIncreaseCount(Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;ILjava/lang/String;)V

    goto :goto_2

    .line 89
    :cond_4
    if-nez p3, :cond_5

    .line 90
    invoke-direct {p0, v2, p2}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateController;->handleStateDecreaseCount(Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;Ljava/lang/String;)V

    .line 92
    .end local v1    # "index":I
    .end local v2    # "actionState":Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;
    :cond_5
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateController;->mStateList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 187
    iget-object v0, p0, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateController;->mListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 188
    return-void
.end method

.method public getCurrentState()Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateController;->mStateList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateController;->mStateList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;

    return-object v0

    .line 182
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized registerListener(Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateListener;

    monitor-enter p0

    .line 153
    if-eqz p1, :cond_0

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateController;->mListenerList:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateController;->getCurrentState()Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateListener;->onStateChanged(Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 152
    .end local p0    # "this":Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateController;
    .end local p1    # "listener":Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 157
    .restart local p1    # "listener":Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateListener;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public removeAction(Ljava/lang/String;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateController;->mStateList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iterator":Ljava/util/Iterator;
    const/4 v2, 0x0

    .line 53
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 54
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;

    .line 55
    .local v2, "next":Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;
    move-object v2, v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 56
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 58
    .end local v2    # "next":Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;
    :cond_0
    goto :goto_0

    .line 59
    .end local v1    # "iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateController;->notifyStateChanged()V

    .line 61
    return-void

    .line 59
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setStateOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateController;->setStateInner(Ljava/lang/String;Ljava/lang/String;I)V

    .line 48
    return-void
.end method

.method public setStateOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .line 43
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateController;->setStateInner(Ljava/lang/String;Ljava/lang/String;I)V

    .line 44
    return-void
.end method
