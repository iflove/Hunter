.class public Lcom/alipay/mobile/quinox/utils/MetaDataUtil;
.super Ljava/lang/Object;
.source "MetaDataUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 22
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/alipay/mobile/quinox/utils/BuildConfigUtil;->getMetaData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    .line 23
    .local v2, "stringValue":Ljava/lang/String;
    move-object v2, v1

    if-nez v1, :cond_0

    .line 24
    invoke-static {p0, p1}, Lcom/alipay/mobile/quinox/utils/MetaDataUtil;->getFromMeta(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 25
    .local v0, "metaData":Ljava/lang/Object;
    move-object v0, v1

    if-eqz v1, :cond_0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 30
    .end local v0    # "metaData":Ljava/lang/Object;
    :cond_0
    if-eqz v2, :cond_1

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    return p2
.end method

.method private static getFromMeta(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .line 35
    const-string v0, "MetaDataUtil"

    const/4 v1, 0x0

    .line 36
    .local v1, "metaData":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 37
    .local v2, "pkgMng":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 39
    .local v3, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v4

    .line 42
    goto :goto_0

    .line 40
    :catchall_0
    move-exception v4

    .line 41
    .local v4, "t":Ljava/lang/Throwable;
    invoke-static {v0, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    .end local v4    # "t":Ljava/lang/Throwable;
    :goto_0
    if-eqz v3, :cond_0

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_0

    .line 45
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v4, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 48
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " is getFromMeta: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-object v1
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 10
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/alipay/mobile/quinox/utils/BuildConfigUtil;->getMetaData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    .line 11
    .local v2, "stringValue":Ljava/lang/String;
    move-object v2, v1

    if-nez v1, :cond_0

    .line 12
    invoke-static {p0, p1}, Lcom/alipay/mobile/quinox/utils/MetaDataUtil;->getFromMeta(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 13
    .local v0, "metaData":Ljava/lang/Object;
    move-object v0, v1

    if-eqz v1, :cond_0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 18
    .end local v0    # "metaData":Ljava/lang/Object;
    :cond_0
    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    return-object p2
.end method
