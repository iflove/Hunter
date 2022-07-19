.class Lcom/alipay/mobile/quinox/perfhelper/oppo/HypnusManagerProxy;
.super Ljava/lang/Object;
.source "HypnusManagerProxy.java"


# static fields
.field static final ACTION_IO:I

.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 21
    const-string v0, "HypnusManagerProxy"

    const/4 v1, 0x0

    .line 22
    .local v1, "managerClass":Ljava/lang/Class;
    const/4 v2, 0x0

    .line 23
    .local v2, "actionIo":I
    const/4 v3, 0x0

    .line 25
    .local v3, "exception":Z
    const/4 v4, 0x0

    :try_start_0
    const-string v5, "com.oppo.hypnus.HypnusManager"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    move-object v1, v5

    .line 27
    const-string v5, "com.oppo.hypnus.Hypnus"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    move-object v6, v4

    .line 28
    .local v6, "hypnusClass":Ljava/lang/Class;
    const-string v7, "ACTION_IO"

    invoke-static {v5, v7}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->getFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v0

    .end local v6    # "hypnusClass":Ljava/lang/Class;
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v5

    .line 32
    .local v5, "e":Ljava/lang/Throwable;
    const/4 v3, 0x1

    .line 33
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "HypnusManager not available: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 29
    .end local v5    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v5

    .line 30
    .local v5, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v5}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .end local v5    # "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    nop

    .line 35
    :goto_1
    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    move-object v4, v1

    :goto_2
    sput-object v4, Lcom/alipay/mobile/quinox/perfhelper/oppo/HypnusManagerProxy;->a:Ljava/lang/Class;

    .line 36
    if-eqz v3, :cond_1

    const/4 v0, 0x0

    goto :goto_3

    :cond_1
    move v0, v2

    :goto_3
    sput v0, Lcom/alipay/mobile/quinox/perfhelper/oppo/HypnusManagerProxy;->ACTION_IO:I

    .line 37
    .end local v1    # "managerClass":Ljava/lang/Class;
    .end local v2    # "actionIo":I
    .end local v3    # "exception":Z
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .param p1, "manager"    # Ljava/lang/Object;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/alipay/mobile/quinox/perfhelper/oppo/HypnusManagerProxy;->b:Ljava/lang/Object;

    .line 58
    :try_start_0
    const-string v0, "DEBUG"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->setFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    return-void

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    const-string v0, "HypnusManagerProxy"

    const-string v1, "fail set debug to HypnusManager"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method static newInstance()Lcom/alipay/mobile/quinox/perfhelper/oppo/HypnusManagerProxy;
    .locals 3

    .line 41
    sget-object v0, Lcom/alipay/mobile/quinox/perfhelper/oppo/HypnusManagerProxy;->a:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 43
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 44
    .local v0, "instance":Ljava/lang/Object;
    new-instance v1, Lcom/alipay/mobile/quinox/perfhelper/oppo/HypnusManagerProxy;

    invoke-direct {v1, v0}, Lcom/alipay/mobile/quinox/perfhelper/oppo/HypnusManagerProxy;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 45
    .end local v0    # "instance":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "HypnusManagerProxy"

    const-string v2, "fail create hypnus manager"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public hypnusSetAction(II)V
    .locals 7
    .param p1, "action"    # I
    .param p2, "timeout"    # I

    .line 78
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/quinox/perfhelper/oppo/HypnusManagerProxy;->a:Ljava/lang/Class;

    const-string v1, "hypnusSetAction"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v0, v1, v3}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    .line 79
    .local v1, "hypnusSetAction":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/alipay/mobile/quinox/perfhelper/oppo/HypnusManagerProxy;->b:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v6

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    nop

    .end local v1    # "hypnusSetAction":Ljava/lang/reflect/Method;
    return-void

    .line 80
    :catchall_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fail set action: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", timeout:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HypnusManagerProxy"

    invoke-static {v2, v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public isHypnusOK()Z
    .locals 4

    .line 66
    const-string v0, "HypnusManagerProxy"

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/quinox/perfhelper/oppo/HypnusManagerProxy;->b:Ljava/lang/Object;

    const-string v2, "isHypnusOK"

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 70
    :catchall_0
    move-exception v1

    .line 71
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "isHypnusOK fail"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    const/4 v0, 0x0

    return v0

    .line 67
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v1

    .line 68
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", default to true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const/4 v0, 0x1

    return v0
.end method
