.class public final Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$EditorImpl;
.super Ljava/lang/Object;
.source "APSharedPreferencesImpl.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "EditorImpl"
.end annotation


# instance fields
.field private mClear:Z

.field private final mModified:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;

    .line 357
    iput-object p1, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$EditorImpl;->this$0:Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    .line 359
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$EditorImpl;->mClear:Z

    return-void
.end method

.method static synthetic access$800(Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$EditorImpl;Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$MemoryCommitResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$EditorImpl;
    .param p1, "x1"    # Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$MemoryCommitResult;

    .line 357
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$EditorImpl;->notifyListeners(Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$MemoryCommitResult;)V

    return-void
.end method

.method private commitToMemory()Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$MemoryCommitResult;
    .locals 10

    .line 451
    new-instance v0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$MemoryCommitResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$MemoryCommitResult;-><init>(Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$1;)V

    .line 452
    .local v0, "mcr":Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$MemoryCommitResult;
    iget-object v2, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$EditorImpl;->this$0:Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;

    monitor-enter v2

    .line 456
    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$EditorImpl;->this$0:Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;

    # getter for: Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mDiskWritesInFlight:I
    invoke-static {v3}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->access$500(Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;)I

    move-result v3

    if-lez v3, :cond_0

    .line 461
    iget-object v3, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$EditorImpl;->this$0:Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;

    new-instance v4, Ljava/util/HashMap;

    iget-object v5, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$EditorImpl;->this$0:Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;

    # getter for: Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mMap:Ljava/util/Map;
    invoke-static {v5}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->access$600(Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    # setter for: Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mMap:Ljava/util/Map;
    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->access$602(Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;Ljava/util/Map;)Ljava/util/Map;

    .line 463
    :cond_0
    iget-object v3, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$EditorImpl;->this$0:Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;

    # getter for: Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->access$600(Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, v0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$MemoryCommitResult;->mapToWriteToDisk:Ljava/util/Map;

    .line 464
    iget-object v3, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$EditorImpl;->this$0:Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;

    # operator++ for: Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mDiskWritesInFlight:I
    invoke-static {v3}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->access$508(Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;)I

    .line 466
    iget-object v3, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$EditorImpl;->this$0:Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;

    # getter for: Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;
    invoke-static {v3}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->access$700(Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;)Ljava/util/WeakHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->size()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    move v6, v5

    .line 467
    .local v6, "hasListeners":Z
    move v6, v3

    if-eqz v3, :cond_2

    .line 468
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$MemoryCommitResult;->keysModified:Ljava/util/List;

    .line 469
    new-instance v3, Ljava/util/HashSet;

    iget-object v7, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$EditorImpl;->this$0:Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;

    .line 470
    # getter for: Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;
    invoke-static {v7}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->access$700(Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;)Ljava/util/WeakHashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v3, v0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$MemoryCommitResult;->listeners:Ljava/util/Set;

    .line 473
    :cond_2
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 474
    :try_start_1
    iget-boolean v3, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$EditorImpl;->mClear:Z

    if-eqz v3, :cond_4

    .line 475
    iget-object v3, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$EditorImpl;->this$0:Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;

    # getter for: Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->access$600(Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 476
    iput-boolean v4, v0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$MemoryCommitResult;->changesMade:Z

    .line 477
    iget-object v3, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$EditorImpl;->this$0:Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;

    # getter for: Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->access$600(Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 479
    :cond_3
    iput-boolean v5, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$EditorImpl;->mClear:Z

    .line 482
    :cond_4
    iget-object v3, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v5, v1

    move-object v7, v5

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 483
    .local v1, "e":Ljava/util/Map$Entry;
    move-object v1, v8

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 484
    .local v8, "k":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    .line 488
    .local v5, "v":Ljava/lang/Object;
    move-object v5, v9

    if-eq v9, p0, :cond_8

    if-nez v5, :cond_6

    goto :goto_2

    .line 494
    :cond_6
    iget-object v9, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$EditorImpl;->this$0:Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;

    # getter for: Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mMap:Ljava/util/Map;
    invoke-static {v9}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->access$600(Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 495
    iget-object v9, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$EditorImpl;->this$0:Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;

    # getter for: Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mMap:Ljava/util/Map;
    invoke-static {v9}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->access$600(Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 496
    .local v7, "existingValue":Ljava/lang/Object;
    move-object v7, v9

    if-eqz v9, :cond_7

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 500
    .end local v7    # "existingValue":Ljava/lang/Object;
    :cond_7
    iget-object v9, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$EditorImpl;->this$0:Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;

    # getter for: Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mMap:Ljava/util/Map;
    invoke-static {v9}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->access$600(Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 489
    :cond_8
    :goto_2
    iget-object v9, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$EditorImpl;->this$0:Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;

    # getter for: Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mMap:Ljava/util/Map;
    invoke-static {v9}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->access$600(Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 492
    iget-object v9, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$EditorImpl;->this$0:Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;

    # getter for: Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mMap:Ljava/util/Map;
    invoke-static {v9}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->access$600(Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    :goto_3
    iput-boolean v4, v0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$MemoryCommitResult;->changesMade:Z

    .line 504
    if-eqz v6, :cond_9

    .line 505
    iget-object v9, v0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$MemoryCommitResult;->keysModified:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    .end local v1    # "e":Ljava/util/Map$Entry;
    .end local v5    # "v":Ljava/lang/Object;
    .end local v8    # "k":Ljava/lang/String;
    :cond_9
    goto :goto_1

    .line 509
    :cond_a
    iget-object v1, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 510
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 511
    .end local v6    # "hasListeners":Z
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 512
    return-object v0

    .line 510
    .restart local v6    # "hasListeners":Z
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "mcr":Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$MemoryCommitResult;
    :try_start_4
    throw v1

    .line 511
    .end local v6    # "hasListeners":Z
    .restart local v0    # "mcr":Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$MemoryCommitResult;
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method private notifyListeners(Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$MemoryCommitResult;)V
    .locals 5
    .param p1, "mcr"    # Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$MemoryCommitResult;

    .line 529
    iget-object v0, p1, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$MemoryCommitResult;->listeners:Ljava/util/Set;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$MemoryCommitResult;->keysModified:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$MemoryCommitResult;->keysModified:Ljava/util/List;

    .line 530
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 533
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_4

    .line 534
    iget-object v0, p1, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$MemoryCommitResult;->keysModified:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_3

    .line 535
    iget-object v2, p1, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$MemoryCommitResult;->keysModified:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 536
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p1, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$MemoryCommitResult;->listeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 537
    .local v1, "listener":Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    move-object v1, v4

    if-eqz v4, :cond_1

    .line 538
    iget-object v4, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$EditorImpl;->this$0:Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 540
    .end local v1    # "listener":Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    :cond_1
    goto :goto_1

    .line 534
    .end local v2    # "key":Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_3
    return-void

    .line 544
    :cond_4
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$EditorImpl$3;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$EditorImpl$3;-><init>(Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$EditorImpl;Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$MemoryCommitResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 550
    return-void

    .line 531
    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public final apply()V
    .locals 4

    .line 419
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$EditorImpl;->commitToMemory()Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$MemoryCommitResult;

    move-result-object v0

    .line 420
    .local v0, "mcr":Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$MemoryCommitResult;
    new-instance v1, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$EditorImpl$1;

    invoke-direct {v1, p0, v0}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$EditorImpl$1;-><init>(Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$EditorImpl;Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$MemoryCommitResult;)V

    const/4 v2, 0x0

    .line 431
    .local v2, "awaitCommit":Ljava/lang/Runnable;
    move-object v2, v1

    # invokes: Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->queueWorkAdd(Ljava/lang/Runnable;)V
    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->access$100(Ljava/lang/Runnable;)V

    .line 433
    new-instance v1, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$EditorImpl$2;

    invoke-direct {v1, p0, v2}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$EditorImpl$2;-><init>(Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$EditorImpl;Ljava/lang/Runnable;)V

    .line 440
    .local v1, "postWriteRunnable":Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$EditorImpl;->this$0:Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;

    # invokes: Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->enqueueDiskWrite(Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V
    invoke-static {v3, v0, v1}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->access$300(Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V

    .line 446
    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$EditorImpl;->notifyListeners(Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$MemoryCommitResult;)V

    .line 447
    return-void
.end method

.method public final clear()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 412
    monitor-enter p0

    .line 413
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$EditorImpl;->mClear:Z

    .line 414
    monitor-exit p0

    return-object p0

    .line 415
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final commit()Z
    .locals 3

    .line 516
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$EditorImpl;->commitToMemory()Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$MemoryCommitResult;

    move-result-object v0

    .line 517
    .local v0, "mcr":Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$MemoryCommitResult;
    iget-object v1, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$EditorImpl;->this$0:Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;

    const/4 v2, 0x0

    # invokes: Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->enqueueDiskWrite(Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V
    invoke-static {v1, v0, v2}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->access$300(Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V

    .line 520
    :try_start_0
    iget-object v1, v0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$MemoryCommitResult;->writtenToDiskLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    nop

    .line 524
    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$EditorImpl;->notifyListeners(Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$MemoryCommitResult;)V

    .line 525
    iget-boolean v1, v0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$MemoryCommitResult;->writeToDiskResult:Z

    return v1

    .line 521
    :catch_0
    move-exception v1

    .line 522
    const/4 v1, 0x0

    return v1
.end method

.method public final putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 398
    monitor-enter p0

    .line 399
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    monitor-exit p0

    return-object p0

    .line 401
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 391
    monitor-enter p0

    .line 392
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    monitor-exit p0

    return-object p0

    .line 394
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 377
    monitor-enter p0

    .line 378
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    monitor-exit p0

    return-object p0

    .line 380
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 384
    monitor-enter p0

    .line 385
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    monitor-exit p0

    return-object p0

    .line 387
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 362
    monitor-enter p0

    .line 363
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    monitor-exit p0

    return-object p0

    .line 365
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "values"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    .line 369
    monitor-enter p0

    .line 370
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_0
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    monitor-exit p0

    return-object p0

    .line 373
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 405
    monitor-enter p0

    .line 406
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    monitor-exit p0

    return-object p0

    .line 408
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
