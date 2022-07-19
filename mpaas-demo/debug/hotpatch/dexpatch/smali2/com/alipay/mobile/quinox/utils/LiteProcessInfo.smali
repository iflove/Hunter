.class public Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;
.super Ljava/lang/Object;
.source "LiteProcessInfo.java"


# static fields
.field private static INSTANCE:Lcom/alipay/mobile/quinox/utils/LiteProcessInfo; = null

.field public static final LITE_PROCESS_NUM:I = 0x5

.field public static final LPID_NEBULA:I = 0x0

.field public static final TAG:Ljava/lang/String; = "LiteProcessInfo"

.field public static final liteBundles:[Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private currentProcessName:Ljava/lang/String;

.field private liteProcessNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nebulaProcessName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 33

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->INSTANCE:Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;

    .line 28
    const-string v1, "merged-slink-bundles-res"

    const-string v2, "android-phone-wallet-nebulaconfig"

    const-string v3, "android-phone-wallet-nebula"

    const-string v4, "android-phone-wallet-nebulaappcenter"

    const-string v5, "android-phone-wallet-nebulaappproxy"

    const-string v6, "android-phone-wallet-nebulabiz"

    const-string v7, "android-phone-wallet-nebulauc"

    const-string v8, "android-phone-wallet-nebulaconfig"

    const-string v9, "android-phone-wallet-openplatform"

    const-string v10, "mobile-nebulaapp"

    const-string v11, "mobile-nebulakernel"

    const-string v12, "mobile-nebularesource"

    const-string v13, "mobile-nebulaengine"

    const-string v14, "mobile-nebulaintegration"

    const-string v15, "mobile-nebulaperf"

    const-string v16, "mobile-wallet-cube"

    const-string v17, "android-phone-mobilesdk-commonbizservice"

    const-string v18, "android-phone-businesscommon-commonbiz"

    const-string v19, "android-phone-mobilecommon-share"

    const-string v20, "android-phone-mobilecommon-multimediabiz"

    const-string v21, "android-phone-wallet-socialchatsdk"

    const-string v22, "android-phone-mobilesdk-liteprocess"

    const-string v23, "multimedia-apxmmusic"

    const-string v24, "android-phone-wallet-apble"

    const-string v25, "android-phone-mobilesdk-tianyanadapter"

    const-string v26, "android-phone-mobilesdk-permission"

    const-string v27, "android-phone-wallet-openplatformadapter"

    const-string v28, "android-phone-wallet-tinyappservice"

    const-string v29, "android-phone-wallet-tinyappcommon"

    const-string v30, "android-phone-mobilesdk-tinybootloader"

    const-string v31, "android-phone-mobilesdk-tiny"

    const-string v32, "android-phone-wallet-advertisement"

    filled-new-array/range {v1 .. v32}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->liteBundles:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->liteProcessNames:Ljava/util/HashMap;

    .line 75
    if-nez p1, :cond_0

    .line 76
    return-void

    .line 78
    :cond_0
    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_1

    .line 79
    iput-object p1, p0, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->context:Landroid/content/Context;

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->context:Landroid/content/Context;

    .line 82
    if-nez v0, :cond_2

    .line 83
    iput-object p1, p0, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->context:Landroid/content/Context;

    .line 86
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "packageName":Ljava/lang/String;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    const/4 v2, 0x5

    if-gt v1, v2, :cond_3

    .line 88
    iget-object v2, p0, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->liteProcessNames:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":lite"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "lite"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 90
    .end local v1    # "i":I
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":lite0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->nebulaProcessName:Ljava/lang/String;

    .line 91
    iget-object v2, p0, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->liteProcessNames:Ljava/util/HashMap;

    const-string v3, "lite0"

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->currentProcessName:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public static g(Landroid/content/Context;)Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 64
    sget-object v0, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->INSTANCE:Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;

    if-nez v0, :cond_1

    .line 65
    const-class v0, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;

    monitor-enter v0

    .line 66
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->INSTANCE:Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;

    if-nez v1, :cond_0

    .line 67
    new-instance v1, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->INSTANCE:Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;

    .line 69
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 71
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->INSTANCE:Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;

    return-object v0
.end method

.method public static getLiteBundleList()[Ljava/lang/String;
    .locals 3

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getLiteBundleList: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->liteBundles:[Ljava/lang/String;

    array-length v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mytest"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-object v1
.end method


# virtual methods
.method public getCurrentLiteProcessId()I
    .locals 2

    .line 112
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->isCurrentProcessALiteProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->currentProcessName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 117
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentProcessName()Ljava/lang/String;
    .locals 8

    const-string v0, ""

    .line 126
    iget-object v1, p0, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->currentProcessName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->currentProcessName:Ljava/lang/String;

    return-object v0

    .line 130
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.app.ActivityThread"

    const-string v3, "currentActivityThread"

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v1

    .line 131
    .local v3, "activityThread":Ljava/lang/Object;
    const-string v4, "getProcessName"

    invoke-static {v2, v4}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 132
    .end local v3    # "activityThread":Ljava/lang/Object;
    :catchall_0
    move-exception v2

    .line 133
    .local v2, "tr":Ljava/lang/Throwable;
    const-string v3, "LiteProcessInfo"

    const-string v4, "get process failed"

    invoke-static {v3, v4, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    .end local v2    # "tr":Ljava/lang/Throwable;
    :try_start_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 137
    .local v2, "pid":I
    iget-object v4, p0, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->context:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    move-object v5, v1

    .line 138
    .local v5, "manager":Landroid/app/ActivityManager;
    move-object v5, v4

    invoke-virtual {v4}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 139
    .local v4, "runningAppProcesses":Ljava/util/List;
    if-eqz v5, :cond_4

    if-nez v4, :cond_1

    goto :goto_1

    .line 142
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 143
    .local v1, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object v1, v7

    iget v7, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v7, v2, :cond_2

    .line 144
    iget-object v0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    .line 146
    .end local v1    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_2
    goto :goto_0

    .line 149
    .end local v2    # "pid":I
    .end local v4    # "runningAppProcesses":Ljava/util/List;
    .end local v5    # "manager":Landroid/app/ActivityManager;
    :cond_3
    goto :goto_2

    .line 140
    .restart local v2    # "pid":I
    .restart local v4    # "runningAppProcesses":Ljava/util/List;
    .restart local v5    # "manager":Landroid/app/ActivityManager;
    :cond_4
    :goto_1
    return-object v0

    .line 147
    .end local v2    # "pid":I
    .end local v4    # "runningAppProcesses":Ljava/util/List;
    .end local v5    # "manager":Landroid/app/ActivityManager;
    :catchall_1
    move-exception v1

    .line 148
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v3, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_2
    return-object v0
.end method

.method public getProcessAlias()Ljava/lang/String;
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->liteProcessNames:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->currentProcessName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isCurrentProcessALiteProcess()Z
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->liteProcessNames:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->currentProcessName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isCurrentProcessNebulaProcess()Z
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->currentProcessName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->isNebulaProcess(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isLiteProcess(Ljava/lang/String;)Z
    .locals 1
    .param p1, "processName"    # Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->liteProcessNames:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isNebulaProcess(Ljava/lang/String;)Z
    .locals 1
    .param p1, "processName"    # Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->nebulaProcessName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
