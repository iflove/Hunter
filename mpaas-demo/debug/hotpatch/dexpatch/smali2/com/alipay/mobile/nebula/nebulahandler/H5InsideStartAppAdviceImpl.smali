.class public Lcom/alipay/mobile/nebula/nebulahandler/H5InsideStartAppAdviceImpl;
.super Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppBaseAdvice;
.source "H5InsideStartAppAdviceImpl.java"


# static fields
.field private static final NEBULA_DEBUG_APP_ID:Ljava/lang/String; = "H5DebugApp233"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppBaseAdvice;-><init>()V

    return-void
.end method

.method private setEngineType(Ljava/lang/String;)V
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;

    .line 44
    new-instance v0, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/app/ApplicationDescription;-><init>()V

    const/4 v1, 0x0

    .line 45
    .local v1, "appDescription":Lcom/alipay/mobile/framework/app/ApplicationDescription;
    move-object v1, v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    .line 46
    const-string v0, "H5App"

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setEngineType(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    .line 47
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/alipay/mobile/framework/app/ApplicationDescription;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 48
    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->addDescription([Lcom/alipay/mobile/framework/app/ApplicationDescription;)V

    .line 49
    return-void
.end method


# virtual methods
.method public canHandler(Ljava/lang/String;)Z
    .locals 5
    .param p1, "appId"    # Ljava/lang/String;

    .line 21
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 22
    invoke-interface {v0, p1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findDescriptionByAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    move-result-object v0

    .line 23
    .local v0, "applicationDescription":Lcom/alipay/mobile/framework/app/ApplicationDescription;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H5InsideStartAppAdviceImpl"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 27
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebula/nebulahandler/H5InsideStartAppAdviceImpl;->setEngineType(Ljava/lang/String;)V

    .line 28
    return v1

    .line 31
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->isH5ContainerAppId(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    .line 32
    const-string v2, "H5DebugApp233"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->getEngineType()Ljava/lang/String;

    move-result-object v2

    const-string v4, "H5App"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 37
    return v1

    .line 40
    :cond_2
    return v3

    .line 33
    :cond_3
    :goto_0
    return v3
.end method
