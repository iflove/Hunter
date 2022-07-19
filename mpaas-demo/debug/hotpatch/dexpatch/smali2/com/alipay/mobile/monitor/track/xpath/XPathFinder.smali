.class public Lcom/alipay/mobile/monitor/track/xpath/XPathFinder;
.super Ljava/lang/Object;
.source "XPathFinder.java"


# static fields
.field public static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-string v0, "android:id/content"

    sput-object v0, Lcom/alipay/mobile/monitor/track/xpath/XPathFinder;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/view/View;)Ljava/lang/String;
    .locals 14
    .param p0, "view"    # Landroid/view/View;

    .line 68
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 69
    return-object v0

    .line 71
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/monitor/track/xpath/XPathFinder;->b(Landroid/view/View;)Ljava/util/List;

    move-result-object v1

    .line 72
    .local v1, "list":Ljava/util/List;
    if-eqz v1, :cond_9

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_4

    .line 75
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 78
    .local v2, "size":I
    const/4 v3, -0x1

    .line 79
    .local v3, "abIndex":I
    add-int/lit8 v4, v2, -0x1

    .local v4, "i":I
    :goto_0
    const-string v5, ":"

    const-string v6, "]"

    const-string v7, "["

    const-string v8, "/"

    if-ltz v4, :cond_5

    .line 80
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/ViewParent;

    .line 81
    .local v9, "node":Landroid/view/ViewParent;
    invoke-interface {v9}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    .line 82
    .local v10, "nodeParent":Landroid/view/ViewParent;
    const/4 v11, 0x0

    .line 83
    .local v11, "index":I
    if-eqz v10, :cond_2

    instance-of v12, v10, Landroid/view/ViewGroup;

    if-eqz v12, :cond_2

    .line 84
    move-object v12, v10

    check-cast v12, Landroid/view/ViewGroup;

    move-object v13, v9

    check-cast v13, Landroid/view/View;

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v11

    .line 86
    :cond_2
    const-string v12, "-"

    .line 87
    .local v12, "controlId":Ljava/lang/String;
    if-eqz v9, :cond_3

    instance-of v13, v9, Landroid/view/View;

    if-eqz v13, :cond_3

    .line 88
    move-object v13, v9

    check-cast v13, Landroid/view/View;

    invoke-static {v13}, Lcom/alipay/mobile/monitor/track/xpath/XPathFinder;->c(Landroid/view/View;)Ljava/lang/String;

    move-result-object v12

    .line 91
    :cond_3
    if-eqz v10, :cond_4

    instance-of v13, v10, Landroid/widget/AdapterView;

    if-eqz v13, :cond_4

    .line 92
    move-object v13, v10

    check-cast v13, Landroid/widget/AdapterView;

    .line 93
    invoke-virtual {v13}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v13

    add-int/2addr v13, v11

    .line 94
    .end local v3    # "abIndex":I
    .local v13, "abIndex":I
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v13

    goto :goto_1

    .line 109
    .end local v13    # "abIndex":I
    .restart local v3    # "abIndex":I
    :cond_4
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .end local v9    # "node":Landroid/view/ViewParent;
    .end local v10    # "nodeParent":Landroid/view/ViewParent;
    .end local v11    # "index":I
    .end local v12    # "controlId":Ljava/lang/String;
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_0

    .line 114
    .end local v4    # "i":I
    :cond_5
    const-string v4, "-"

    .line 115
    .local v4, "controlId":Ljava/lang/String;
    if-eqz p0, :cond_6

    instance-of v9, p0, Landroid/view/View;

    if-eqz v9, :cond_6

    .line 116
    invoke-static {p0}, Lcom/alipay/mobile/monitor/track/xpath/XPathFinder;->c(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    .line 118
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    .line 119
    .local v9, "vp":Landroid/view/ViewParent;
    const/4 v10, 0x0

    .line 120
    .local v10, "viewIndex":I
    if-eqz v9, :cond_8

    instance-of v11, v9, Landroid/view/ViewGroup;

    if-eqz v11, :cond_8

    .line 121
    move-object v11, v9

    check-cast v11, Landroid/view/ViewGroup;

    .line 122
    .local v11, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v11, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v10

    .line 123
    instance-of v12, v9, Landroid/widget/AdapterView;

    if-eqz v12, :cond_7

    .line 124
    move-object v12, v9

    check-cast v12, Landroid/widget/AdapterView;

    .line 125
    invoke-virtual {v12}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v12

    add-int v3, v12, v10

    .line 126
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 128
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 143
    :cond_7
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 145
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .end local v11    # "viewGroup":Landroid/view/ViewGroup;
    :goto_2
    goto :goto_3

    .line 148
    :cond_8
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    :goto_3
    const-string/jumbo v5, "|"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 154
    .local v5, "context":Landroid/content/Context;
    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "//"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 73
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "size":I
    .end local v3    # "abIndex":I
    .end local v4    # "controlId":Ljava/lang/String;
    .end local v5    # "context":Landroid/content/Context;
    .end local v9    # "vp":Landroid/view/ViewParent;
    .end local v10    # "viewIndex":I
    :cond_9
    :goto_4
    return-object v0
.end method

.method private static b(Landroid/view/View;)Ljava/util/List;
    .locals 8
    .param p0, "origin"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/ViewParent;",
            ">;"
        }
    .end annotation

    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v0, 0x0

    return-object v0

    .line 28
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .local v0, "viewList":Ljava/util/ArrayList;
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 30
    .local v1, "parentNode":Landroid/view/ViewParent;
    :goto_0
    if-eqz v1, :cond_2

    .line 31
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 32
    const/4 v2, -0x1

    .line 33
    .local v2, "id":I
    move-object v3, v1

    check-cast v3, Landroid/view/View;

    .line 34
    .local v3, "item":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v2

    .line 35
    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    .line 36
    const/4 v4, 0x0

    .line 38
    .local v4, "des":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v5

    .line 41
    goto :goto_1

    .line 39
    :catchall_0
    move-exception v5

    .line 40
    .local v5, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    const-string v7, "XPathFinder"

    invoke-interface {v6, v7, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    .end local v5    # "e":Ljava/lang/Throwable;
    :goto_1
    sget-object v5, Lcom/alipay/mobile/monitor/track/xpath/XPathFinder;->a:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 43
    goto :goto_2

    .line 47
    .end local v2    # "id":I
    .end local v3    # "item":Landroid/view/View;
    .end local v4    # "des":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    .line 50
    :cond_2
    :goto_2
    return-object v0
.end method

.method private static c(Landroid/view/View;)Ljava/lang/String;
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 159
    const-string v0, "-"

    invoke-static {p0, v0}, Lcom/alipay/mobile/monitor/track/interceptor/AutoClickInterceptor;->getControlId(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    const-string v2, "^"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
