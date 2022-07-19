.class public final Lcom/alipay/mobile/aspect/FrameworkPointcutCall;
.super Ljava/lang/Object;
.source "FrameworkPointcutCall.java"


# static fields
.field static final TAG:Ljava/lang/String; = "PointCutCall"

.field private static a:Z

.field private static b:Lcom/alipay/mobile/aspect/IAnalysisListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onCallAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 9
    .param p0, "pointCut"    # Ljava/lang/String;
    .param p1, "thisPoint"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;

    const-string/jumbo v0, "onCallAfter_"

    const-string v1, "PointCutCall"

    .line 149
    invoke-static {}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getInstance()Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getAdviceOnPointCut(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 150
    .local v4, "advices":Ljava/util/List;
    move-object v4, v2

    if-eqz v2, :cond_4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 153
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/aspect/Advice;

    .line 154
    .local v3, "advice":Lcom/alipay/mobile/aspect/Advice;
    move-object v3, v5

    if-eqz v5, :cond_3

    .line 156
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 158
    .local v5, "runnableName":Ljava/lang/String;
    const/4 v6, 0x1

    :try_start_0
    sget-object v7, Lcom/alipay/mobile/aspect/FrameworkPointcutCall;->b:Lcom/alipay/mobile/aspect/IAnalysisListener;

    if-eqz v7, :cond_0

    .line 159
    invoke-interface {v7, v5}, Lcom/alipay/mobile/aspect/IAnalysisListener;->start(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    :cond_0
    goto :goto_1

    .line 161
    :catchall_0
    move-exception v7

    .line 162
    .local v7, "t":Ljava/lang/Throwable;
    sget-boolean v8, Lcom/alipay/mobile/aspect/FrameworkPointcutCall;->a:Z

    if-nez v8, :cond_1

    .line 163
    sput-boolean v6, Lcom/alipay/mobile/aspect/FrameworkPointcutCall;->a:Z

    .line 164
    invoke-static {v1, v7}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 168
    .end local v7    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->getInstance()Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->startSubSection(Ljava/lang/String;)V

    .line 169
    invoke-interface {v3, p0, p1, p2}, Lcom/alipay/mobile/aspect/Advice;->onCallAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 170
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->getInstance()Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->endSubSection(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 173
    goto :goto_2

    .line 171
    :catchall_1
    move-exception v7

    .line 172
    .local v7, "e":Ljava/lang/Throwable;
    invoke-static {v1, v7}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 175
    .end local v7    # "e":Ljava/lang/Throwable;
    :goto_2
    :try_start_2
    sget-object v7, Lcom/alipay/mobile/aspect/FrameworkPointcutCall;->b:Lcom/alipay/mobile/aspect/IAnalysisListener;

    if-eqz v7, :cond_2

    .line 176
    invoke-interface {v7, v5}, Lcom/alipay/mobile/aspect/IAnalysisListener;->end(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 183
    :cond_2
    goto :goto_0

    .line 178
    :catchall_2
    move-exception v7

    .line 179
    .local v7, "t":Ljava/lang/Throwable;
    sget-boolean v8, Lcom/alipay/mobile/aspect/FrameworkPointcutCall;->a:Z

    if-nez v8, :cond_3

    .line 180
    sput-boolean v6, Lcom/alipay/mobile/aspect/FrameworkPointcutCall;->a:Z

    .line 181
    invoke-static {v1, v7}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 185
    .end local v3    # "advice":Lcom/alipay/mobile/aspect/Advice;
    .end local v5    # "runnableName":Ljava/lang/String;
    .end local v7    # "t":Ljava/lang/Throwable;
    :cond_3
    goto :goto_0

    .line 187
    :cond_4
    return-void
.end method

.method public static onCallAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;
    .locals 1
    .param p0, "pointCut"    # Ljava/lang/String;
    .param p1, "thisPoint"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 74
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutCall;->onCallAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Set;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static onCallAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Set;)Landroid/util/Pair;
    .locals 10
    .param p0, "pointCut"    # Ljava/lang/String;
    .param p1, "thisPoint"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "rejectAdvices"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Set<",
            "Lcom/alipay/mobile/aspect/Advice;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "onCallAround_"

    const-string v1, "PointCutCall"

    .line 88
    const/4 v2, 0x0

    .line 89
    .local v2, "aroundResult":Landroid/util/Pair;
    invoke-static {}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getInstance()Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getAdviceOnPointCut(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    .line 90
    .local v5, "advices":Ljava/util/List;
    move-object v5, v3

    if-eqz v3, :cond_6

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 93
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/aspect/Advice;

    .line 94
    .local v4, "advice":Lcom/alipay/mobile/aspect/Advice;
    move-object v4, v6

    if-eqz v6, :cond_5

    .line 96
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 98
    .local v6, "runnableName":Ljava/lang/String;
    const/4 v7, 0x1

    :try_start_0
    sget-object v8, Lcom/alipay/mobile/aspect/FrameworkPointcutCall;->b:Lcom/alipay/mobile/aspect/IAnalysisListener;

    if-eqz v8, :cond_0

    .line 99
    invoke-interface {v8, v6}, Lcom/alipay/mobile/aspect/IAnalysisListener;->start(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :cond_0
    goto :goto_1

    .line 101
    :catchall_0
    move-exception v8

    .line 102
    .local v8, "t":Ljava/lang/Throwable;
    sget-boolean v9, Lcom/alipay/mobile/aspect/FrameworkPointcutCall;->a:Z

    if-nez v9, :cond_1

    .line 103
    sput-boolean v7, Lcom/alipay/mobile/aspect/FrameworkPointcutCall;->a:Z

    .line 104
    invoke-static {v1, v8}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    .end local v8    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->getInstance()Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->startSubSection(Ljava/lang/String;)V

    .line 109
    invoke-interface {v4, p0, p1, p2}, Lcom/alipay/mobile/aspect/Advice;->onCallAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    move-object v2, v8

    .line 110
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->getInstance()Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->endSubSection(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 113
    goto :goto_2

    .line 111
    :catchall_1
    move-exception v8

    .line 112
    .local v8, "e":Ljava/lang/Throwable;
    invoke-static {v1, v8}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    .end local v8    # "e":Ljava/lang/Throwable;
    :goto_2
    :try_start_2
    sget-object v8, Lcom/alipay/mobile/aspect/FrameworkPointcutCall;->b:Lcom/alipay/mobile/aspect/IAnalysisListener;

    if-eqz v8, :cond_2

    .line 116
    invoke-interface {v8, v6}, Lcom/alipay/mobile/aspect/IAnalysisListener;->end(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 123
    :cond_2
    goto :goto_3

    .line 118
    :catchall_2
    move-exception v8

    .line 119
    .local v8, "t":Ljava/lang/Throwable;
    sget-boolean v9, Lcom/alipay/mobile/aspect/FrameworkPointcutCall;->a:Z

    if-nez v9, :cond_3

    .line 120
    sput-boolean v7, Lcom/alipay/mobile/aspect/FrameworkPointcutCall;->a:Z

    .line 121
    invoke-static {v1, v8}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 125
    .end local v8    # "t":Ljava/lang/Throwable;
    :cond_3
    :goto_3
    if-eqz v2, :cond_5

    iget-object v7, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 126
    if-eqz p3, :cond_4

    .line 127
    invoke-interface {p3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onCallAround(pointCut=["

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "], thisPoint="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", args="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-static {p2}, Lcom/alipay/mobile/quinox/utils/StringUtil;->array2String([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") return true : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-static {v5}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", advice="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    goto :goto_4

    .line 136
    .end local v4    # "advice":Lcom/alipay/mobile/aspect/Advice;
    .end local v6    # "runnableName":Ljava/lang/String;
    :cond_5
    goto/16 :goto_0

    .line 138
    :cond_6
    :goto_4
    return-object v2
.end method

.method public static onCallBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 9
    .param p0, "pointCut"    # Ljava/lang/String;
    .param p1, "thisPoint"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;

    const-string/jumbo v0, "onCallBefore_"

    const-string v1, "PointCutCall"

    .line 33
    invoke-static {}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getInstance()Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getAdviceOnPointCut(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 34
    .local v4, "advices":Ljava/util/List;
    move-object v4, v2

    if-eqz v2, :cond_4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 37
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/aspect/Advice;

    .line 38
    .local v3, "advice":Lcom/alipay/mobile/aspect/Advice;
    move-object v3, v5

    if-eqz v5, :cond_3

    .line 40
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 42
    .local v5, "runnableName":Ljava/lang/String;
    const/4 v6, 0x1

    :try_start_0
    sget-object v7, Lcom/alipay/mobile/aspect/FrameworkPointcutCall;->b:Lcom/alipay/mobile/aspect/IAnalysisListener;

    if-eqz v7, :cond_0

    .line 43
    invoke-interface {v7, v5}, Lcom/alipay/mobile/aspect/IAnalysisListener;->start(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_0
    goto :goto_1

    .line 45
    :catchall_0
    move-exception v7

    .line 46
    .local v7, "t":Ljava/lang/Throwable;
    sget-boolean v8, Lcom/alipay/mobile/aspect/FrameworkPointcutCall;->a:Z

    if-nez v8, :cond_1

    .line 47
    sput-boolean v6, Lcom/alipay/mobile/aspect/FrameworkPointcutCall;->a:Z

    .line 48
    invoke-static {v1, v7}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    .end local v7    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->getInstance()Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->startSubSection(Ljava/lang/String;)V

    .line 53
    invoke-interface {v3, p0, p1, p2}, Lcom/alipay/mobile/aspect/Advice;->onCallBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 54
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->getInstance()Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->endSubSection(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 57
    goto :goto_2

    .line 55
    :catchall_1
    move-exception v7

    .line 56
    .local v7, "e":Ljava/lang/Throwable;
    invoke-static {v1, v7}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    .end local v7    # "e":Ljava/lang/Throwable;
    :goto_2
    :try_start_2
    sget-object v7, Lcom/alipay/mobile/aspect/FrameworkPointcutCall;->b:Lcom/alipay/mobile/aspect/IAnalysisListener;

    if-eqz v7, :cond_2

    .line 60
    invoke-interface {v7, v5}, Lcom/alipay/mobile/aspect/IAnalysisListener;->end(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 67
    :cond_2
    goto :goto_0

    .line 62
    :catchall_2
    move-exception v7

    .line 63
    .local v7, "t":Ljava/lang/Throwable;
    sget-boolean v8, Lcom/alipay/mobile/aspect/FrameworkPointcutCall;->a:Z

    if-nez v8, :cond_3

    .line 64
    sput-boolean v6, Lcom/alipay/mobile/aspect/FrameworkPointcutCall;->a:Z

    .line 65
    invoke-static {v1, v7}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    .end local v3    # "advice":Lcom/alipay/mobile/aspect/Advice;
    .end local v5    # "runnableName":Ljava/lang/String;
    .end local v7    # "t":Ljava/lang/Throwable;
    :cond_3
    goto :goto_0

    .line 71
    :cond_4
    return-void
.end method

.method public static setAnalysisListener(Lcom/alipay/mobile/aspect/IAnalysisListener;)V
    .locals 0
    .param p0, "analysisListener"    # Lcom/alipay/mobile/aspect/IAnalysisListener;

    .line 22
    sput-object p0, Lcom/alipay/mobile/aspect/FrameworkPointcutCall;->b:Lcom/alipay/mobile/aspect/IAnalysisListener;

    .line 23
    return-void
.end method
