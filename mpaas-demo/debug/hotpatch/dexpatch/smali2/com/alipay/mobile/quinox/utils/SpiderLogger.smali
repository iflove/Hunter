.class public Lcom/alipay/mobile/quinox/utils/SpiderLogger;
.super Ljava/lang/Object;
.source "SpiderLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/quinox/utils/SpiderLogger$EmptySpider;,
        Lcom/alipay/mobile/quinox/utils/SpiderLogger$SpiderWrapper;
    }
.end annotation


# static fields
.field public static final BIZ_PRE_LAUNCH:Ljava/lang/String; = "pre_launch"

.field public static final BIZ_TIME_STARTUP:Ljava/lang/String; = "time_startup"

.field public static final BIZ_TIME_STARTUP_PRE:Ljava/lang/String; = "time_startup_pre"

.field public static final BIZ_TIME_STARTUP_SUB:Ljava/lang/String; = "time_startup_sub"

.field private static final TAG:Ljava/lang/String; = "SpiderLogger"

.field private static final sPreSectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSpider:Lcom/alipay/mobile/quinox/utils/SpiderLogger$SpiderWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/quinox/utils/SpiderLogger;->sPreSectionMap:Ljava/util/Map;

    .line 22
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SpiderLogger;->getSpiderImpl()Lcom/alipay/mobile/quinox/utils/SpiderLogger$SpiderWrapper;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/quinox/utils/SpiderLogger;->sSpider:Lcom/alipay/mobile/quinox/utils/SpiderLogger$SpiderWrapper;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static end(Ljava/lang/String;)V
    .locals 2
    .param p0, "biz"    # Ljava/lang/String;

    .line 54
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/quinox/utils/SpiderLogger;->sPreSectionMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    .line 55
    .local v1, "preSection":Ljava/lang/String;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 56
    invoke-static {p0, v1}, Lcom/alipay/mobile/quinox/utils/SpiderLogger;->endSection(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_0
    sget-object v0, Lcom/alipay/mobile/quinox/utils/SpiderLogger;->sSpider:Lcom/alipay/mobile/quinox/utils/SpiderLogger$SpiderWrapper;

    invoke-interface {v0, p0}, Lcom/alipay/mobile/quinox/utils/SpiderLogger$SpiderWrapper;->end(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .end local v1    # "preSection":Ljava/lang/String;
    return-void

    .line 59
    :catchall_0
    move-exception v0

    .line 62
    return-void
.end method

.method private static endSection(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "biz"    # Ljava/lang/String;
    .param p1, "sectionName"    # Ljava/lang/String;

    .line 48
    sget-object v0, Lcom/alipay/mobile/quinox/utils/SpiderLogger;->sSpider:Lcom/alipay/mobile/quinox/utils/SpiderLogger$SpiderWrapper;

    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/quinox/utils/SpiderLogger$SpiderWrapper;->endSection(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    sget-object v0, Lcom/alipay/mobile/quinox/utils/SpiderLogger;->sPreSectionMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-void
.end method

.method private static getSpiderImpl()Lcom/alipay/mobile/quinox/utils/SpiderLogger$SpiderWrapper;
    .locals 4

    .line 66
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.alipay.mobile.monitor.spider.api.Spider"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    move-object v2, v0

    .line 67
    .local v2, "cls":Ljava/lang/Class;
    move-object v2, v1

    const-string v3, "getInstance"

    invoke-static {v1, v3}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 69
    .local v1, "spider":Ljava/lang/Object;
    new-instance v3, Lcom/alipay/mobile/quinox/utils/SpiderLogger$1;

    invoke-direct {v3, v2, v1}, Lcom/alipay/mobile/quinox/utils/SpiderLogger$1;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v3

    .line 111
    .end local v1    # "spider":Ljava/lang/Object;
    .end local v2    # "cls":Ljava/lang/Class;
    :catchall_0
    move-exception v1

    .line 112
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "SpiderLogger"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    .end local v1    # "t":Ljava/lang/Throwable;
    new-instance v1, Lcom/alipay/mobile/quinox/utils/SpiderLogger$EmptySpider;

    invoke-direct {v1, v0}, Lcom/alipay/mobile/quinox/utils/SpiderLogger$EmptySpider;-><init>(Lcom/alipay/mobile/quinox/utils/SpiderLogger$1;)V

    return-object v1
.end method

.method public static start(Ljava/lang/String;)V
    .locals 1
    .param p0, "biz"    # Ljava/lang/String;

    .line 27
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/quinox/utils/SpiderLogger;->sSpider:Lcom/alipay/mobile/quinox/utils/SpiderLogger$SpiderWrapper;

    invoke-interface {v0, p0}, Lcom/alipay/mobile/quinox/utils/SpiderLogger$SpiderWrapper;->start(Ljava/lang/String;)V

    .line 28
    sget-object v0, Lcom/alipay/mobile/quinox/utils/SpiderLogger;->sPreSectionMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    return-void

    .line 29
    :catchall_0
    move-exception v0

    .line 32
    return-void
.end method

.method public static startSection(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "biz"    # Ljava/lang/String;
    .param p1, "sectionName"    # Ljava/lang/String;

    .line 36
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/quinox/utils/SpiderLogger;->sPreSectionMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    .line 37
    .local v2, "preSection":Ljava/lang/String;
    move-object v2, v1

    if-eqz v1, :cond_0

    .line 38
    invoke-static {p0, v2}, Lcom/alipay/mobile/quinox/utils/SpiderLogger;->endSection(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_0
    sget-object v1, Lcom/alipay/mobile/quinox/utils/SpiderLogger;->sSpider:Lcom/alipay/mobile/quinox/utils/SpiderLogger$SpiderWrapper;

    invoke-interface {v1, p0, p1}, Lcom/alipay/mobile/quinox/utils/SpiderLogger$SpiderWrapper;->startSection(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    nop

    .end local v2    # "preSection":Ljava/lang/String;
    return-void

    .line 42
    :catchall_0
    move-exception v0

    .line 45
    return-void
.end method
