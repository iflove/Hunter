.class public Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRError;
.super Ljava/lang/Error;
.source "ANRError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRError$Dollar;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final _stackTraces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRError$Dollar$_Thread;Ljava/util/Map;)V
    .locals 1
    .param p1, "st"    # Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRError$Dollar$_Thread;
    .param p2, "stackTraces"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRError$Dollar$_Thread;",
            "Ljava/util/Map<",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;)V"
        }
    .end annotation

    .line 48
    const-string v0, "Application Not Responding"

    invoke-direct {p0, v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    iput-object p2, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRError;->_stackTraces:Ljava/util/Map;

    .line 50
    return-void
.end method

.method public static New(Ljava/lang/String;Z)Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRError;
    .locals 10
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "logThreadsWithoutStackTrace"    # Z

    .line 66
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    .line 68
    .local v0, "mainThread":Ljava/lang/Thread;
    new-instance v1, Ljava/util/TreeMap;

    new-instance v2, Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRError$1;

    invoke-direct {v2, v0}, Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRError$1;-><init>(Ljava/lang/Thread;)V

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 80
    .local v1, "stackTraces":Ljava/util/Map;
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 81
    .local v3, "entry":Ljava/util/Map$Entry;
    move-object v3, v4

    .line 82
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v0, :cond_0

    .line 84
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez p1, :cond_0

    .line 88
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/StackTraceElement;

    array-length v4, v4

    if-lez v4, :cond_1

    .line 92
    :cond_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .end local v3    # "entry":Ljava/util/Map$Entry;
    :cond_1
    goto :goto_0

    .line 94
    :cond_2
    const/4 v2, 0x0

    .line 95
    .local v2, "tst":Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRError$Dollar$_Thread;
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 96
    .local v4, "entry":Ljava/util/Map$Entry;
    new-instance v5, Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRError$Dollar$_Thread;

    new-instance v6, Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRError$Dollar;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/StackTraceElement;

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRError$Dollar;-><init>(Ljava/lang/String;[Ljava/lang/StackTraceElement;B)V

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v5, v6, v2, v9}, Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRError$Dollar$_Thread;-><init>(Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRError$Dollar;Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRError$Dollar$_Thread;B)V

    move-object v2, v5

    .end local v4    # "entry":Ljava/util/Map$Entry;
    goto :goto_1

    .line 98
    :cond_3
    new-instance v3, Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRError;

    invoke-direct {v3, v2, v1}, Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRError;-><init>(Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRError$Dollar$_Thread;Ljava/util/Map;)V

    return-object v3
.end method

.method public static NewMainOnly()Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRError;
    .locals 9

    .line 128
    const/4 v0, 0x0

    .local v0, "mainThread":Ljava/lang/Thread;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    .line 129
    move-object v0, v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 131
    .local v1, "mainStackTrace":[Ljava/lang/StackTraceElement;
    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    const/4 v3, 0x0

    move-object v4, v3

    .line 132
    .local v4, "stackTraces":Ljava/util/HashMap;
    move-object v4, v2

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    new-instance v2, Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRError;

    new-instance v5, Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRError$Dollar$_Thread;

    new-instance v6, Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRError$Dollar;

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v6, v7, v1, v8}, Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRError$Dollar;-><init>(Ljava/lang/String;[Ljava/lang/StackTraceElement;B)V

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v5, v6, v3, v8}, Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRError$Dollar$_Thread;-><init>(Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRError$Dollar;Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRError$Dollar$_Thread;B)V

    invoke-direct {v2, v5, v4}, Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRError;-><init>(Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRError$Dollar$_Thread;Ljava/util/Map;)V

    return-object v2
.end method


# virtual methods
.method public fillInStackTrace()Ljava/lang/Throwable;
    .locals 1

    .line 61
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/StackTraceElement;

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRError;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 62
    return-object p0
.end method

.method public getStackTraces()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRError;->_stackTraces:Ljava/util/Map;

    return-object v0
.end method
