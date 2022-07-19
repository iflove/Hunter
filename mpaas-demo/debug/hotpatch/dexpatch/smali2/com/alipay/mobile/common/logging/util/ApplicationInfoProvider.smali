.class public Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;
.super Ljava/lang/Object;
.source "ApplicationInfoProvider.java"


# static fields
.field private static a:Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/content/pm/PackageManager;

.field private d:Landroid/content/pm/ApplicationInfo;

.field private e:Landroid/content/pm/ApplicationInfo;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->a:Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->b:Landroid/content/Context;

    .line 25
    iput-object v0, p0, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->c:Landroid/content/pm/PackageManager;

    .line 26
    iput-object v0, p0, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->d:Landroid/content/pm/ApplicationInfo;

    .line 27
    iput-object v0, p0, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->e:Landroid/content/pm/ApplicationInfo;

    .line 29
    const/4 v1, -0x1

    iput v1, p0, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->f:I

    .line 31
    iput-object v0, p0, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->g:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->h:Ljava/lang/String;

    return-void
.end method

.method private a()Landroid/content/Context;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 108
    return-object v0

    .line 110
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;
    .locals 1

    .line 36
    sget-object v0, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->a:Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;

    return-object v0
.end method


# virtual methods
.method public getConfigurationsAppInfo()Landroid/content/pm/ApplicationInfo;
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->e:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    .line 49
    return-object v0

    .line 52
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->e:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "ApplicationInfoProvider"

    const-string v2, "getMetaDataAppInfo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->e:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->b:Landroid/content/Context;

    return-object v0
.end method

.method public getFromMetaData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, "metaData":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->getMetaDataAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    const/4 v2, 0x0

    .line 75
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    move-object v2, v1

    if-eqz v1, :cond_0

    iget-object v1, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 78
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is getFromMeta: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ApplicationInfoProvider"

    invoke-interface {v1, v4, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-object v0
.end method

.method public getMetaDataAppInfo()Landroid/content/pm/ApplicationInfo;
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->d:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    .line 61
    return-object v0

    .line 64
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->d:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "ApplicationInfoProvider"

    const-string v2, "getMetaDataAppInfo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->d:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->c:Landroid/content/pm/PackageManager;

    if-eqz v0, :cond_0

    .line 96
    return-object v0

    .line 99
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->c:Landroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "ApplicationInfoProvider"

    const-string v2, "getPackageManager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->c:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->g:Ljava/lang/String;

    return-object v0

    .line 87
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->g:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "ApplicationInfoProvider"

    const-string v2, "getPackageName"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageVersionName()Ljava/lang/String;
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->h:Ljava/lang/String;

    return-object v0

    .line 133
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 134
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 135
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->h:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 136
    :catchall_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "ApplicationInfoProvider"

    const-string v2, "getPackageVersionName"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->h:Ljava/lang/String;

    return-object v0
.end method

.method public isDebuggable()Z
    .locals 5

    .line 114
    iget v0, p0, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->f:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_2

    .line 116
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->getConfigurationsAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    const/4 v3, 0x0

    .line 117
    .local v3, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v4, 0x2

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 118
    .local v0, "isDebug":Z
    :goto_0
    if-eqz v0, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    iput v4, p0, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    .end local v0    # "isDebug":Z
    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_2

    .line 119
    :catchall_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Throwable;
    const-string v3, "ApplicationInfoProvider"

    const-string v4, "isDebuggable"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    iput v1, p0, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->f:I

    .line 124
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_2
    iget v0, p0, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->f:I

    if-ne v0, v2, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->b:Landroid/content/Context;

    .line 41
    return-void
.end method

.method public setPackageVersionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "versionName"    # Ljava/lang/String;

    .line 143
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->h:Ljava/lang/String;

    .line 144
    return-void
.end method
