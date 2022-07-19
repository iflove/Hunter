.class Lcom/alipay/mobile/common/logging/api/LoggerFactory$NullEventLogger;
.super Ljava/lang/Object;
.source "LoggerFactory.java"

# interfaces
.implements Lcom/alipay/mobile/common/logging/api/antevent/EventLogger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/logging/api/LoggerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NullEventLogger"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1749
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/logging/api/LoggerFactory$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/common/logging/api/LoggerFactory$1;

    .line 1749
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/api/LoggerFactory$NullEventLogger;-><init>()V

    return-void
.end method


# virtual methods
.method public antEvent(Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;)V
    .locals 0
    .param p1, "antEvent"    # Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;

    .line 1752
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1753
    return-void
.end method

.method public antEvent(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;)V
    .locals 0
    .param p1, "logCategory"    # Ljava/lang/String;
    .param p2, "antEvent"    # Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;

    .line 1757
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1758
    return-void
.end method
