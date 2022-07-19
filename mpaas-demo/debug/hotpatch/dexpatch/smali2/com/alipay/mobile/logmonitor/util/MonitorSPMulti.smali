.class public Lcom/alipay/mobile/logmonitor/util/MonitorSPMulti;
.super Ljava/lang/Object;
.source "MonitorSPMulti.java"


# static fields
.field private static a:Lcom/alipay/mobile/logmonitor/util/MonitorSPMulti;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/util/MonitorSPMulti;->b:Landroid/content/Context;

    .line 38
    return-void
.end method

.method public static a()Lcom/alipay/mobile/logmonitor/util/MonitorSPMulti;
    .locals 2

    .line 29
    sget-object v0, Lcom/alipay/mobile/logmonitor/util/MonitorSPMulti;->a:Lcom/alipay/mobile/logmonitor/util/MonitorSPMulti;

    if-eqz v0, :cond_0

    .line 32
    invoke-direct {v0}, Lcom/alipay/mobile/logmonitor/util/MonitorSPMulti;->b()V

    .line 33
    sget-object v0, Lcom/alipay/mobile/logmonitor/util/MonitorSPMulti;->a:Lcom/alipay/mobile/logmonitor/util/MonitorSPMulti;

    return-object v0

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "need createInstance befor use"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/util/MonitorSPMulti;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/alipay/mobile/logmonitor/util/MonitorSPMulti;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/logmonitor/util/MonitorSPMulti;->a:Lcom/alipay/mobile/logmonitor/util/MonitorSPMulti;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Lcom/alipay/mobile/logmonitor/util/MonitorSPMulti;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/logmonitor/util/MonitorSPMulti;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/mobile/logmonitor/util/MonitorSPMulti;->a:Lcom/alipay/mobile/logmonitor/util/MonitorSPMulti;

    .line 25
    :cond_0
    sget-object v1, Lcom/alipay/mobile/logmonitor/util/MonitorSPMulti;->a:Lcom/alipay/mobile/logmonitor/util/MonitorSPMulti;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 21
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private b()V
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/MonitorSPMulti;->b:Landroid/content/Context;

    const-string v1, "MonitorMulti"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/util/MonitorSPMulti;->c:Landroid/content/SharedPreferences;

    .line 42
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/MonitorSPMulti;->c:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/MonitorSPMulti;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 78
    return-void
.end method

.method public final a(Ljava/lang/String;J)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/MonitorSPMulti;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 90
    return-void
.end method

.method public final b(Ljava/lang/String;J)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/MonitorSPMulti;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
