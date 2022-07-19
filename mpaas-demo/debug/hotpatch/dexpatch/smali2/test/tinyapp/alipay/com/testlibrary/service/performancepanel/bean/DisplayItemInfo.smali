.class public Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/bean/DisplayItemInfo;
.super Ljava/lang/Object;
.source "DisplayItemInfo.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/bean/PerformanceItemInfo;

.field private c:I


# direct methods
.method private constructor <init>(ILjava/lang/String;Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/bean/PerformanceItemInfo;)V
    .locals 0
    .param p1, "itemType"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "performanceItemInfo"    # Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/bean/PerformanceItemInfo;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/bean/DisplayItemInfo;->c:I

    .line 23
    iput-object p2, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/bean/DisplayItemInfo;->a:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/bean/DisplayItemInfo;->b:Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/bean/PerformanceItemInfo;

    .line 25
    return-void
.end method

.method public static a(Ljava/lang/String;)Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/bean/DisplayItemInfo;
    .locals 3
    .param p0, "title"    # Ljava/lang/String;

    .line 28
    new-instance v0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/bean/DisplayItemInfo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/bean/DisplayItemInfo;-><init>(ILjava/lang/String;Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/bean/PerformanceItemInfo;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/bean/DisplayItemInfo;
    .locals 3
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "performanceName"    # Ljava/lang/String;
    .param p2, "performanceValue"    # Ljava/lang/String;

    .line 37
    invoke-static {p0, p1, p2}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/bean/PerformanceItemInfo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/bean/PerformanceItemInfo;

    move-result-object v0

    .line 41
    .local v0, "performanceItemInfo":Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/bean/PerformanceItemInfo;
    new-instance v1, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/bean/DisplayItemInfo;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0, v0}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/bean/DisplayItemInfo;-><init>(ILjava/lang/String;Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/bean/PerformanceItemInfo;)V

    return-object v1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/bean/DisplayItemInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/bean/PerformanceItemInfo;
    .locals 1

    .line 49
    iget-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/bean/DisplayItemInfo;->b:Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/bean/PerformanceItemInfo;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .line 53
    iget v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/bean/DisplayItemInfo;->c:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/bean/DisplayItemInfo;->b:Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/bean/PerformanceItemInfo;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/bean/PerformanceItemInfo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 61
    :cond_0
    iget-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/bean/DisplayItemInfo;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "empty info"

    return-object v0

    :cond_1
    iget-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/bean/DisplayItemInfo;->a:Ljava/lang/String;

    return-object v0
.end method
