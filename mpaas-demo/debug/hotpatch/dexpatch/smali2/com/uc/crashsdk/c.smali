.class final Lcom/uc/crashsdk/c;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 720
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uc/crashsdk/c;->a:Z

    .line 721
    iput-boolean v0, p0, Lcom/uc/crashsdk/c;->b:Z

    return-void
.end method

.method private a(I)V
    .locals 3

    .line 724
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 725
    :goto_0
    if-nez p1, :cond_2

    .line 727
    invoke-static {}, Lcom/uc/crashsdk/b;->F()Ljava/util/WeakHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 728
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 729
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 730
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 731
    if-eqz v2, :cond_1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 732
    nop

    .line 733
    goto :goto_2

    .line 735
    :cond_1
    goto :goto_1

    .line 737
    :cond_2
    move v0, p1

    :goto_2
    iget-boolean p1, p0, Lcom/uc/crashsdk/c;->a:Z

    if-eq p1, v0, :cond_3

    .line 739
    invoke-static {v0}, Lcom/uc/crashsdk/b;->a(Z)V

    .line 740
    iput-boolean v0, p0, Lcom/uc/crashsdk/c;->a:Z

    .line 743
    :cond_3
    invoke-static {}, Lcom/uc/crashsdk/b;->F()Ljava/util/WeakHashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result p1

    .line 744
    iget-boolean v0, p0, Lcom/uc/crashsdk/c;->b:Z

    if-eq v0, p1, :cond_5

    .line 746
    if-eqz p1, :cond_4

    .line 747
    invoke-static {}, Lcom/uc/crashsdk/b;->t()V

    .line 749
    :cond_4
    iput-boolean p1, p0, Lcom/uc/crashsdk/c;->b:Z

    .line 757
    :cond_5
    return-void
.end method

.method private a(Landroid/app/Activity;I)V
    .locals 3

    .line 711
    invoke-static {}, Lcom/uc/crashsdk/h;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 712
    invoke-static {}, Lcom/uc/crashsdk/b;->E()Z

    .line 713
    invoke-static {}, Lcom/uc/crashsdk/b;->F()Ljava/util/WeakHashMap;

    move-result-object v0

    monitor-enter v0

    .line 714
    :try_start_0
    invoke-static {}, Lcom/uc/crashsdk/b;->F()Ljava/util/WeakHashMap;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    invoke-direct {p0, p2}, Lcom/uc/crashsdk/c;->a(I)V

    .line 716
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 718
    :cond_0
    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 654
    const/4 p2, 0x2

    invoke-direct {p0, p1, p2}, Lcom/uc/crashsdk/c;->a(Landroid/app/Activity;I)V

    .line 655
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    .line 701
    invoke-static {}, Lcom/uc/crashsdk/h;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 702
    invoke-static {}, Lcom/uc/crashsdk/b;->E()Z

    .line 703
    invoke-static {}, Lcom/uc/crashsdk/b;->F()Ljava/util/WeakHashMap;

    move-result-object v0

    monitor-enter v0

    .line 704
    :try_start_0
    invoke-static {}, Lcom/uc/crashsdk/b;->F()Ljava/util/WeakHashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/uc/crashsdk/c;->a(I)V

    .line 706
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 708
    :cond_0
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .line 678
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/uc/crashsdk/c;->a(Landroid/app/Activity;I)V

    .line 679
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 670
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/uc/crashsdk/c;->a(Landroid/app/Activity;I)V

    .line 671
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 694
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 662
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/uc/crashsdk/c;->a(Landroid/app/Activity;I)V

    .line 663
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .line 686
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/uc/crashsdk/c;->a(Landroid/app/Activity;I)V

    .line 687
    return-void
.end method
