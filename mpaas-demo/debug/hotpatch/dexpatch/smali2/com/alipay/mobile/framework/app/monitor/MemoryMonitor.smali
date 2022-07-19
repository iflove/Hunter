.class public Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;
.super Ljava/lang/Object;
.source "MemoryMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$MemoryFamily;
    }
.end annotation


# static fields
.field private static a:Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;

.field private static c:I


# instance fields
.field private b:Z

.field private d:Landroid/content/Context;

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$MemoryFamily;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const/4 v0, -0x1

    sput v0, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;->c:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;->b:Z

    .line 44
    if-eqz p1, :cond_1

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;->d:Landroid/content/Context;

    goto :goto_0

    .line 48
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;->d:Landroid/content/Context;

    goto :goto_0

    .line 51
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;->d:Landroid/content/Context;

    .line 53
    :goto_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;->e:Ljava/util/Set;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;->f:Ljava/util/List;

    .line 55
    const-string v0, "FRAME.MemoryMonitor"

    const-string v1, "Create MemoryMonitor instance."

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;

    .line 19
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;->e:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;

    .line 19
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .line 19
    sget v0, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;->c:I

    return v0
.end method

.method static synthetic access$202(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 19
    sput p0, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;->c:I

    return p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 32
    sget-object v0, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;->a:Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;

    if-nez v0, :cond_1

    .line 33
    const-class v0, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;->a:Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;->a:Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;

    .line 37
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 40
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;->a:Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;

    return-object v0
.end method


# virtual methods
.method public commit(Ljava/lang/String;)V
    .locals 3
    .param p1, "family"    # Ljava/lang/String;

    .line 108
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;->b:Z

    const-string v1, "FRAME.MemoryMonitor"

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "commit but not enabled "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void

    .line 112
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "commit but not valid "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void

    .line 116
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;

    move-result-object v0

    new-instance v2, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$2;

    invoke-direct {v2, p0, p1}, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$2;-><init>(Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v1}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->executeSerially(Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public putExternalParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "family"    # Ljava/lang/String;
    .param p2, "unit"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .line 145
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;->b:Z

    const-string v1, "FRAME.MemoryMonitor"

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "putExternalParams but not enabled "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void

    .line 149
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 153
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;

    move-result-object v0

    new-instance v8, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$3;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$3;-><init>(Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v8, v1}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->executeSerially(Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 174
    return-void

    .line 150
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "commit but params not valid "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public record(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "family"    # Ljava/lang/String;
    .param p2, "unit"    # Ljava/lang/String;

    .line 64
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;->b:Z

    const-string v1, " "

    const-string v2, "FRAME.MemoryMonitor"

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "record but not Enable: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void

    .line 68
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 72
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$1;-><init>(Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1, v2}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->executeSerially(Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 105
    return-void

    .line 69
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "record but not valid: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public setEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 59
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;->b:Z

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setEnable: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FRAME.MemoryMonitor"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method
