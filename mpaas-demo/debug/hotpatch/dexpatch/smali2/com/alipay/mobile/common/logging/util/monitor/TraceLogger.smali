.class public Lcom/alipay/mobile/common/logging/util/monitor/TraceLogger;
.super Ljava/lang/Object;
.source "TraceLogger.java"


# static fields
.field private static c:Z

.field private static e:Lcom/alipay/mobile/common/logging/util/monitor/TraceLogger;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private d:Landroid/content/SharedPreferences;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/common/logging/util/monitor/TraceLogger;->c:Z

    .line 25
    new-instance v0, Lcom/alipay/mobile/common/logging/util/monitor/TraceLogger;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/util/monitor/TraceLogger;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/logging/util/monitor/TraceLogger;->e:Lcom/alipay/mobile/common/logging/util/monitor/TraceLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/TraceLogger;->a:Ljava/util/Map;

    .line 20
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/TraceLogger;->b:I

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/TraceLogger;->f:Ljava/util/Map;

    .line 28
    iput-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/TraceLogger;->g:Ljava/lang/String;

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 13

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/TraceLogger;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 95
    return-object v1

    .line 98
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 100
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/util/monitor/TraceLogger;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 101
    .local v2, "iterator":Ljava/util/Iterator;
    const/4 v3, 0x0

    .line 102
    .local v3, "pKey":Ljava/lang/String;
    const-wide/16 v4, 0x0

    move-object v6, v1

    .line 104
    .local v4, "pTime":J
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 105
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 106
    .local v6, "entry":Ljava/util/Map$Entry;
    move-object v6, v7

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 107
    .local v7, "key":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 108
    .local v8, "time":J
    if-nez v3, :cond_1

    .line 109
    move-object v3, v7

    .line 110
    move-wide v4, v8

    goto :goto_0

    .line 112
    :cond_1
    sub-long v10, v8, v4

    .line 113
    .local v10, "cost":J
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v12, ":"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v12, "#"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    move-object v3, v7

    .line 115
    move-wide v4, v8

    .line 117
    .end local v6    # "entry":Ljava/util/Map$Entry;
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "time":J
    .end local v10    # "cost":J
    goto :goto_0

    .line 118
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 119
    .end local v0    # "sb":Ljava/lang/StringBuffer;
    .end local v2    # "iterator":Ljava/util/Iterator;
    .end local v3    # "pKey":Ljava/lang/String;
    .end local v4    # "pTime":J
    :catchall_0
    move-exception v0

    .line 122
    return-object v1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1
    .param p1, "splitLabel"    # Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/TraceLogger;->f:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/util/monitor/TraceLogger;->updateDumpTask()V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/TraceLogger;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private b()Z
    .locals 3

    .line 126
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/util/monitor/TraceLogger;->getDefaultSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "isUploadExpTraceLog"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "isUpload":Ljava/lang/String;
    const-string/jumbo v1, "yes"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    const/4 v1, 0x1

    return v1

    .line 130
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static getLogger()Lcom/alipay/mobile/common/logging/util/monitor/TraceLogger;
    .locals 1

    .line 31
    sget-object v0, Lcom/alipay/mobile/common/logging/util/monitor/TraceLogger;->e:Lcom/alipay/mobile/common/logging/util/monitor/TraceLogger;

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .param p0, "args"    # [Ljava/lang/String;

    .line 165
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/monitor/TraceLogger;->getLogger()Lcom/alipay/mobile/common/logging/util/monitor/TraceLogger;

    move-result-object v0

    const-string v1, "login"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/util/monitor/TraceLogger;->addMainSplit(Ljava/lang/String;)V

    .line 167
    const-wide/16 v0, 0xbb8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    goto :goto_0

    .line 168
    :catchall_0
    move-exception v0

    .line 172
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/monitor/TraceLogger;->getLogger()Lcom/alipay/mobile/common/logging/util/monitor/TraceLogger;

    move-result-object v0

    const-string v1, "222"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/util/monitor/TraceLogger;->addMainSplit(Ljava/lang/String;)V

    .line 174
    const-wide/16 v0, 0x457

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 177
    goto :goto_1

    .line 175
    :catchall_1
    move-exception v0

    .line 179
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/monitor/TraceLogger;->getLogger()Lcom/alipay/mobile/common/logging/util/monitor/TraceLogger;

    move-result-object v0

    const-string v1, "333"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/util/monitor/TraceLogger;->addMainSplit(Ljava/lang/String;)V

    .line 181
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/monitor/TraceLogger;->getLogger()Lcom/alipay/mobile/common/logging/util/monitor/TraceLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/util/monitor/TraceLogger;->end()V

    .line 183
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/monitor/TraceLogger;->getLogger()Lcom/alipay/mobile/common/logging/util/monitor/TraceLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/util/monitor/TraceLogger;->commit()V

    .line 186
    return-void
.end method


# virtual methods
.method public addMainSplit(Ljava/lang/String;)V
    .locals 4
    .param p1, "splitLabel"    # Ljava/lang/String;

    .line 36
    sget-boolean v0, Lcom/alipay/mobile/common/logging/util/monitor/TraceLogger;->c:Z

    if-eqz v0, :cond_0

    .line 37
    return-void

    .line 40
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    return-void

    .line 45
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "main"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 46
    return-void

    .line 50
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/TraceLogger;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 51
    return-void

    .line 53
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 54
    .local v0, "start":J
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/util/monitor/TraceLogger;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/util/monitor/TraceLogger;->g:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 57
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/alipay/mobile/common/logging/util/monitor/TraceLogger;->g:Ljava/lang/String;

    .line 60
    :cond_4
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/logging/util/monitor/TraceLogger;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 62
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/util/monitor/TraceLogger;->g:Ljava/lang/String;

    .line 64
    :cond_5
    return-void
.end method

.method public commit()V
    .locals 5

    .line 80
    sget-boolean v0, Lcom/alipay/mobile/common/logging/util/monitor/TraceLogger;->c:Z

    if-eqz v0, :cond_0

    .line 81
    return-void

    .line 83
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/util/monitor/TraceLogger;->a()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "trace":Ljava/lang/String;
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/util/monitor/TraceLogger;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    new-instance v1, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    const/4 v2, 0x0

    move-object v3, v2

    .line 86
    .local v3, "behavor":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    move-object v3, v1

    const-string v4, "Push"

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setBehaviourPro(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v3, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    .line 88
    const-string v1, ""

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam2(Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v1

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->event(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 91
    .end local v3    # "behavor":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    :cond_1
    return-void
.end method

.method public end()V
    .locals 5

    .line 67
    sget-boolean v0, Lcom/alipay/mobile/common/logging/util/monitor/TraceLogger;->c:Z

    if-eqz v0, :cond_0

    .line 68
    return-void

    .line 70
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 71
    .local v0, "end":J
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/util/monitor/TraceLogger;->a:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "p_end_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/alipay/mobile/common/logging/util/monitor/TraceLogger;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget v2, p0, Lcom/alipay/mobile/common/logging/util/monitor/TraceLogger;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alipay/mobile/common/logging/util/monitor/TraceLogger;->b:I

    .line 73
    return-void
.end method

.method public getDefaultSharedPreference()Landroid/content/SharedPreferences;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/TraceLogger;->d:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 157
    nop

    .line 158
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/TraceLogger;->d:Landroid/content/SharedPreferences;

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/TraceLogger;->d:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public stop()V
    .locals 1

    .line 76
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/common/logging/util/monitor/TraceLogger;->c:Z

    .line 77
    return-void
.end method

.method public updateDumpTask()V
    .locals 7

    .line 141
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/util/monitor/TraceLogger;->getDefaultSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "exp_trace_period"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v2

    .line 142
    .local v1, "exp_trace_period":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/TraceLogger;->f:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/TraceLogger;->f:Ljava/util/Map;

    .line 148
    :cond_1
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v2, "periods":[Ljava/lang/String;
    move-object v2, v0

    array-length v0, v0

    .line 150
    .local v0, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 151
    iget-object v4, p0, Lcom/alipay/mobile/common/logging/util/monitor/TraceLogger;->f:Ljava/util/Map;

    aget-object v5, v2, v3

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 153
    .end local v3    # "i":I
    :cond_2
    return-void
.end method
