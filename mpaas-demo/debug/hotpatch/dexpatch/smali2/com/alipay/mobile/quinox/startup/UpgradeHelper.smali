.class public Lcom/alipay/mobile/quinox/startup/UpgradeHelper;
.super Ljava/lang/Object;
.source "UpgradeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;
    }
.end annotation


# static fields
.field public static final ABI:Ljava/lang/String; = "product_abi"

.field public static final CODE_PATH:Ljava/lang/String; = "code_path"

.field public static final OLD_VERSION:Ljava/lang/String; = "version"

.field public static final PKG_UPDATE_TIME:Ljava/lang/String; = "pkg_update_time"

.field public static final VERSION:Ljava/lang/String; = "product_version"

.field private static i:Lcom/alipay/mobile/quinox/startup/UpgradeHelper;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/SharedPreferences;

.field private c:Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:J

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 88
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->i:Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    sget-object v0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;->UPGRADE:Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    iput-object v0, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->c:Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->j:Z

    .line 103
    iput-object p1, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->a:Landroid/content/Context;

    .line 104
    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;
    .locals 11
    .param p1, "oldVersion"    # Ljava/lang/String;

    const-string v0, "UpgradeHelper"

    .line 125
    sget-object v1, Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;->NEW:Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    .line 126
    .local v1, "upgradeEnum":Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;
    iget-object v2, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->b:Landroid/content/SharedPreferences;

    const-string v3, "product_version"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "version":Ljava/lang/String;
    iget-object v3, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->b:Landroid/content/SharedPreferences;

    const-string v5, "product_abi"

    const-string v6, "armeabi"

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, "abi":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->a()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->d:Ljava/lang/String;

    .line 130
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v5

    invoke-interface {v5}, Lcom/alipay/mobile/common/logging/api/LogContext;->getProductABI()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->e:Ljava/lang/String;

    .line 131
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->c()Ljava/lang/String;

    move-result-object v5

    move-object v6, v4

    .line 133
    .local v6, "versionFromBuildConfig":Ljava/lang/String;
    move-object v6, v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->d:Ljava/lang/String;

    .line 134
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 137
    const-string v5, "packageInfoMismatch"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "packageInfo version="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->d:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", buildConfig version="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v4, v7}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->exception(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 139
    iput-object v6, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->d:Ljava/lang/String;

    .line 142
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, ") : "

    const-string v7, " vs newAbi="

    const-string v8, ", oldAbi="

    const-string v9, " vs newVersion="

    const-string v10, "UpgradeHelper(oldVersion="

    if-nez v4, :cond_1

    .line 143
    :try_start_1
    iput-object v2, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->g:Ljava/lang/String;

    .line 144
    iget-object v4, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->d:Ljava/lang/String;

    invoke-static {v4, v2}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    move-result-object v4

    move-object v1, v4

    .line 145
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->d:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->e:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 148
    iput-object v2, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->g:Ljava/lang/String;

    .line 149
    iget-object v4, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->d:Ljava/lang/String;

    invoke-static {v4, p1}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    move-result-object v4

    move-object v1, v4

    .line 150
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->d:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->e:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " : version="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :goto_0
    iget-object v4, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->e:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 157
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->j:Z

    .line 158
    sget-object v4, Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;->NONE:Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    if-ne v1, v4, :cond_3

    .line 161
    sget-object v4, Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;->UPGRADE:Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    move-object v1, v4

    .line 166
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->getInstance()Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->isDebuggable()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 167
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->b()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->f:J

    .line 168
    iget-object v4, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->b:Landroid/content/SharedPreferences;

    const-string v5, "pkg_update_time"

    const-wide/16 v7, 0x0

    invoke-interface {v4, v5, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 170
    .local v4, "oldPkgUpdatedTime":J
    iget-wide v7, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->f:J

    cmp-long v9, v7, v4

    if-eqz v9, :cond_4

    .line 171
    sget-object v0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;->UPGRADE:Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    .line 176
    .end local v4    # "oldPkgUpdatedTime":J
    .end local v6    # "versionFromBuildConfig":Ljava/lang/String;
    :cond_4
    goto :goto_1

    .line 174
    :catchall_0
    move-exception v4

    .line 175
    .local v4, "e":Ljava/lang/Throwable;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "upgrade(Exception) upgradeEnum="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 178
    .end local v4    # "e":Ljava/lang/Throwable;
    :goto_1
    return-object v1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;
    .locals 10
    .param p0, "newVersion"    # Ljava/lang/String;
    .param p1, "oldVersion"    # Ljava/lang/String;

    .line 245
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, "newVersions":[Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "oldVersions":[Ljava/lang/String;
    array-length v2, v1

    array-length v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 249
    .local v2, "min":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_2

    .line 250
    aget-object v5, v1, v4

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 251
    .local v5, "v1":J
    aget-object v7, v0, v4

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 252
    .local v7, "v2":J
    cmp-long v9, v5, v7

    if-lez v9, :cond_0

    .line 253
    sget-object v3, Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;->UPGRADE:Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    return-object v3

    .line 254
    :cond_0
    cmp-long v9, v5, v7

    if-gez v9, :cond_1

    .line 255
    sget-object v3, Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;->DOWNGRADE:Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    return-object v3

    .line 249
    .end local v5    # "v1":J
    .end local v7    # "v2":J
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 259
    .end local v4    # "i":I
    :cond_2
    if-ge v2, v3, :cond_4

    array-length v3, v1

    array-length v4, v0

    if-eq v3, v4, :cond_4

    .line 261
    array-length v3, v1

    array-length v4, v0

    if-le v3, v4, :cond_3

    .line 262
    sget-object v3, Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;->UPGRADE:Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    return-object v3

    .line 263
    :cond_3
    array-length v3, v1

    array-length v4, v0

    if-ge v3, v4, :cond_4

    .line 264
    sget-object v3, Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;->DOWNGRADE:Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    return-object v3

    .line 267
    :cond_4
    sget-object v3, Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;->NONE:Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    return-object v3
.end method

.method private static a()Ljava/lang/String;
    .locals 1

    .line 182
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->getInstance()Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->getPackageVersionName()Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-static {v0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()J
    .locals 3

    .line 187
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->a:Landroid/content/Context;

    .line 188
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 189
    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    return-wide v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "versionName"    # Ljava/lang/String;

    .line 231
    const-string v0, "ctch1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 234
    :cond_0
    return-object p0
.end method

.method private c()Ljava/lang/String;
    .locals 3

    .line 193
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 194
    const-string v1, "VERSION_NAME"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/quinox/utils/BuildConfigUtil;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alipay/mobile/quinox/startup/UpgradeHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 92
    sget-object v0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->i:Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

    if-nez v0, :cond_1

    .line 93
    const-class v0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

    monitor-enter v0

    .line 94
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->i:Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

    if-nez v1, :cond_0

    .line 95
    new-instance v1, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->i:Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

    .line 97
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 99
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->i:Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

    return-object v0
.end method


# virtual methods
.method public clearOldPluginFiles()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 313
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->clearOldPluginFiles(Ljava/util/Set;)V

    .line 314
    return-void
.end method

.method public clearOldPluginFiles(Ljava/util/Set;)V
    .locals 7
    .param p1, "excludePrefixes"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 321
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 322
    .local v0, "start":J
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "clearOldPluginFiles start. excludePrefixes="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 323
    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "just print stack"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 322
    const-string v4, "UpgradeHelper"

    invoke-static {v4, v2, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 326
    iget-object v2, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->a:Landroid/content/Context;

    const-string v3, "plugins"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    move-object v6, v3

    .line 327
    .local v6, "file":Ljava/io/File;
    move-object v6, v2

    invoke-static {v2, v3, p1}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteFiles(Ljava/io/File;Ljava/util/Set;Ljava/util/Set;)Z

    .line 328
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 330
    iget-object v2, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->a:Landroid/content/Context;

    const-string v3, "plugins_patch"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 331
    move-object v3, v2

    .end local v6    # "file":Ljava/io/File;
    .local v3, "file":Ljava/io/File;
    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteFiles(Ljava/io/File;)Z

    .line 332
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 334
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "clearOldPluginFiles end. cost "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " ms."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method public clearOldPluginLibs()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 272
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->clearOldPluginLibs(Ljava/util/Set;)V

    .line 273
    return-void
.end method

.method public clearOldPluginLibs(Ljava/util/Set;)V
    .locals 8
    .param p1, "excludePrefixes"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 276
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 277
    .local v0, "start":J
    const-string v2, "UpgradeHelper"

    const-string v3, "clearOldPluginLibs start."

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v3, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->a:Landroid/content/Context;

    const-string v4, "plugins_lib"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    .line 280
    .local v5, "file":Ljava/io/File;
    move-object v5, v3

    invoke-static {v3, v4, p1}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteFiles(Ljava/io/File;Ljava/util/Set;Ljava/util/Set;)Z

    .line 281
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 283
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "clearOldPluginLibs end. cost "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method public clearOldPluginOpts()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 291
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->clearOldPluginOpts(Ljava/util/Set;)V

    .line 292
    return-void
.end method

.method public clearOldPluginOpts(Ljava/util/Set;)V
    .locals 8
    .param p1, "excludePrefixes"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 298
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 299
    .local v0, "start":J
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "clearOldPluginOpts start. excludePrefixes="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UpgradeHelper"

    invoke-static {v3, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v2, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->a:Landroid/content/Context;

    const-string v4, "plugins_opt"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    const/4 v4, 0x0

    move-object v5, v4

    .line 302
    .local v5, "file":Ljava/io/File;
    move-object v5, v2

    invoke-static {v2, v4, p1}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteFiles(Ljava/io/File;Ljava/util/Set;Ljava/util/Set;)Z

    .line 303
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 305
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "clearOldPluginOpts end. cost "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method public getLastCodePath()Ljava/lang/String;
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getLastProductVersion()Ljava/lang/String;
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getProductABI()Ljava/lang/String;
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getProductVersion()Ljava/lang/String;
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getUpgrade()Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->c:Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    return-object v0
.end method

.method public init()V
    .locals 5

    .line 107
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "pkgName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UpgradeHelper : getPackageName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UpgradeHelper"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->a:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_config"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->b:Landroid/content/SharedPreferences;

    .line 111
    const/4 v2, 0x0

    .line 112
    .local v2, "oldVersion":Ljava/lang/String;
    const-string v3, "version"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->b:Landroid/content/SharedPreferences;

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 114
    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 116
    :cond_0
    invoke-direct {p0, v2}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->a(Ljava/lang/String;)Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->c:Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    .line 119
    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->b:Landroid/content/SharedPreferences;

    const-string v3, "code_path"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->b:Landroid/content/SharedPreferences;

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->h:Ljava/lang/String;

    .line 122
    :cond_1
    return-void
.end method

.method public isProductABIChanged()Z
    .locals 1

    .line 211
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->j:Z

    return v0
.end method

.method public isUpgrade()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 221
    sget-object v0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;->NONE:Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->c:Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setProductVersion()V
    .locals 9

    .line 354
    sget-object v0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;->NONE:Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->c:Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    const-string v2, ")"

    const-string v3, ", mProductVersion="

    const-string v4, "UpgradeHelper"

    const/4 v5, 0x0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    move-object v1, v5

    .line 356
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    move-object v5, v0

    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .local v5, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->d:Ljava/lang/String;

    const-string v6, "product_version"

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->e:Ljava/lang/String;

    .line 357
    const-string v6, "product_abi"

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 358
    iget-wide v0, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->f:J

    const-wide/16 v6, 0x0

    cmp-long v8, v0, v6

    if-eqz v8, :cond_0

    .line 359
    const-string v6, "pkg_update_time"

    invoke-interface {v5, v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 361
    :cond_0
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setProductVersion(mUpgrade="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->c:Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    .end local v5    # "editor":Landroid/content/SharedPreferences$Editor;
    goto :goto_0

    .line 364
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignore setProductVersion(mUpgrade="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->c:Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v0

    move-object v1, v5

    .line 368
    .local v1, "codePatch":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->h:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 369
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "code_path"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 371
    :cond_2
    return-void
.end method

.method public setUpgrade(Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;)V
    .locals 0
    .param p1, "upgrade"    # Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    .line 198
    iput-object p1, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->c:Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    .line 199
    return-void
.end method
