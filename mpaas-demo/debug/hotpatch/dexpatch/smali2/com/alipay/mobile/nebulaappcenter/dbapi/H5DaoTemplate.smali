.class public Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoTemplate;
.super Ljava/lang/Object;
.source "H5DaoTemplate.java"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-string v0, ""

    sput-object v0, Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoTemplate;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 4

    .line 58
    sget-object v0, Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoTemplate;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "H5DaoTemplate"

    if-eqz v0, :cond_2

    .line 59
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;

    .line 60
    const-string v2, "empty_user_id"

    if-eqz v0, :cond_1

    .line 61
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 64
    const-string v0, "getUserId null"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-object v2

    .line 67
    :cond_0
    sput-object v0, Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoTemplate;->a:Ljava/lang/String;

    .line 68
    goto :goto_0

    .line 70
    :cond_1
    sput-object v2, Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoTemplate;->a:Ljava/lang/String;

    .line 74
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current user userIdCache : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoTemplate;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    sget-object v0, Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoTemplate;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static b()V
    .locals 1

    .line 83
    const-string v0, ""

    sput-object v0, Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoTemplate;->a:Ljava/lang/String;

    .line 84
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;

    .line 85
    if-eqz v0, :cond_0

    .line 86
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;->getUserId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoTemplate;->a:Ljava/lang/String;

    goto :goto_0

    .line 88
    :cond_0
    const-string v0, "empty_user_id"

    sput-object v0, Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoTemplate;->a:Ljava/lang/String;

    .line 90
    :goto_0
    return-void
.end method


# virtual methods
.method protected a(Z)Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;
    .locals 0

    .line 53
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5DBUtil;->b()Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5DBUtil;->a()Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected a(Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 23
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5DBUtil;->a()Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;

    move-result-object v0

    .line 25
    :try_start_0
    invoke-interface {p1, v0}, Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;->a(Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    const-string v0, "H5DaoTemplate"

    const-string v1, "execute error!"

    invoke-static {v0, v1, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    invoke-static {p1}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5DBUtil;->a(Ljava/lang/Throwable;)V

    .line 30
    const/4 p1, 0x0

    return-object p1
.end method

.method protected a(Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor<",
            "TT;>;Z)TT;"
        }
    .end annotation

    .line 37
    if-eqz p2, :cond_0

    .line 38
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5DBUtil;->b()Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;

    move-result-object p2

    goto :goto_0

    .line 40
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5DBUtil;->a()Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;

    move-result-object p2

    .line 44
    :goto_0
    :try_start_0
    invoke-interface {p1, p2}, Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;->a(Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    const-string p2, "H5DaoTemplate"

    const-string v0, "executeDB error!"

    invoke-static {p2, v0, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    invoke-static {p1}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5DBUtil;->a(Ljava/lang/Throwable;)V

    .line 49
    const/4 p1, 0x0

    return-object p1
.end method
