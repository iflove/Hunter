.class public final Lcom/alipay/mobile/quinox/framemonitor/e;
.super Ljava/lang/Object;
.source "JerkHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/quinox/framemonitor/e$a;,
        Lcom/alipay/mobile/quinox/framemonitor/e$c;,
        Lcom/alipay/mobile/quinox/framemonitor/e$b;
    }
.end annotation


# instance fields
.field private a:Lcom/alipay/mobile/quinox/framemonitor/f;

.field private b:Lcom/alipay/mobile/quinox/framemonitor/e$c;

.field private c:Ljava/lang/Boolean;

.field private d:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/e;->b:Lcom/alipay/mobile/quinox/framemonitor/e$c;

    .line 38
    iput-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/e;->c:Ljava/lang/Boolean;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/framemonitor/e;->d:Z

    .line 43
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/framemonitor/e;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/quinox/framemonitor/e;Lcom/alipay/mobile/quinox/framemonitor/e$c;)Lcom/alipay/mobile/quinox/framemonitor/e$c;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/framemonitor/e;
    .param p1, "x1"    # Lcom/alipay/mobile/quinox/framemonitor/e$c;

    .line 19
    iput-object p1, p0, Lcom/alipay/mobile/quinox/framemonitor/e;->b:Lcom/alipay/mobile/quinox/framemonitor/e$c;

    return-object p1
.end method

.method public static a()Lcom/alipay/mobile/quinox/framemonitor/e;
    .locals 1

    .line 29
    sget-object v0, Lcom/alipay/mobile/quinox/framemonitor/e$b;->a:Lcom/alipay/mobile/quinox/framemonitor/e;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/quinox/framemonitor/e;Lcom/alipay/mobile/quinox/framemonitor/f;)Lcom/alipay/mobile/quinox/framemonitor/f;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/framemonitor/e;
    .param p1, "x1"    # Lcom/alipay/mobile/quinox/framemonitor/f;

    .line 19
    iput-object p1, p0, Lcom/alipay/mobile/quinox/framemonitor/e;->a:Lcom/alipay/mobile/quinox/framemonitor/f;

    return-object p1
.end method

.method private static a(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "action"    # Ljava/lang/Runnable;

    .line 130
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 131
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 133
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->getInstance()Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 135
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/quinox/framemonitor/e;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/framemonitor/e;

    .line 19
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/framemonitor/e;->d:Z

    return v0
.end method

.method static synthetic a(Lcom/alipay/mobile/quinox/framemonitor/e;Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/framemonitor/e;
    .param p1, "x1"    # Landroid/content/Context;

    .line 19
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/framemonitor/e;->c(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/alipay/mobile/quinox/framemonitor/e;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/framemonitor/e;
    .param p1, "x1"    # Z

    .line 19
    iput-boolean p1, p0, Lcom/alipay/mobile/quinox/framemonitor/e;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/alipay/mobile/quinox/framemonitor/e;)Lcom/alipay/mobile/quinox/framemonitor/f;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/framemonitor/e;

    .line 19
    iget-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/e;->a:Lcom/alipay/mobile/quinox/framemonitor/f;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/quinox/framemonitor/e;)Lcom/alipay/mobile/quinox/framemonitor/e$c;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/framemonitor/e;

    .line 19
    iget-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/e;->b:Lcom/alipay/mobile/quinox/framemonitor/e$c;

    return-object v0
.end method

.method private c(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/e;->c:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 119
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 120
    return v0

    .line 122
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getDefaultSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 123
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v2, "enable_quinox_jerk_monitor"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/e;->c:Ljava/lang/Boolean;

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "jerk monitor enabled = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/quinox/framemonitor/e;->c:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "JerkHandler"

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/e;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startJerkWatch() called with: context = ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JerkHandler"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->isUIEntryLaunch(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    const-string v0, "not ui entry"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void

    .line 52
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/framemonitor/e;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    const-string v0, "startJerk: not enableJerkMonitor"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void

    .line 56
    :cond_1
    new-instance v0, Lcom/alipay/mobile/quinox/framemonitor/e$1;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/quinox/framemonitor/e$1;-><init>(Lcom/alipay/mobile/quinox/framemonitor/e;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/alipay/mobile/quinox/framemonitor/e;->a(Ljava/lang/Runnable;)V

    .line 80
    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 83
    const-string v0, "JerkHandler"

    const-string v1, "stopJerkWatch() called"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->isUIEntryLaunch(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    return-void

    .line 88
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/alipay/mobile/quinox/framemonitor/e;->c(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 89
    const-string v1, "stopJerk: not enableJerkMonitor"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void

    .line 93
    :cond_1
    new-instance v0, Lcom/alipay/mobile/quinox/framemonitor/e$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/quinox/framemonitor/e$2;-><init>(Lcom/alipay/mobile/quinox/framemonitor/e;)V

    invoke-static {v0}, Lcom/alipay/mobile/quinox/framemonitor/e;->a(Ljava/lang/Runnable;)V

    .line 115
    return-void
.end method
