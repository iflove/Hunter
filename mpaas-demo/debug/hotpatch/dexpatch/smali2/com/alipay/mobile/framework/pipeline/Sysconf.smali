.class Lcom/alipay/mobile/framework/pipeline/Sysconf;
.super Ljava/lang/Object;
.source "Sysconf.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;J)J
    .locals 9
    .param p0, "field"    # Ljava/lang/String;
    .param p1, "fallback"    # J

    .line 57
    :try_start_0
    const-string v0, "libcore.io.OsConstants"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 58
    invoke-virtual {v0, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 59
    .local v0, "scClkTck":I
    const-string v2, "libcore.io.Libcore"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 60
    .local v2, "libcoreClass":Ljava/lang/Class;
    const-string v3, "libcore.io.Os"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 61
    .local v3, "osClass":Ljava/lang/Class;
    const-string/jumbo v4, "os"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 62
    .local v1, "osInstance":Ljava/lang/Object;
    const-string/jumbo v4, "sysconf"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v4

    .line 63
    .end local v0    # "scClkTck":I
    .end local v1    # "osInstance":Ljava/lang/Object;
    .end local v2    # "libcoreClass":Ljava/lang/Class;
    .end local v3    # "osClass":Ljava/lang/Class;
    :catchall_0
    move-exception v0

    .line 67
    return-wide p1
.end method

.method public static getScClkTck(J)J
    .locals 5
    .param p0, "fallback"    # J

    .line 34
    move-wide v0, p0

    .line 35
    .local v0, "result":J
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 36
    sget v2, Landroid/system/OsConstants;->_SC_CLK_TCK:I

    invoke-static {v2}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v0

    goto :goto_0

    .line 37
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_1

    .line 38
    const-string v2, "_SC_CLK_TCK"

    invoke-static {v2, p0, p1}, Lcom/alipay/mobile/framework/pipeline/Sysconf;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 41
    :cond_1
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    return-wide v0

    :cond_2
    return-wide p0
.end method

.method public static getScNProcessorsConf(J)J
    .locals 2
    .param p0, "fallback"    # J

    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 47
    sget v0, Landroid/system/OsConstants;->_SC_NPROCESSORS_CONF:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v0

    return-wide v0

    .line 48
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 49
    const-string v0, "_SC_NPROCESSORS_CONF"

    invoke-static {v0, p0, p1}, Lcom/alipay/mobile/framework/pipeline/Sysconf;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    .line 52
    :cond_1
    return-wide p0
.end method
