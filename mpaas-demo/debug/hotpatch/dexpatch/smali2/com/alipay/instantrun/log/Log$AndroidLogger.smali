.class Lcom/alipay/instantrun/log/Log$AndroidLogger;
.super Lcom/alipay/instantrun/log/Logger;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/instantrun/log/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AndroidLogger"
.end annotation


# static fields
.field private static instance:Lcom/alipay/instantrun/log/Log$AndroidLogger;


# instance fields
.field androidLoggerClass:Ljava/lang/Class;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/alipay/instantrun/log/Logger;-><init>()V

    .line 15
    :try_start_0
    const-string v0, "android.util.Log"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/instantrun/log/Log$AndroidLogger;->androidLoggerClass:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    return-void

    .line 17
    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 19
    return-void
.end method

.method public static getInstance()Lcom/alipay/instantrun/log/Log$AndroidLogger;
    .locals 2

    .line 24
    sget-object v0, Lcom/alipay/instantrun/log/Log$AndroidLogger;->instance:Lcom/alipay/instantrun/log/Log$AndroidLogger;

    if-nez v0, :cond_1

    .line 25
    const-class v0, Lcom/alipay/instantrun/log/Log$AndroidLogger;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/alipay/instantrun/log/Log$AndroidLogger;->instance:Lcom/alipay/instantrun/log/Log$AndroidLogger;

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Lcom/alipay/instantrun/log/Log$AndroidLogger;

    invoke-direct {v1}, Lcom/alipay/instantrun/log/Log$AndroidLogger;-><init>()V

    sput-object v1, Lcom/alipay/instantrun/log/Log$AndroidLogger;->instance:Lcom/alipay/instantrun/log/Log$AndroidLogger;

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
    sget-object v0, Lcom/alipay/instantrun/log/Log$AndroidLogger;->instance:Lcom/alipay/instantrun/log/Log$AndroidLogger;

    return-object v0
.end method


# virtual methods
.method public debug(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/alipay/instantrun/log/Log$AndroidLogger;->androidLoggerClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 47
    const/4 v0, -0x1

    return v0

    .line 49
    :cond_0
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x1

    aput-object p2, v2, v4

    new-array v1, v1, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v1, v3

    const-class v5, Ljava/lang/String;

    aput-object v5, v1, v4

    const-string v4, "i"

    invoke-static {v4, v0, v2, v1}, Lcom/alipay/instantrun/utils/EnhancedInstantRunUtils;->invokeReflectStaticMethod(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 51
    return v3
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/alipay/instantrun/log/Log$AndroidLogger;->androidLoggerClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 77
    const/4 v0, -0x1

    return v0

    .line 79
    :cond_0
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x1

    aput-object p2, v2, v4

    new-array v1, v1, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v1, v3

    const-class v5, Ljava/lang/String;

    aput-object v5, v1, v4

    const-string v4, "e"

    invoke-static {v4, v0, v2, v1}, Lcom/alipay/instantrun/utils/EnhancedInstantRunUtils;->invokeReflectStaticMethod(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 81
    return v3
.end method

.method public info(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/alipay/instantrun/log/Log$AndroidLogger;->androidLoggerClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 57
    const/4 v0, -0x1

    return v0

    .line 59
    :cond_0
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x1

    aput-object p2, v2, v4

    new-array v1, v1, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v1, v3

    const-class v5, Ljava/lang/String;

    aput-object v5, v1, v4

    const-string v4, "i"

    invoke-static {v4, v0, v2, v1}, Lcom/alipay/instantrun/utils/EnhancedInstantRunUtils;->invokeReflectStaticMethod(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 61
    return v3
.end method

.method public verbose(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lcom/alipay/instantrun/log/Log$AndroidLogger;->androidLoggerClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 37
    const/4 v0, -0x1

    return v0

    .line 39
    :cond_0
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x1

    aput-object p2, v2, v4

    new-array v1, v1, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v1, v3

    const-class v5, Ljava/lang/String;

    aput-object v5, v1, v4

    const-string/jumbo v4, "v"

    invoke-static {v4, v0, v2, v1}, Lcom/alipay/instantrun/utils/EnhancedInstantRunUtils;->invokeReflectStaticMethod(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 41
    return v3
.end method

.method public warn(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcom/alipay/instantrun/log/Log$AndroidLogger;->androidLoggerClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 67
    const/4 v0, -0x1

    return v0

    .line 69
    :cond_0
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x1

    aput-object p2, v2, v4

    new-array v1, v1, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v1, v3

    const-class v5, Ljava/lang/String;

    aput-object v5, v1, v4

    const-string/jumbo v4, "w"

    invoke-static {v4, v0, v2, v1}, Lcom/alipay/instantrun/utils/EnhancedInstantRunUtils;->invokeReflectStaticMethod(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 71
    return v3
.end method
