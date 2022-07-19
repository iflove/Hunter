.class final Lcom/alipay/mobile/quinox/utils/SpiderLogger$EmptySpider;
.super Ljava/lang/Object;
.source "SpiderLogger.java"

# interfaces
.implements Lcom/alipay/mobile/quinox/utils/SpiderLogger$SpiderWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/quinox/utils/SpiderLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EmptySpider"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/quinox/utils/SpiderLogger$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/quinox/utils/SpiderLogger$1;

    .line 127
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/utils/SpiderLogger$EmptySpider;-><init>()V

    return-void
.end method


# virtual methods
.method public final end(Ljava/lang/String;)V
    .locals 0
    .param p1, "biz"    # Ljava/lang/String;

    .line 145
    return-void
.end method

.method public final endSection(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "biz"    # Ljava/lang/String;
    .param p2, "sectionName"    # Ljava/lang/String;

    .line 140
    return-void
.end method

.method public final start(Ljava/lang/String;)V
    .locals 0
    .param p1, "biz"    # Ljava/lang/String;

    .line 130
    return-void
.end method

.method public final startSection(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "biz"    # Ljava/lang/String;
    .param p2, "sectionName"    # Ljava/lang/String;

    .line 135
    return-void
.end method
