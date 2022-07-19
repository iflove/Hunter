.class Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomPerfWrapper;
.super Ljava/lang/Object;
.source "QcomPerfWrapper.java"


# static fields
.field public static final REQUEST_EXCEPTION:I = -0x2

.field public static final REQUEST_FAILED:I = -0x1

.field public static final REQUEST_NOT_AVAILABLE:I = -0x3

.field public static final REQUEST_SUCCEEDED:I

.field private static final a:Z

.field private static b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static c:Ljava/lang/reflect/Method;

.field private static d:Ljava/lang/reflect/Method;


# instance fields
.field private final e:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 21
    const-string v0, "android.util.BoostFramework"

    const-string v1, "org.codeaurora.Performance"

    const-string v2, "com.qualcomm.qti.Performance"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "candidateClass":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 27
    .local v1, "available":Z
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    .line 28
    invoke-static {v3}, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomPerfWrapper;->a(Ljava/lang/String;)Z

    move-result v3

    .line 29
    move v1, v3

    if-nez v3, :cond_0

    .line 27
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 33
    :cond_0
    sput-boolean v1, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomPerfWrapper;->a:Z

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cpu boost available = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", class="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomPerfWrapper;->b:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "QcomPerfWrapper"

    invoke-static {v3, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .end local v0    # "candidateClass":[Ljava/lang/String;
    .end local v1    # "available":Z
    return-void
.end method

.method constructor <init>()V
    .locals 4

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    .line 45
    .local v0, "perf":Ljava/lang/Object;
    sget-object v1, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomPerfWrapper;->b:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 47
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 50
    goto :goto_0

    .line 48
    :catchall_0
    move-exception v1

    .line 49
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "QcomPerfWrapper"

    const-string v3, "fail create perf instance"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomPerfWrapper;->e:Ljava/lang/Object;

    .line 53
    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 8
    .param p0, "className"    # Ljava/lang/String;

    .line 99
    const-string v0, "Load fail: "

    const-string v1, "QcomPerfWrapper"

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 100
    sput-object v3, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomPerfWrapper;->b:Ljava/lang/Class;

    const-string v4, "perfLockAcquire"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    const-class v6, [I

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomPerfWrapper;->c:Ljava/lang/reflect/Method;

    .line 101
    sget-object v3, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomPerfWrapper;->b:Ljava/lang/Class;

    const-string v4, "perfLockRelease"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomPerfWrapper;->d:Ljava/lang/reflect/Method;

    .line 102
    sget-object v3, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomPerfWrapper;->c:Ljava/lang/reflect/Method;

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 103
    sget-object v3, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomPerfWrapper;->d:Ljava/lang/reflect/Method;

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    return v7

    .line 114
    :catchall_0
    move-exception v0

    .line 115
    .local v0, "throwable":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "try load "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " fail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    return v2

    .line 111
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :catch_0
    move-exception v3

    .line 112
    .local v3, "e":Ljava/lang/SecurityException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return v2

    .line 108
    .end local v3    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v3

    .line 109
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return v2

    .line 105
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v3

    .line 106
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return v2
.end method

.method public static qcClassAvailable()Z
    .locals 1

    .line 38
    sget-boolean v0, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomPerfWrapper;->a:Z

    return v0
.end method


# virtual methods
.method public isAvailable()Z
    .locals 1

    .line 56
    invoke-static {}, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomPerfWrapper;->qcClassAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomPerfWrapper;->e:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public varargs perfLockAcquire(I[I)I
    .locals 5
    .param p1, "duration"    # I
    .param p2, "list"    # [I

    .line 67
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomPerfWrapper;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomPerfWrapper;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomPerfWrapper;->e:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 70
    :catchall_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "QcomPerfWrapper"

    const-string v2, "fail invoke lock acquire"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    const/4 v1, -0x2

    return v1

    .line 75
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    const/4 v0, -0x3

    return v0
.end method

.method public perfLockRelease()I
    .locals 3

    .line 85
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomPerfWrapper;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomPerfWrapper;->d:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomPerfWrapper;->e:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 88
    :catchall_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "QcomPerfWrapper"

    const-string v2, "fail invoke lock release"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    const/4 v1, -0x2

    return v1

    .line 93
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    const/4 v0, -0x3

    return v0
.end method
