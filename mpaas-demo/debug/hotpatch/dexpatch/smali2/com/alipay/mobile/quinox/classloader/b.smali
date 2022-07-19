.class public Lcom/alipay/mobile/quinox/classloader/b;
.super Ljava/lang/ClassLoader;
.source "ComponentClassLoader.java"


# instance fields
.field private a:Lcom/alipay/mobile/quinox/b;

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Lcom/alipay/mobile/quinox/utils/PatternUtil$PatternData;

    invoke-direct {v0}, Lcom/alipay/mobile/quinox/utils/PatternUtil$PatternData;-><init>()V

    .line 19
    sput-object v0, Lcom/alipay/mobile/quinox/utils/PatternUtil;->sPattern:Lcom/alipay/mobile/quinox/utils/PatternUtil$PatternData;

    const-string v1, "android."

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/utils/PatternUtil$PatternData;->addPrefixPattern(Ljava/lang/String;)V

    .line 20
    sget-object v0, Lcom/alipay/mobile/quinox/utils/PatternUtil;->sPattern:Lcom/alipay/mobile/quinox/utils/PatternUtil$PatternData;

    const-string v1, "java"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/utils/PatternUtil$PatternData;->addPrefixPattern(Ljava/lang/String;)V

    .line 21
    sget-object v0, Lcom/alipay/mobile/quinox/utils/PatternUtil;->sPattern:Lcom/alipay/mobile/quinox/utils/PatternUtil$PatternData;

    const-string v1, "dalvik."

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/utils/PatternUtil$PatternData;->addPrefixPattern(Ljava/lang/String;)V

    .line 22
    sget-object v0, Lcom/alipay/mobile/quinox/utils/PatternUtil;->sPattern:Lcom/alipay/mobile/quinox/utils/PatternUtil$PatternData;

    const-string v1, "org.w3c."

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/utils/PatternUtil$PatternData;->addPrefixPattern(Ljava/lang/String;)V

    .line 23
    sget-object v0, Lcom/alipay/mobile/quinox/utils/PatternUtil;->sPattern:Lcom/alipay/mobile/quinox/utils/PatternUtil$PatternData;

    const-string v1, "de.robv.android.xposed"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/utils/PatternUtil$PatternData;->addPrefixPattern(Ljava/lang/String;)V

    .line 24
    sget-object v0, Lcom/alipay/mobile/quinox/utils/PatternUtil;->sPattern:Lcom/alipay/mobile/quinox/utils/PatternUtil$PatternData;

    const-string v1, "junit."

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/utils/PatternUtil$PatternData;->addPrefixPattern(Ljava/lang/String;)V

    .line 25
    sget-object v0, Lcom/alipay/mobile/quinox/utils/PatternUtil;->sPattern:Lcom/alipay/mobile/quinox/utils/PatternUtil$PatternData;

    const-string v1, "org.apache."

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/utils/PatternUtil$PatternData;->addPrefixPattern(Ljava/lang/String;)V

    .line 26
    sget-object v0, Lcom/alipay/mobile/quinox/utils/PatternUtil;->sPattern:Lcom/alipay/mobile/quinox/utils/PatternUtil$PatternData;

    const-string v1, "org.xml"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/utils/PatternUtil$PatternData;->addPrefixPattern(Ljava/lang/String;)V

    .line 27
    sget-object v0, Lcom/alipay/mobile/quinox/utils/PatternUtil;->sPattern:Lcom/alipay/mobile/quinox/utils/PatternUtil$PatternData;

    const-string v1, "org.json."

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/utils/PatternUtil$PatternData;->addPrefixPattern(Ljava/lang/String;)V

    .line 28
    sget-object v0, Lcom/alipay/mobile/quinox/utils/PatternUtil;->sPattern:Lcom/alipay/mobile/quinox/utils/PatternUtil$PatternData;

    const-string v1, "com.android.org."

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/utils/PatternUtil$PatternData;->addPrefixPattern(Ljava/lang/String;)V

    .line 29
    sget-object v0, Lcom/alipay/mobile/quinox/utils/PatternUtil;->sPattern:Lcom/alipay/mobile/quinox/utils/PatternUtil$PatternData;

    const-string v1, "kangvip."

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/utils/PatternUtil$PatternData;->addPrefixPattern(Ljava/lang/String;)V

    .line 30
    sget-object v0, Lcom/alipay/mobile/quinox/utils/PatternUtil;->sPattern:Lcom/alipay/mobile/quinox/utils/PatternUtil$PatternData;

    const-string v1, "common."

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/utils/PatternUtil$PatternData;->addPrefixPattern(Ljava/lang/String;)V

    .line 31
    sget-object v0, Lcom/alipay/mobile/quinox/utils/PatternUtil;->sPattern:Lcom/alipay/mobile/quinox/utils/PatternUtil$PatternData;

    const-string v1, "android.support.v7"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/utils/PatternUtil$PatternData;->addNotPrefixPattern(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/quinox/b;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "quinoxMultiDex"    # Lcom/alipay/mobile/quinox/b;
    .param p2, "pathClassLoader"    # Ljava/lang/ClassLoader;

    .line 42
    invoke-direct {p0, p2}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/classloader/b;->b:Z

    .line 44
    iput-object p1, p0, Lcom/alipay/mobile/quinox/classloader/b;->a:Lcom/alipay/mobile/quinox/b;

    .line 45
    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 54
    invoke-static {p0}, Lcom/alipay/mobile/quinox/utils/PatternUtil;->pattern(Ljava/lang/String;)Z

    move-result v0

    .line 55
    return v0
.end method


# virtual methods
.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 8
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 60
    const-string v0, "ComponentClassLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ComponentClassLoader.findClass("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-static {p1}, Lcom/alipay/mobile/quinox/classloader/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    const-class v0, Lcom/alipay/mobile/quinox/classloader/b;

    monitor-enter v0

    .line 65
    :try_start_0
    iget-boolean v1, p0, Lcom/alipay/mobile/quinox/classloader/b;->b:Z

    if-eqz v1, :cond_0

    .line 67
    const-string v1, "ComponentClassLoader"

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ComponentClassLoader.loadClass("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "), go to waitForInstallMultiDex().\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 71
    .local v1, "start":J
    iget-object v3, p0, Lcom/alipay/mobile/quinox/classloader/b;->a:Lcom/alipay/mobile/quinox/b;

    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/b;->a()V

    .line 72
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/alipay/mobile/quinox/classloader/b;->b:Z

    .line 75
    invoke-super {p0, p1, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v3

    .line 77
    .local v3, "clazz":Ljava/lang/Class;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ComponentClassLoader.findClass("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "), clazz="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", waitForInstallMultiDex() cost "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " ms."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 79
    .local v4, "e":Ljava/lang/RuntimeException;
    const-string v5, "Quinox"

    const-string v6, "ComponentClassLoader"

    const/4 v7, 0x0

    invoke-static {v5, v6, v4, v7}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->apm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 82
    monitor-exit v0

    return-object v3

    .line 84
    .end local v1    # "start":J
    .end local v3    # "clazz":Ljava/lang/Class;
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :cond_0
    new-instance v1, Ljava/lang/ClassNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ComponentClassLoader failed to findClass("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    .end local p1    # "className":Ljava/lang/String;
    throw v1

    .line 86
    .restart local p1    # "className":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 62
    :cond_1
    new-instance v0, Ljava/lang/ClassNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ComponentClassLoader failed to findClass("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
