.class Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;
.super Lcom/alipay/mobile/quinox/log/Logger;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/quinox/log/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AndroidLogger"
.end annotation


# static fields
.field public static final ANDROID_UTIL_LOG:Ljava/lang/String; = "android.util.Log"

.field private static c:Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;


# instance fields
.field private a:[Ljava/lang/reflect/Method;

.field private b:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .locals 10

    const-string v0, "AndroidLogger"

    .line 36
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/log/Logger;-><init>()V

    .line 32
    sget-object v1, Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;->LEVEL_TO_LVL:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/reflect/Method;

    iput-object v1, p0, Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;->a:[Ljava/lang/reflect/Method;

    .line 39
    const/4 v1, 0x0

    .line 41
    .local v1, "clazz":Ljava/lang/Class;
    :try_start_0
    const-string v2, "android.util.Log"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 44
    goto :goto_0

    .line 42
    :catchall_0
    move-exception v2

    const/4 v2, 0x0

    .line 43
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/quinox/log/Log$J2seLogger;->getInstance()Lcom/alipay/mobile/quinox/log/Log$J2seLogger;

    move-result-object v3

    const-string v4, "Failed to find class: android.util.Log"

    invoke-virtual {v3, v0, v4}, Lcom/alipay/mobile/quinox/log/Log$J2seLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_0
    if-eqz v1, :cond_1

    .line 47
    const/4 v2, 0x0

    .local v2, "i":I
    sget-object v3, Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;->LEVEL_TO_LVL:[Ljava/lang/String;

    array-length v3, v3

    .local v3, "n":I
    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v2, v3, :cond_0

    .line 48
    iget-object v6, p0, Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;->a:[Ljava/lang/reflect/Method;

    sget-object v7, Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;->LEVEL_TO_LVL:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v4

    const-class v4, Ljava/lang/String;

    aput-object v4, v8, v5

    invoke-static {v1, v7, v8}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    aput-object v4, v6, v2

    .line 47
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 51
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_0
    const-string v2, "getStackTraceString"

    new-array v3, v5, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Throwable;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;->b:Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 55
    .end local v1    # "clazz":Ljava/lang/Class;
    :cond_1
    return-void

    .line 53
    :catchall_1
    move-exception v1

    .line 54
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/quinox/log/Log$J2seLogger;->getInstance()Lcom/alipay/mobile/quinox/log/Log$J2seLogger;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/alipay/mobile/quinox/log/Log$J2seLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method private static varargs a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)I
    .locals 3
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 117
    if-eqz p0, :cond_0

    .line 118
    :try_start_0
    const-class v0, Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 119
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    monitor-exit v0

    return v1

    .line 120
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "method":Ljava/lang/reflect/Method;
    .end local p1    # "args":[Ljava/lang/Object;
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 122
    .restart local p0    # "method":Ljava/lang/reflect/Method;
    .restart local p1    # "args":[Ljava/lang/Object;
    :catchall_1
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/quinox/log/Log$J2seLogger;->getInstance()Lcom/alipay/mobile/quinox/log/Log$J2seLogger;

    move-result-object v1

    const-string v2, "AndroidLogger"

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/quinox/log/Log$J2seLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 124
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    nop

    .line 125
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public static getInstance()Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;
    .locals 2

    .line 61
    sget-object v0, Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;->c:Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;

    if-nez v0, :cond_1

    .line 62
    const-class v0, Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;

    monitor-enter v0

    .line 63
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;->c:Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;

    if-nez v1, :cond_0

    .line 64
    new-instance v1, Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;

    invoke-direct {v1}, Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;-><init>()V

    sput-object v1, Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;->c:Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;

    .line 66
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 68
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;->c:Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;

    return-object v0
.end method


# virtual methods
.method public debug(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;->a:[Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    aput-object p2, v2, v1

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;->a:[Ljava/lang/reflect/Method;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 5
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 98
    const-string v0, ""

    .line 99
    .local v0, "msg":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;->b:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 102
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 106
    :cond_0
    goto :goto_0

    .line 104
    :catchall_0
    move-exception v1

    .line 105
    .local v1, "e":Ljava/lang/Throwable;
    # getter for: Lcom/alipay/mobile/quinox/log/Log;->c:Lcom/alipay/mobile/quinox/log/Log$J2seLogger;
    invoke-static {}, Lcom/alipay/mobile/quinox/log/Log;->access$000()Lcom/alipay/mobile/quinox/log/Log$J2seLogger;

    move-result-object v2

    const-string v3, "AndroidLogger"

    invoke-virtual {v2, v3, v1}, Lcom/alipay/mobile/quinox/log/Log$J2seLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 112
    :cond_1
    return-object v0
.end method

.method public info(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;->a:[Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public verbose(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;->a:[Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const/4 v1, 0x1

    aput-object p2, v2, v1

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public warn(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;->a:[Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/log/Log$AndroidLogger;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
