.class public Lcom/alibaba/wireless/security/open/initialize/b;
.super Ljava/lang/Object;


# instance fields
.field a:Z

.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/alibaba/wireless/security/open/initialize/IInitializeComponent$IInitFinishListener;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/String;

.field private e:Lcom/alibaba/wireless/security/framework/ISGPluginManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/wireless/security/open/initialize/b;->b:Ljava/util/Set;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alibaba/wireless/security/open/initialize/b;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/wireless/security/open/initialize/b;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/wireless/security/open/initialize/b;->e:Lcom/alibaba/wireless/security/framework/ISGPluginManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/wireless/security/open/initialize/b;->a:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/wireless/security/open/initialize/b;->b:Ljava/util/Set;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alibaba/wireless/security/open/initialize/b;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/wireless/security/open/initialize/b;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/wireless/security/open/initialize/b;->e:Lcom/alibaba/wireless/security/framework/ISGPluginManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/wireless/security/open/initialize/b;->a:Z

    iput-object p1, p0, Lcom/alibaba/wireless/security/open/initialize/b;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/wireless/security/open/initialize/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/wireless/security/open/initialize/b;->c()V

    return-void
.end method

.method private a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/initialize/b;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wireless/security/open/initialize/IInitializeComponent$IInitFinishListener;

    if-eqz p1, :cond_0

    invoke-interface {v1}, Lcom/alibaba/wireless/security/open/initialize/IInitializeComponent$IInitFinishListener;->onSuccess()V

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/alibaba/wireless/security/open/initialize/IInitializeComponent$IInitFinishListener;->onError()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/initialize/b;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wireless/security/open/initialize/IInitializeComponent$IInitFinishListener;

    instance-of v2, v1, Lcom/alibaba/wireless/security/open/initialize/IInitializeComponent$IInitFinishListenerV2;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/alibaba/wireless/security/open/initialize/IInitializeComponent$IInitFinishListenerV2;

    invoke-interface {v1}, Lcom/alibaba/wireless/security/open/initialize/IInitializeComponent$IInitFinishListenerV2;->onStart()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/initialize/b;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/alibaba/wireless/security/open/initialize/b;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wireless/security/open/initialize/IInitializeComponent$IInitFinishListener;

    invoke-interface {v2}, Lcom/alibaba/wireless/security/open/initialize/IInitializeComponent$IInitFinishListener;->onError()V

    goto :goto_0

    :cond_0
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
.method public a(Landroid/content/Context;Ljava/lang/String;ZZ)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wireless/security/open/SecException;
        }
    .end annotation

    iget-object p4, p0, Lcom/alibaba/wireless/security/open/initialize/b;->c:Ljava/lang/Object;

    monitor-enter p4

    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/wireless/security/open/initialize/b;->a:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/alibaba/wireless/security/open/initialize/b;->b()V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/alibaba/wireless/security/framework/utils/a;->b()J

    move-result-wide v2

    new-instance v0, Lcom/alibaba/wireless/security/framework/d;

    invoke-direct {v0}, Lcom/alibaba/wireless/security/framework/d;-><init>()V

    iget-object v6, p0, Lcom/alibaba/wireless/security/open/initialize/b;->d:Ljava/lang/String;

    const/4 v4, 0x0

    new-array v9, v4, [Ljava/lang/Object;

    move-object v4, v0

    move-object v5, p1

    move-object v7, p2

    move v8, p3

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/wireless/security/framework/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/framework/d;->getMainPluginName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/alibaba/wireless/security/framework/d;->getPluginInfo(Ljava/lang/String;)Lcom/alibaba/wireless/security/framework/ISGPluginInfo;

    const-string/jumbo p1, "main"

    const-string p2, "getInstance"

    const-string p3, ""

    invoke-static {p1, p2, p3, v2, v3}, Lcom/alibaba/wireless/security/framework/utils/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/alibaba/wireless/security/open/initialize/b;->e:Lcom/alibaba/wireless/security/framework/ISGPluginManager;

    iput-boolean v1, p0, Lcom/alibaba/wireless/security/open/initialize/b;->a:Z

    invoke-direct {p0, v1}, Lcom/alibaba/wireless/security/open/initialize/b;->a(Z)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/alibaba/wireless/security/open/SecException;

    const/16 p2, 0x65

    invoke-direct {p1, p2}, Lcom/alibaba/wireless/security/open/SecException;-><init>(I)V

    throw p1

    :cond_1
    :goto_0
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean p1, p0, Lcom/alibaba/wireless/security/open/initialize/b;->a:Z

    xor-int/2addr p1, v1

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a()Lcom/alibaba/wireless/security/framework/ISGPluginManager;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/initialize/b;->e:Lcom/alibaba/wireless/security/framework/ISGPluginManager;

    return-object v0
.end method

.method public a(Lcom/alibaba/wireless/security/open/initialize/IInitializeComponent$IInitFinishListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wireless/security/open/SecException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/initialize/b;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/alibaba/wireless/security/open/initialize/b;->b:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wireless/security/open/SecException;
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wireless/security/open/SecException;
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v7, Lcom/alibaba/wireless/security/open/initialize/b$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/wireless/security/open/initialize/b$1;-><init>(Lcom/alibaba/wireless/security/open/initialize/b;Landroid/content/Context;Ljava/lang/String;ZZ)V

    invoke-direct {v0, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    new-instance p1, Lcom/alibaba/wireless/security/open/SecException;

    const/16 p2, 0x65

    invoke-direct {p1, p2}, Lcom/alibaba/wireless/security/open/SecException;-><init>(I)V

    throw p1
.end method

.method public b(Lcom/alibaba/wireless/security/open/initialize/IInitializeComponent$IInitFinishListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wireless/security/open/SecException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/initialize/b;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/alibaba/wireless/security/open/initialize/b;->b:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method
