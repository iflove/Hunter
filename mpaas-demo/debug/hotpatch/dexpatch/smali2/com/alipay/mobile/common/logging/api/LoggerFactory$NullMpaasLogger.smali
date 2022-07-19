.class Lcom/alipay/mobile/common/logging/api/LoggerFactory$NullMpaasLogger;
.super Ljava/lang/Object;
.source "LoggerFactory.java"

# interfaces
.implements Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/logging/api/LoggerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NullMpaasLogger"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1761
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/logging/api/LoggerFactory$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/common/logging/api/LoggerFactory$1;

    .line 1761
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/api/LoggerFactory$NullMpaasLogger;-><init>()V

    return-void
.end method


# virtual methods
.method public anr(Ljava/util/Map;)V
    .locals 0
    .param p1, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1829
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1830
    return-void
.end method

.method public autoClick(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V
    .locals 0
    .param p1, "behavior"    # Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    .line 1849
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1850
    return-void
.end method

.method public autoEvent(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V
    .locals 0
    .param p1, "behavior"    # Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    .line 1844
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1845
    return-void
.end method

.method public autoOpenPage(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V
    .locals 0
    .param p1, "behavior"    # Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    .line 1839
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1840
    return-void
.end method

.method public behavior(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;Lcom/alipay/mobile/common/logging/api/BizType;Ljava/lang/String;)V
    .locals 0
    .param p1, "behavior"    # Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    .param p2, "bizType"    # Lcom/alipay/mobile/common/logging/api/BizType;
    .param p3, "sdkVersion"    # Ljava/lang/String;

    .line 1789
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1790
    return-void
.end method

.method public behavior(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;Lcom/alipay/mobile/common/logging/api/BizType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "behavior"    # Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    .param p2, "bizType"    # Lcom/alipay/mobile/common/logging/api/BizType;
    .param p3, "sdkVersion"    # Ljava/lang/String;
    .param p4, "behaviorID"    # Ljava/lang/String;

    .line 1794
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1795
    return-void
.end method

.method public behavior(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/BizType;)V
    .locals 0
    .param p1, "seedId"    # Ljava/lang/String;
    .param p2, "bizType"    # Lcom/alipay/mobile/common/logging/api/BizType;

    .line 1779
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1780
    return-void
.end method

.method public behavior(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/BizType;Ljava/lang/String;)V
    .locals 0
    .param p1, "seedId"    # Ljava/lang/String;
    .param p2, "bizType"    # Lcom/alipay/mobile/common/logging/api/BizType;
    .param p3, "sdkVersion"    # Ljava/lang/String;

    .line 1774
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1775
    return-void
.end method

.method public behavior(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/BizType;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "seedId"    # Ljava/lang/String;
    .param p2, "bizType"    # Lcom/alipay/mobile/common/logging/api/BizType;
    .param p3, "sdkVersion"    # Ljava/lang/String;
    .param p4, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/logging/api/BizType;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1764
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1765
    return-void
.end method

.method public behavior(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/BizType;Ljava/util/Map;)V
    .locals 0
    .param p1, "seedId"    # Ljava/lang/String;
    .param p2, "bizType"    # Lcom/alipay/mobile/common/logging/api/BizType;
    .param p3, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/logging/api/BizType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1769
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1770
    return-void
.end method

.method public behavior(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "seedId"    # Ljava/lang/String;
    .param p2, "bizType"    # Ljava/lang/String;
    .param p3, "sdkVersion"    # Ljava/lang/String;
    .param p4, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1784
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1785
    return-void
.end method

.method public clientLaunch()V
    .locals 0

    .line 1804
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1805
    return-void
.end method

.method public event(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "logId"    # Ljava/lang/String;
    .param p2, "bizType"    # Ljava/lang/String;
    .param p3, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1814
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1815
    return-void
.end method

.method public lag(Ljava/util/Map;)V
    .locals 0
    .param p1, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1824
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1825
    return-void
.end method

.method public launchAnr(Ljava/util/Map;)V
    .locals 0
    .param p1, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1834
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1835
    return-void
.end method

.method public launchTime(JZ)V
    .locals 0
    .param p1, "launchTime"    # J
    .param p3, "isFirstStart"    # Z

    .line 1819
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1820
    return-void
.end method

.method public performance(Lcom/alipay/mobile/common/logging/api/monitor/Performance;Ljava/lang/String;Ljava/util/Map;Lcom/alipay/mobile/common/logging/api/BizType;Ljava/lang/String;)V
    .locals 0
    .param p1, "performance"    # Lcom/alipay/mobile/common/logging/api/monitor/Performance;
    .param p2, "performanceId"    # Ljava/lang/String;
    .param p3, "header"    # Ljava/util/Map;
    .param p4, "bizType"    # Lcom/alipay/mobile/common/logging/api/BizType;
    .param p5, "sdkVersion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/logging/api/monitor/Performance;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alipay/mobile/common/logging/api/BizType;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1799
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1800
    return-void
.end method

.method public traffic(Ljava/util/Map;)V
    .locals 0
    .param p1, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1854
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1855
    return-void
.end method

.method public userLogin(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .line 1809
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1810
    return-void
.end method
