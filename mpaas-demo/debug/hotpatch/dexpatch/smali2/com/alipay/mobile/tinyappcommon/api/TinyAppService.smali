.class public Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;
.super Ljava/lang/Object;
.source "TinyAppService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/tinyappcommon/api/TinyAppService$TinyAppServiceInner;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static final TINY_APP_STORAGE:Ljava/lang/String; = "com.alipay.mobile.tinyappcommon.storage.TinyAppStorage"


# instance fields
.field private mMixActionService:Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

.field private mShareInterface:Lcom/alipay/mobile/tinyappcommon/api/TinyAppShareInterface;

.field private mTinyAppEdgeRiskService:Lcom/alipay/mobile/tinyappcommon/api/TinyAppEdgeRiskService;

.field private mTinyAppLiteProcessService:Lcom/alipay/mobile/tinyappcommon/api/TinyAppLiteProcessService;

.field private mTinyAppSharePadService:Lcom/alipay/mobile/tinyappcommon/api/TinyAppSharePadService;

.field private mTinyAppStartupInterceptor:Lcom/alipay/mobile/tinyappcommon/api/TinyAppStartupInterceptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-class v0, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/tinyappcommon/api/TinyAppService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/tinyappcommon/api/TinyAppService$1;

    .line 11
    invoke-direct {p0}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;-><init>()V

    return-void
.end method

.method public static get()Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;
    .locals 1

    .line 37
    sget-object v0, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService$TinyAppServiceInner;->INSTANCE:Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;

    return-object v0
.end method


# virtual methods
.method public getLiteProcessService()Lcom/alipay/mobile/tinyappcommon/api/TinyAppLiteProcessService;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->mTinyAppLiteProcessService:Lcom/alipay/mobile/tinyappcommon/api/TinyAppLiteProcessService;

    return-object v0
.end method

.method public getMixActionService()Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->mMixActionService:Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

    return-object v0
.end method

.method public getSharePadService()Lcom/alipay/mobile/tinyappcommon/api/TinyAppSharePadService;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->mTinyAppSharePadService:Lcom/alipay/mobile/tinyappcommon/api/TinyAppSharePadService;

    return-object v0
.end method

.method public getTinyAppEdgeRiskService()Lcom/alipay/mobile/tinyappcommon/api/TinyAppEdgeRiskService;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->mTinyAppEdgeRiskService:Lcom/alipay/mobile/tinyappcommon/api/TinyAppEdgeRiskService;

    return-object v0
.end method

.method public getTinyAppShareInterface()Lcom/alipay/mobile/tinyappcommon/api/TinyAppShareInterface;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->mShareInterface:Lcom/alipay/mobile/tinyappcommon/api/TinyAppShareInterface;

    return-object v0
.end method

.method public getTinyAppStartupInterceptor()Lcom/alipay/mobile/tinyappcommon/api/TinyAppStartupInterceptor;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->mTinyAppStartupInterceptor:Lcom/alipay/mobile/tinyappcommon/api/TinyAppStartupInterceptor;

    return-object v0
.end method

.method public interceptDefaultShareAction(Lcom/alipay/mobile/tinyappcommon/api/TinyAppShareInterface;)V
    .locals 2
    .param p1, "shareInterface"    # Lcom/alipay/mobile/tinyappcommon/api/TinyAppShareInterface;

    .line 69
    if-nez p1, :cond_0

    .line 70
    sget-object v0, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->TAG:Ljava/lang/String;

    const-string v1, "interceptDefaultShareAction...shareInterface is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void

    .line 74
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->mShareInterface:Lcom/alipay/mobile/tinyappcommon/api/TinyAppShareInterface;

    .line 75
    return-void
.end method

.method public interceptStorageSizeImpl(Lcom/alipay/mobile/tinyappcommon/api/StorageInterface;)V
    .locals 7
    .param p1, "storageInterface"    # Lcom/alipay/mobile/tinyappcommon/api/StorageInterface;

    .line 46
    if-nez p1, :cond_0

    .line 47
    sget-object v0, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->TAG:Ljava/lang/String;

    const-string v1, "interceptStorageSizeImpl...storageInterface is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void

    .line 52
    :cond_0
    :try_start_0
    const-string v0, "com.alipay.mobile.tinyappcommon.storage.TinyAppStorage"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    .line 53
    .local v1, "clz":Ljava/lang/Class;
    move-object v1, v0

    const-string v2, "getInstance"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 54
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 55
    .local v0, "tinyAppStorage":Ljava/lang/Object;
    const-string v2, "interceptCurrentStorageImpl"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Lcom/alipay/mobile/tinyappcommon/api/StorageInterface;

    aput-object v6, v5, v3

    invoke-virtual {v1, v2, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 57
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    nop

    .end local v0    # "tinyAppStorage":Ljava/lang/Object;
    .end local v1    # "clz":Ljava/lang/Class;
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "interceptStorageSizeImpl...e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method public setLiteProcessService(Lcom/alipay/mobile/tinyappcommon/api/TinyAppLiteProcessService;)V
    .locals 0
    .param p1, "impl"    # Lcom/alipay/mobile/tinyappcommon/api/TinyAppLiteProcessService;

    .line 102
    iput-object p1, p0, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->mTinyAppLiteProcessService:Lcom/alipay/mobile/tinyappcommon/api/TinyAppLiteProcessService;

    .line 103
    return-void
.end method

.method public setMixActionService(Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;)V
    .locals 0
    .param p1, "impl"    # Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

    .line 82
    iput-object p1, p0, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->mMixActionService:Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

    .line 83
    return-void
.end method

.method public setTinyAppEdgeRiskService(Lcom/alipay/mobile/tinyappcommon/api/TinyAppEdgeRiskService;)V
    .locals 0
    .param p1, "impl"    # Lcom/alipay/mobile/tinyappcommon/api/TinyAppEdgeRiskService;

    .line 118
    iput-object p1, p0, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->mTinyAppEdgeRiskService:Lcom/alipay/mobile/tinyappcommon/api/TinyAppEdgeRiskService;

    .line 119
    return-void
.end method

.method public setTinyAppSharePadService(Lcom/alipay/mobile/tinyappcommon/api/TinyAppSharePadService;)V
    .locals 0
    .param p1, "impl"    # Lcom/alipay/mobile/tinyappcommon/api/TinyAppSharePadService;

    .line 110
    iput-object p1, p0, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->mTinyAppSharePadService:Lcom/alipay/mobile/tinyappcommon/api/TinyAppSharePadService;

    .line 111
    return-void
.end method

.method public setTinyAppStartupInterceptor(Lcom/alipay/mobile/tinyappcommon/api/TinyAppStartupInterceptor;)V
    .locals 0
    .param p1, "impl"    # Lcom/alipay/mobile/tinyappcommon/api/TinyAppStartupInterceptor;

    .line 94
    iput-object p1, p0, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->mTinyAppStartupInterceptor:Lcom/alipay/mobile/tinyappcommon/api/TinyAppStartupInterceptor;

    .line 95
    return-void
.end method
