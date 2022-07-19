.class public Lcom/alipay/android/phone/mobilesdk/apm/base/MainLooperLogger;
.super Ljava/lang/Object;
.source "MainLooperLogger.java"

# interfaces
.implements Landroid/util/Printer;


# static fields
.field private static a:Lcom/alipay/android/phone/mobilesdk/apm/base/MainLooperLogger;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Printer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Printer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/base/MainLooperLogger;->c:Z

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/base/MainLooperLogger;->b:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/base/MainLooperLogger;->d:Ljava/util/List;

    .line 37
    return-void
.end method

.method public static getInstance()Lcom/alipay/android/phone/mobilesdk/apm/base/MainLooperLogger;
    .locals 2

    .line 24
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/apm/base/MainLooperLogger;->a:Lcom/alipay/android/phone/mobilesdk/apm/base/MainLooperLogger;

    if-nez v0, :cond_1

    .line 25
    const-class v0, Lcom/alipay/android/phone/mobilesdk/apm/base/MainLooperLogger;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/apm/base/MainLooperLogger;->a:Lcom/alipay/android/phone/mobilesdk/apm/base/MainLooperLogger;

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Lcom/alipay/android/phone/mobilesdk/apm/base/MainLooperLogger;

    invoke-direct {v1}, Lcom/alipay/android/phone/mobilesdk/apm/base/MainLooperLogger;-><init>()V

    sput-object v1, Lcom/alipay/android/phone/mobilesdk/apm/base/MainLooperLogger;->a:Lcom/alipay/android/phone/mobilesdk/apm/base/MainLooperLogger;

    .line 29
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 31
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/apm/base/MainLooperLogger;->a:Lcom/alipay/android/phone/mobilesdk/apm/base/MainLooperLogger;

    return-object v0
.end method


# virtual methods
.method public addMessageLogging(Landroid/util/Printer;)V
    .locals 2
    .param p1, "logger"    # Landroid/util/Printer;

    .line 40
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 43
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/base/MainLooperLogger;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/base/MainLooperLogger;->c:Z

    .line 45
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/base/MainLooperLogger;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/base/MainLooperLogger;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 48
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    .line 50
    :cond_1
    return-void

    .line 41
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "calling addMessageLogging not in main thread."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public println(Ljava/lang/String;)V
    .locals 3
    .param p1, "x"    # Ljava/lang/String;

    .line 67
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/base/MainLooperLogger;->c:Z

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/base/MainLooperLogger;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 69
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/base/MainLooperLogger;->d:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/base/MainLooperLogger;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/base/MainLooperLogger;->c:Z

    .line 72
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/base/MainLooperLogger;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 73
    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/base/MainLooperLogger;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Printer;

    .line 74
    .local v1, "logger":Landroid/util/Printer;
    move-object v1, v2

    if-eqz v2, :cond_1

    .line 75
    invoke-interface {v1, p1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 72
    .end local v1    # "logger":Landroid/util/Printer;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public removeMessageLogging(Landroid/util/Printer;)V
    .locals 2
    .param p1, "logger"    # Landroid/util/Printer;

    .line 53
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 56
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/base/MainLooperLogger;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/base/MainLooperLogger;->c:Z

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/base/MainLooperLogger;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/base/MainLooperLogger;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 61
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    .line 63
    :cond_1
    return-void

    .line 54
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "calling removeMessageLogging not in main thread."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
