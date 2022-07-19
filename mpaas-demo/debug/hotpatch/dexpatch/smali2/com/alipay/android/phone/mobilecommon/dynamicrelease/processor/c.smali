.class public final Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;
.super Ljava/lang/Object;
.source "RequestInfo.java"


# instance fields
.field public a:I

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/String;

.field public e:I

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alipay/mobile/common/transport/Request;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 4

    monitor-enter p0

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 24
    .local v1, "requestWeakReference":Ljava/lang/ref/WeakReference;
    move-object v1, v3

    if-eqz v3, :cond_0

    .line 25
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/common/transport/Request;

    .line 26
    .local v2, "request":Lcom/alipay/mobile/common/transport/Request;
    move-object v2, v3

    if-eqz v3, :cond_0

    .line 27
    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/Request;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .end local v1    # "requestWeakReference":Ljava/lang/ref/WeakReference;
    .end local v2    # "request":Lcom/alipay/mobile/common/transport/Request;
    .end local p0    # "this":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;
    :cond_0
    goto :goto_0

    .line 31
    :cond_1
    monitor-exit p0

    return-void

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/alipay/mobile/common/transport/Request;)V
    .locals 2
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;

    monitor-enter p0

    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;->f:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit p0

    return-void

    .line 18
    .end local p0    # "this":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;
    .end local p1    # "request":Lcom/alipay/mobile/common/transport/Request;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
