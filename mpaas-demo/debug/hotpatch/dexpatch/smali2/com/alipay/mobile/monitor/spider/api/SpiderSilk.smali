.class public abstract Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;
.super Ljava/lang/Object;
.source "SpiderSilk.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "SpiderSilk"


# instance fields
.field protected mBizName:Ljava/lang/String;

.field protected properties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected sectionKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/monitor/spider/api/SectionKey;",
            ">;"
        }
    .end annotation
.end field

.field protected timesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "bizName"    # Ljava/lang/String;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;->mBizName:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;->timesMap:Ljava/util/HashMap;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;->properties:Ljava/util/HashMap;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;->sectionKeys:Ljava/util/Map;

    .line 49
    return-void
.end method


# virtual methods
.method public abstract addProperty(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract end(J)V
.end method

.method public abstract endSection(Ljava/lang/String;J)V
.end method

.method public getBizName()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;->mBizName:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;->properties:Ljava/util/HashMap;

    return-object v0
.end method

.method public getSectionKeys()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/monitor/spider/api/SectionKey;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;->sectionKeys:Ljava/util/Map;

    return-object v0
.end method

.method public getTimesMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;->timesMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public abstract start(J)V
.end method

.method public abstract startSection(Ljava/lang/String;J)V
.end method
