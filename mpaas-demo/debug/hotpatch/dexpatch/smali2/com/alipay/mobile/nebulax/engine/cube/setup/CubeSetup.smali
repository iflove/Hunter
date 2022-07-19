.class public Lcom/alipay/mobile/nebulax/engine/cube/setup/CubeSetup;
.super Ljava/lang/Object;
.source "CubeSetup.java"


# static fields
.field private static a:Z

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/nebulax/engine/cube/setup/CubeSetup;->a:Z

    .line 41
    sput-boolean v0, Lcom/alipay/mobile/nebulax/engine/cube/setup/CubeSetup;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/antfin/cube/cubebridge/JSRuntime/CKJSBridge$ComponentModel;",
            ">;"
        }
    .end annotation

    .line 44
    const-class v0, Lcom/alipay/mobile/nebulax/engine/api/proxy/NXCubeService;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/common/NXProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulax/engine/api/proxy/NXCubeService;

    invoke-interface {v0}, Lcom/alipay/mobile/nebulax/engine/api/proxy/NXCubeService;->getComponentMap()Ljava/util/Map;

    move-result-object v0

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    if-eqz v0, :cond_0

    .line 47
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 48
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 49
    new-instance v3, Lcom/antfin/cube/cubebridge/JSRuntime/CKJSBridge$ComponentModel;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Lcom/antfin/cube/cubebridge/JSRuntime/CKJSBridge$ComponentModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    goto :goto_0

    .line 52
    :cond_0
    return-object v1
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    .line 35
    sput-boolean p0, Lcom/alipay/mobile/nebulax/engine/cube/setup/CubeSetup;->a:Z

    return p0
.end method

.method static synthetic access$100()Ljava/util/List;
    .locals 1

    .line 35
    invoke-static {}, Lcom/alipay/mobile/nebulax/engine/cube/setup/CubeSetup;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static isSetuped()Z
    .locals 1

    .line 56
    sget-boolean v0, Lcom/alipay/mobile/nebulax/engine/cube/setup/CubeSetup;->a:Z

    return v0
.end method

.method public static preLoad(Lcom/alipay/mobile/nebulax/kernel/node/Node;)V
    .locals 1

    .line 60
    sget-boolean v0, Lcom/alipay/mobile/nebulax/engine/cube/setup/CubeSetup;->b:Z

    if-eqz v0, :cond_0

    .line 61
    return-void

    .line 64
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/nebulax/engine/cube/setup/CubeSetup;->b:Z

    .line 65
    sget-boolean v0, Lcom/alipay/mobile/nebulax/engine/cube/setup/CubeSetup;->a:Z

    if-nez v0, :cond_1

    .line 66
    new-instance v0, Lcom/alipay/mobile/nebulax/engine/cube/setup/CubeSetup$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulax/engine/cube/setup/CubeSetup$1;-><init>(Lcom/alipay/mobile/nebulax/kernel/node/Node;)V

    const-string p0, "URGENT_DISPLAY"

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebulax/common/utils/ExecutorUtils;->execute(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 74
    :cond_1
    return-void
.end method

.method public static setup(Ljava/lang/String;Ljava/lang/String;Lcom/antfin/cube/platform/api/ICubeKitSDK$CubeKitLoadListener;)V
    .locals 3

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start setup cube version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/mobile/antcube/AntCube;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NebulaXEngine.CubeSetup"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    new-instance v0, Lcom/antfin/cube/cubebridge/api/CubeInitConfig$Builder;

    invoke-direct {v0}, Lcom/antfin/cube/cubebridge/api/CubeInitConfig$Builder;-><init>()V

    .line 83
    new-instance v1, Lcom/alipay/mobile/nebulax/engine/cube/b/e;

    invoke-direct {v1}, Lcom/alipay/mobile/nebulax/engine/cube/b/e;-><init>()V

    invoke-virtual {v0, v1}, Lcom/antfin/cube/cubebridge/api/CubeInitConfig$Builder;->setJsApiHandler(Lcom/antfin/cube/platform/handler/ICKJsApiHandler;)Lcom/antfin/cube/cubebridge/api/CubeInitConfig$Builder;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebulax/engine/cube/a/d;

    invoke-direct {v2}, Lcom/alipay/mobile/nebulax/engine/cube/a/d;-><init>()V

    .line 84
    invoke-virtual {v1, v2}, Lcom/antfin/cube/cubebridge/api/CubeInitConfig$Builder;->setImageLoaderHandler(Lcom/antfin/cube/platform/handler/ICKImageHandler;)Lcom/antfin/cube/cubebridge/api/CubeInitConfig$Builder;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebulax/engine/cube/a/c;

    invoke-direct {v2}, Lcom/alipay/mobile/nebulax/engine/cube/a/c;-><init>()V

    .line 85
    invoke-virtual {v1, v2}, Lcom/antfin/cube/cubebridge/api/CubeInitConfig$Builder;->setRequestHandler(Lcom/antfin/cube/platform/handler/ICKRequestHandler;)Lcom/antfin/cube/cubebridge/api/CubeInitConfig$Builder;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebulax/engine/cube/a/b;

    invoke-direct {v2}, Lcom/alipay/mobile/nebulax/engine/cube/a/b;-><init>()V

    .line 86
    invoke-virtual {v1, v2}, Lcom/antfin/cube/cubebridge/api/CubeInitConfig$Builder;->setExceptionHandler(Lcom/antfin/cube/platform/handler/ICKExceptionHandler;)Lcom/antfin/cube/cubebridge/api/CubeInitConfig$Builder;

    move-result-object v1

    .line 87
    invoke-virtual {v1, p0}, Lcom/antfin/cube/cubebridge/api/CubeInitConfig$Builder;->setV8LibraryPath(Ljava/lang/String;)Lcom/antfin/cube/cubebridge/api/CubeInitConfig$Builder;

    move-result-object p0

    .line 88
    invoke-virtual {p0, p1}, Lcom/antfin/cube/cubebridge/api/CubeInitConfig$Builder;->setFramework(Ljava/lang/String;)Lcom/antfin/cube/cubebridge/api/CubeInitConfig$Builder;

    move-result-object p0

    new-instance p1, Lcom/alipay/mobile/nebulax/engine/cube/a/e;

    invoke-direct {p1}, Lcom/alipay/mobile/nebulax/engine/cube/a/e;-><init>()V

    .line 89
    invoke-virtual {p0, p1}, Lcom/antfin/cube/cubebridge/api/CubeInitConfig$Builder;->setLogHandler(Lcom/antfin/cube/platform/handler/ICKLogHandler;)Lcom/antfin/cube/cubebridge/api/CubeInitConfig$Builder;

    move-result-object p0

    new-instance p1, Lcom/alipay/mobile/nebulax/engine/cube/a/g;

    invoke-direct {p1}, Lcom/alipay/mobile/nebulax/engine/cube/a/g;-><init>()V

    .line 90
    invoke-virtual {p0, p1}, Lcom/antfin/cube/cubebridge/api/CubeInitConfig$Builder;->setPerformanceHandler(Lcom/antfin/cube/platform/handler/ICKPerformanceHandler;)Lcom/antfin/cube/cubebridge/api/CubeInitConfig$Builder;

    move-result-object p0

    new-instance p1, Lcom/alipay/mobile/nebulax/engine/cube/a/a;

    invoke-direct {p1}, Lcom/alipay/mobile/nebulax/engine/cube/a/a;-><init>()V

    .line 91
    invoke-virtual {p0, p1}, Lcom/antfin/cube/cubebridge/api/CubeInitConfig$Builder;->setEventHandler(Lcom/antfin/cube/platform/handler/ICKEventListener;)Lcom/antfin/cube/cubebridge/api/CubeInitConfig$Builder;

    move-result-object p0

    new-instance p1, Lcom/alipay/mobile/antcube/handler/CKConfigHandler;

    invoke-direct {p1}, Lcom/alipay/mobile/antcube/handler/CKConfigHandler;-><init>()V

    .line 92
    invoke-virtual {p0, p1}, Lcom/antfin/cube/cubebridge/api/CubeInitConfig$Builder;->setConfigHandler(Lcom/antfin/cube/platform/handler/ICKConfigHandler;)Lcom/antfin/cube/cubebridge/api/CubeInitConfig$Builder;

    .line 96
    invoke-virtual {v0}, Lcom/antfin/cube/cubebridge/api/CubeInitConfig$Builder;->build()Lcom/antfin/cube/cubebridge/api/CubeInitConfig;

    move-result-object p0

    new-instance p1, Lcom/alipay/mobile/nebulax/engine/cube/setup/CubeSetup$2;

    invoke-direct {p1, p2}, Lcom/alipay/mobile/nebulax/engine/cube/setup/CubeSetup$2;-><init>(Lcom/antfin/cube/platform/api/ICubeKitSDK$CubeKitLoadListener;)V

    invoke-static {p0, p1}, Lcom/alipay/mobile/antcube/AntCube;->init(Lcom/antfin/cube/cubebridge/api/CubeInitConfig;Lcom/antfin/cube/platform/api/ICubeKitSDK$CubeKitLoadListener;)V

    .line 110
    return-void
.end method
