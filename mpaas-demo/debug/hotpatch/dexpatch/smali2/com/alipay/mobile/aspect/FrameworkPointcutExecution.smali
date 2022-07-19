.class public final Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;
.super Ljava/lang/Object;
.source "FrameworkPointcutExecution.java"


# static fields
.field static final TAG:Ljava/lang/String; = "PointCutExecution"

.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Z

.field private static d:Lcom/alipay/mobile/aspect/IAnalysisListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-string v0, "10000007"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->a:Ljava/util/List;

    .line 22
    const-string v0, "com.alipay.android.phone.businesscommon.message.MessageSwitcherAdvice"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([Ljava/lang/Object;)Z
    .locals 3
    .param p0, "args"    # [Ljava/lang/Object;

    .line 216
    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    aget-object v0, p0, v1

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 217
    aget-object v0, p0, v1

    check-cast v0, Ljava/lang/String;

    .line 218
    .local v0, "appId":Ljava/lang/String;
    sget-object v2, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    return v1

    .line 222
    .end local v0    # "appId":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 10
    .param p0, "pointCut"    # Ljava/lang/String;
    .param p1, "thisPoint"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;

    const-string/jumbo v0, "onExecutionAfter_"

    .line 170
    invoke-static {}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getInstance()Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getAdviceOnPointCut(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 171
    .local v3, "advices":Ljava/util/List;
    move-object v3, v1

    if-eqz v1, :cond_6

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 174
    invoke-static {p2}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->a([Ljava/lang/Object;)Z

    move-result v1

    .line 175
    .local v1, "isPrivileged":Z
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/aspect/Advice;

    .line 176
    .local v2, "advice":Lcom/alipay/mobile/aspect/Advice;
    move-object v2, v5

    if-eqz v5, :cond_5

    .line 178
    const-string v5, "PointCutExecution"

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v6, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->b:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 179
    goto :goto_0

    .line 182
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 184
    .local v6, "runnableName":Ljava/lang/String;
    const/4 v7, 0x1

    :try_start_1
    sget-object v8, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->d:Lcom/alipay/mobile/aspect/IAnalysisListener;

    if-eqz v8, :cond_1

    .line 185
    invoke-interface {v8, v6}, Lcom/alipay/mobile/aspect/IAnalysisListener;->start(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    :cond_1
    goto :goto_1

    .line 187
    :catchall_0
    move-exception v8

    .line 188
    .local v8, "t":Ljava/lang/Throwable;
    :try_start_2
    sget-boolean v9, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->c:Z

    if-nez v9, :cond_2

    .line 189
    sput-boolean v7, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->c:Z

    .line 190
    invoke-static {v5, v8}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 193
    .end local v8    # "t":Ljava/lang/Throwable;
    :cond_2
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->getInstance()Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->startSubSection(Ljava/lang/String;)V

    .line 194
    invoke-interface {v2, p0, p1, p2}, Lcom/alipay/mobile/aspect/Advice;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 195
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->getInstance()Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->endSubSection(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 197
    :try_start_3
    sget-object v8, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->d:Lcom/alipay/mobile/aspect/IAnalysisListener;

    if-eqz v8, :cond_3

    .line 198
    invoke-interface {v8, v6}, Lcom/alipay/mobile/aspect/IAnalysisListener;->end(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 205
    :cond_3
    goto :goto_0

    .line 200
    :catchall_1
    move-exception v8

    .line 201
    .restart local v8    # "t":Ljava/lang/Throwable;
    :try_start_4
    sget-boolean v9, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->c:Z

    if-nez v9, :cond_4

    .line 202
    sput-boolean v7, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->c:Z

    .line 203
    invoke-static {v5, v8}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 209
    .end local v6    # "runnableName":Ljava/lang/String;
    .end local v8    # "t":Ljava/lang/Throwable;
    :cond_4
    goto :goto_0

    .line 207
    :catchall_2
    move-exception v6

    .line 208
    .local v6, "e":Ljava/lang/Throwable;
    invoke-static {v5, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 211
    .end local v2    # "advice":Lcom/alipay/mobile/aspect/Advice;
    .end local v6    # "e":Ljava/lang/Throwable;
    :cond_5
    goto :goto_0

    .line 213
    .end local v1    # "isPrivileged":Z
    :cond_6
    return-void
.end method

.method public static onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;
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

    .line 89
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Set;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Set;)Landroid/util/Pair;
    .locals 11
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

    const-string/jumbo v0, "onExecutionAround_"

    .line 103
    const/4 v1, 0x0

    .line 104
    .local v1, "aroundResult":Landroid/util/Pair;
    invoke-static {}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getInstance()Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getAdviceOnPointCut(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 105
    .local v4, "advices":Ljava/util/List;
    move-object v4, v2

    if-eqz v2, :cond_7

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 108
    invoke-static {p2}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->a([Ljava/lang/Object;)Z

    move-result v2

    .line 109
    .local v2, "isPrivileged":Z
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/aspect/Advice;

    .line 110
    .local v3, "advice":Lcom/alipay/mobile/aspect/Advice;
    move-object v3, v6

    if-eqz v6, :cond_6

    .line 112
    const-string v6, "PointCutExecution"

    if-eqz v2, :cond_0

    :try_start_0
    sget-object v7, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->b:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 113
    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 118
    .local v7, "runnableName":Ljava/lang/String;
    const/4 v8, 0x1

    :try_start_1
    sget-object v9, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->d:Lcom/alipay/mobile/aspect/IAnalysisListener;

    if-eqz v9, :cond_1

    .line 119
    invoke-interface {v9, v7}, Lcom/alipay/mobile/aspect/IAnalysisListener;->start(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    :cond_1
    goto :goto_1

    .line 121
    :catchall_0
    move-exception v9

    .line 122
    .local v9, "t":Ljava/lang/Throwable;
    :try_start_2
    sget-boolean v10, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->c:Z

    if-nez v10, :cond_2

    .line 123
    sput-boolean v8, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->c:Z

    .line 124
    invoke-static {v6, v9}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    .end local v9    # "t":Ljava/lang/Throwable;
    :cond_2
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->getInstance()Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->startSubSection(Ljava/lang/String;)V

    .line 128
    invoke-interface {v3, p0, p1, p2}, Lcom/alipay/mobile/aspect/Advice;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v9

    move-object v1, v9

    .line 129
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->getInstance()Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->endSubSection(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 131
    :try_start_3
    sget-object v9, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->d:Lcom/alipay/mobile/aspect/IAnalysisListener;

    if-eqz v9, :cond_3

    .line 132
    invoke-interface {v9, v7}, Lcom/alipay/mobile/aspect/IAnalysisListener;->end(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 139
    :cond_3
    goto :goto_2

    .line 134
    :catchall_1
    move-exception v9

    .line 135
    .restart local v9    # "t":Ljava/lang/Throwable;
    :try_start_4
    sget-boolean v10, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->c:Z

    if-nez v10, :cond_4

    .line 136
    sput-boolean v8, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->c:Z

    .line 137
    invoke-static {v6, v9}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 143
    .end local v7    # "runnableName":Ljava/lang/String;
    .end local v9    # "t":Ljava/lang/Throwable;
    :cond_4
    goto :goto_2

    .line 141
    :catchall_2
    move-exception v7

    .line 142
    .local v7, "e":Ljava/lang/Throwable;
    invoke-static {v6, v7}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    .end local v7    # "e":Ljava/lang/Throwable;
    :goto_2
    if-eqz v1, :cond_6

    iget-object v7, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 146
    if-eqz p3, :cond_5

    .line 147
    invoke-interface {p3, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onExecutionAround(pointCut=["

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "], thisPoint="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", args="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-static {p2}, Lcom/alipay/mobile/quinox/utils/StringUtil;->array2String([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") return true : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-static {v4}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", advice="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-static {v6, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    goto :goto_3

    .line 157
    .end local v3    # "advice":Lcom/alipay/mobile/aspect/Advice;
    :cond_6
    goto/16 :goto_0

    .line 159
    .end local v2    # "isPrivileged":Z
    :cond_7
    :goto_3
    return-object v1
.end method

.method public static onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 10
    .param p0, "pointCut"    # Ljava/lang/String;
    .param p1, "thisPoint"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;

    const-string/jumbo v0, "onExecutionBefore_"

    .line 43
    invoke-static {}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getInstance()Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getAdviceOnPointCut(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 44
    .local v3, "advices":Ljava/util/List;
    move-object v3, v1

    if-eqz v1, :cond_6

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 47
    invoke-static {p2}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->a([Ljava/lang/Object;)Z

    move-result v1

    .line 48
    .local v1, "isPrivileged":Z
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/aspect/Advice;

    .line 49
    .local v2, "advice":Lcom/alipay/mobile/aspect/Advice;
    move-object v2, v5

    if-eqz v5, :cond_5

    .line 51
    const-string v5, "PointCutExecution"

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v6, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->b:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 52
    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 57
    .local v6, "runnableName":Ljava/lang/String;
    const/4 v7, 0x1

    :try_start_1
    sget-object v8, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->d:Lcom/alipay/mobile/aspect/IAnalysisListener;

    if-eqz v8, :cond_1

    .line 58
    invoke-interface {v8, v6}, Lcom/alipay/mobile/aspect/IAnalysisListener;->start(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    :cond_1
    goto :goto_1

    .line 60
    :catchall_0
    move-exception v8

    .line 61
    .local v8, "t":Ljava/lang/Throwable;
    :try_start_2
    sget-boolean v9, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->c:Z

    if-nez v9, :cond_2

    .line 62
    sput-boolean v7, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->c:Z

    .line 63
    invoke-static {v5, v8}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .end local v8    # "t":Ljava/lang/Throwable;
    :cond_2
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->getInstance()Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->startSubSection(Ljava/lang/String;)V

    .line 67
    invoke-interface {v2, p0, p1, p2}, Lcom/alipay/mobile/aspect/Advice;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 68
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->getInstance()Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->endSubSection(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 70
    :try_start_3
    sget-object v8, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->d:Lcom/alipay/mobile/aspect/IAnalysisListener;

    if-eqz v8, :cond_3

    .line 71
    invoke-interface {v8, v6}, Lcom/alipay/mobile/aspect/IAnalysisListener;->end(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 78
    :cond_3
    goto :goto_0

    .line 73
    :catchall_1
    move-exception v8

    .line 74
    .restart local v8    # "t":Ljava/lang/Throwable;
    :try_start_4
    sget-boolean v9, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->c:Z

    if-nez v9, :cond_4

    .line 75
    sput-boolean v7, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->c:Z

    .line 76
    invoke-static {v5, v8}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 82
    .end local v6    # "runnableName":Ljava/lang/String;
    .end local v8    # "t":Ljava/lang/Throwable;
    :cond_4
    goto :goto_0

    .line 80
    :catchall_2
    move-exception v6

    .line 81
    .local v6, "e":Ljava/lang/Throwable;
    invoke-static {v5, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    .end local v2    # "advice":Lcom/alipay/mobile/aspect/Advice;
    .end local v6    # "e":Ljava/lang/Throwable;
    :cond_5
    goto :goto_0

    .line 86
    .end local v1    # "isPrivileged":Z
    :cond_6
    return-void
.end method

.method public static setAnalysisListener(Lcom/alipay/mobile/aspect/IAnalysisListener;)V
    .locals 0
    .param p0, "analysisListener"    # Lcom/alipay/mobile/aspect/IAnalysisListener;

    .line 32
    sput-object p0, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->d:Lcom/alipay/mobile/aspect/IAnalysisListener;

    .line 33
    return-void
.end method
