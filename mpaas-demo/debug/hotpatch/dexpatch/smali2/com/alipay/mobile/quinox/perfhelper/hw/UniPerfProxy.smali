.class Lcom/alipay/mobile/quinox/perfhelper/hw/UniPerfProxy;
.super Ljava/lang/Object;
.source "UniPerfProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/quinox/perfhelper/hw/UniPerfProxy$SingletonHolder;
    }
.end annotation


# static fields
.field public static final REQUEST_FAILED:I = -0x1

.field public static final REQUEST_SUCCEEDED:I


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Z

.field private final c:Ljava/lang/reflect/Method;

.field private d:I

.field private e:I


# direct methods
.method private constructor <init>()V
    .locals 11

    const-string v0, "UniPerfProxy"

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v1, 0x0

    .line 33
    .local v1, "available":Z
    const/4 v2, 0x0

    .line 34
    .local v2, "uniPerf":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 36
    .local v3, "perfEventMethod":Ljava/lang/reflect/Method;
    :try_start_0
    const-string v4, "android.iawareperf.UniPerf"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    .line 37
    .local v5, "uniPerfClass":Ljava/lang/Class;
    move-object v5, v4

    const-string v6, "getInstance"

    invoke-static {v4, v6}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .line 39
    const-string v4, "UNIPERF_EVENT_APP_START"

    invoke-static {v2, v4}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/alipay/mobile/quinox/perfhelper/hw/UniPerfProxy;->d:I

    .line 40
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "mUniperfEventAppStart = "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/alipay/mobile/quinox/perfhelper/hw/UniPerfProxy;->d:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", expected: 4099"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v4, "UNIPERF_EVENT_WINDOW_SWITCH"

    invoke-static {v2, v4}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/alipay/mobile/quinox/perfhelper/hw/UniPerfProxy;->e:I

    .line 43
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "mUniperfEventWindowSwitch = "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/alipay/mobile/quinox/perfhelper/hw/UniPerfProxy;->e:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", expected: 4098"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v4, "uniPerfEvent"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-class v7, Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v7, v6, v9

    const/4 v7, 0x2

    const-class v10, [I

    aput-object v10, v6, v7

    invoke-static {v5, v4, v6}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v4

    .line 46
    if-eqz v2, :cond_0

    const/4 v8, 0x1

    :cond_0
    move v1, v8

    .end local v5    # "uniPerfClass":Ljava/lang/Class;
    goto :goto_0

    .line 49
    :catchall_0
    move-exception v4

    .line 50
    .local v4, "e":Ljava/lang/Throwable;
    const-string v5, "init uniperf fail"

    invoke-static {v0, v5, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 47
    .end local v4    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v4

    .line 48
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v4}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    nop

    .line 52
    :goto_1
    iput-boolean v1, p0, Lcom/alipay/mobile/quinox/perfhelper/hw/UniPerfProxy;->b:Z

    .line 53
    iput-object v2, p0, Lcom/alipay/mobile/quinox/perfhelper/hw/UniPerfProxy;->a:Ljava/lang/Object;

    .line 54
    iput-object v3, p0, Lcom/alipay/mobile/quinox/perfhelper/hw/UniPerfProxy;->c:Ljava/lang/reflect/Method;

    .line 55
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "uniperf available: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/quinox/perfhelper/hw/UniPerfProxy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/quinox/perfhelper/hw/UniPerfProxy$1;

    .line 9
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/perfhelper/hw/UniPerfProxy;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/quinox/perfhelper/hw/UniPerfProxy;
    .locals 1

    .line 21
    sget-object v0, Lcom/alipay/mobile/quinox/perfhelper/hw/UniPerfProxy$SingletonHolder;->sInstance:Lcom/alipay/mobile/quinox/perfhelper/hw/UniPerfProxy;

    return-object v0
.end method


# virtual methods
.method public available()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/perfhelper/hw/UniPerfProxy;->b:Z

    return v0
.end method

.method public perfAppStart()I
    .locals 3

    .line 90
    iget v0, p0, Lcom/alipay/mobile/quinox/perfhelper/hw/UniPerfProxy;->d:I

    const/4 v1, 0x0

    new-array v1, v1, [I

    const-string v2, ""

    invoke-virtual {p0, v0, v2, v1}, Lcom/alipay/mobile/quinox/perfhelper/hw/UniPerfProxy;->uniPerfEvent(ILjava/lang/String;[I)I

    move-result v0

    return v0
.end method

.method public perfWindowSwitch()I
    .locals 3

    .line 95
    iget v0, p0, Lcom/alipay/mobile/quinox/perfhelper/hw/UniPerfProxy;->e:I

    const/4 v1, 0x0

    new-array v1, v1, [I

    const-string v2, ""

    invoke-virtual {p0, v0, v2, v1}, Lcom/alipay/mobile/quinox/perfhelper/hw/UniPerfProxy;->uniPerfEvent(ILjava/lang/String;[I)I

    move-result v0

    return v0
.end method

.method public varargs uniPerfEvent(ILjava/lang/String;[I)I
    .locals 9
    .param p1, "cmdId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "payload"    # [I

    .line 63
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/perfhelper/hw/UniPerfProxy;->available()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 64
    return v1

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "uniPerfEvent: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "UniPerfProxy"

    invoke-static {v4, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/perfhelper/hw/UniPerfProxy;->c:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lcom/alipay/mobile/quinox/perfhelper/hw/UniPerfProxy;->a:Ljava/lang/Object;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    const/4 v7, 0x2

    aput-object p3, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 71
    :catchall_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    return v1
.end method
