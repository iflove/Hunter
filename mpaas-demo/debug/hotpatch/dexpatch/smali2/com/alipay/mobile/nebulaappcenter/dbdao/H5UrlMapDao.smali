.class public Lcom/alipay/mobile/nebulaappcenter/dbdao/H5UrlMapDao;
.super Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoTemplate;
.source "H5UrlMapDao.java"


# static fields
.field private static a:Lcom/alipay/mobile/nebulaappcenter/dbdao/H5UrlMapDao;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5UrlMapDao;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5UrlMapDao;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5UrlMapDao;->a:Lcom/alipay/mobile/nebulaappcenter/dbdao/H5UrlMapDao;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoTemplate;-><init>()V

    return-void
.end method

.method public static declared-synchronized c()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5UrlMapDao;
    .locals 2

    const-class v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5UrlMapDao;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5UrlMapDao;->a:Lcom/alipay/mobile/nebulaappcenter/dbdao/H5UrlMapDao;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5UrlMapDao;

    invoke-direct {v1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5UrlMapDao;-><init>()V

    sput-object v1, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5UrlMapDao;->a:Lcom/alipay/mobile/nebulaappcenter/dbdao/H5UrlMapDao;

    .line 34
    :cond_0
    sget-object v1, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5UrlMapDao;->a:Lcom/alipay/mobile/nebulaappcenter/dbdao/H5UrlMapDao;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 30
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 103
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->purifyUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    new-instance v1, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5UrlMapDao$2;

    invoke-direct {v1, p0, v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5UrlMapDao$2;-><init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5UrlMapDao;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5UrlMapDao;->a(Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findUrlMappedAppId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " => "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "H5UrlMapDao"

    invoke-static {v1, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-object v0
.end method

.method public a(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V
    .locals 3

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateUrlMap for appInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->extend_info_jo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5UrlMapDao"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v0, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->extend_info_jo:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    new-instance v2, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5UrlMapDao$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5UrlMapDao$1;-><init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5UrlMapDao;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Lcom/alibaba/fastjson/JSONObject;)V

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5UrlMapDao;->a(Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 96
    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 97
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateUrlMap for appInfo affected: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_1
    return-void
.end method
