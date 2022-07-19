.class public Lcom/alipay/mobile/h5container/api/H5SsoFlagHolder;
.super Ljava/lang/Object;
.source "H5SsoFlagHolder.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5SsoFlagHolder"

.field public static sCopyToMmstat:Z

.field private static sLoginFlag:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static sTbLoginTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/h5container/api/H5SsoFlagHolder;->sCopyToMmstat:Z

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5SsoFlagHolder;->sLoginFlag:Ljava/util/HashMap;

    .line 25
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/alipay/mobile/h5container/api/H5SsoFlagHolder;->sTbLoginTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyCookieToMmstat(Landroid/content/Context;ZLjava/lang/String;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tabaoDomain"    # Z
    .param p2, "cookie"    # Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    sget-boolean v1, Lcom/alipay/mobile/h5container/api/H5SsoFlagHolder;->sCopyToMmstat:Z

    if-eqz v1, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 76
    :cond_0
    const-string v1, ";"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 77
    .local v4, "cookieArray":[Ljava/lang/String;
    move-object v4, v2

    array-length v2, v2

    if-gtz v2, :cond_1

    .line 78
    return v0

    .line 80
    :cond_1
    array-length v2, v4

    move-object v6, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_3

    aget-object v7, v4, v5

    .line 81
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 82
    .local v6, "nameValuePair":[Ljava/lang/String;
    move-object v6, v7

    array-length v7, v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 83
    aget-object v7, v6, v0

    .line 84
    .local v7, "cookieName":Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v9, v6, v8

    .line 85
    .local v9, "cookieValue":Ljava/lang/String;
    const-string/jumbo v10, "unb"

    invoke-static {v7, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 86
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    move-object v2, v3

    .line 87
    .local v2, "manager":Landroid/webkit/CookieManager;
    move-object v2, v0

    invoke-virtual {v0, v8}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "cnaui="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".mmstat.com"

    invoke-virtual {v2, v1, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 91
    return v8

    .line 80
    .end local v2    # "manager":Landroid/webkit/CookieManager;
    .end local v6    # "nameValuePair":[Ljava/lang/String;
    .end local v7    # "cookieName":Ljava/lang/String;
    .end local v9    # "cookieValue":Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 95
    :cond_3
    return v0

    .line 74
    .end local v4    # "cookieArray":[Ljava/lang/String;
    :cond_4
    :goto_1
    return v0
.end method

.method public static getFlag(Ljava/lang/String;)Z
    .locals 3
    .param p0, "domainType"    # Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    .line 40
    .local v0, "flag":Z
    sget-object v1, Lcom/alipay/mobile/h5container/api/H5SsoFlagHolder;->sLoginFlag:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    sget-object v1, Lcom/alipay/mobile/h5container/api/H5SsoFlagHolder;->sLoginFlag:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 43
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getFlag domain "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " flag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H5SsoFlagHolder"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return v0
.end method

.method public static getTbLoginTime()J
    .locals 2

    .line 63
    sget-wide v0, Lcom/alipay/mobile/h5container/api/H5SsoFlagHolder;->sTbLoginTime:J

    return-wide v0
.end method

.method public static initFlag(Ljava/util/Set;)V
    .locals 4
    .param p0, "domains"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 28
    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/alipay/mobile/h5container/api/H5SsoFlagHolder;->sLoginFlag:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 32
    :cond_0
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 33
    .local v1, "domain":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initFlag "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "H5SsoFlagHolder"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    sget-object v2, Lcom/alipay/mobile/h5container/api/H5SsoFlagHolder;->sLoginFlag:Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .end local v1    # "domain":Ljava/lang/String;
    goto :goto_0

    .line 36
    :cond_1
    return-void

    .line 29
    :cond_2
    :goto_1
    return-void
.end method

.method public static setFlag(Ljava/lang/String;Z)V
    .locals 2
    .param p0, "domainType"    # Ljava/lang/String;
    .param p1, "flag"    # Z

    .line 48
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setFlag domain "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " flag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5SsoFlagHolder"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5SsoFlagHolder;->sLoginFlag:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_0
    return-void
.end method

.method public static setNeedAutoLogin(Z)V
    .locals 4
    .param p0, "need"    # Z

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setNeedAutoLogin:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5SsoFlagHolder"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5SsoFlagHolder;->sLoginFlag:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 57
    .local v1, "key":Ljava/lang/String;
    sget-object v2, Lcom/alipay/mobile/h5container/api/H5SsoFlagHolder;->sLoginFlag:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .end local v1    # "key":Ljava/lang/String;
    goto :goto_0

    .line 59
    :cond_0
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/alipay/mobile/h5container/api/H5SsoFlagHolder;->sTbLoginTime:J

    .line 60
    return-void
.end method

.method public static setTbLoginTime(J)V
    .locals 2
    .param p0, "time"    # J

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setTbLoginTime "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5SsoFlagHolder"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    sput-wide p0, Lcom/alipay/mobile/h5container/api/H5SsoFlagHolder;->sTbLoginTime:J

    .line 69
    return-void
.end method
